/*
 * Document: Giao diện quản lý khóa học
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import com.polypro.dao.ChuyenDeDAO;
import com.polypro.dao.KhoaHocDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.helper.XDate;
import com.polypro.model.ChuyenDe;
import com.polypro.model.KhoaHoc;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.TimeUnit;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class KhoaHocJFrame extends javax.swing.JFrame {

    int index = -1;//Vị trí người học đang hiển thị trên form
    KhoaHocDAO dao = new KhoaHocDAO();//tạo đối tượng KhoaHocDAO
    ChuyenDeDAO cddao = new ChuyenDeDAO();//tạo đối tượng ChuyenDeDAO
    List<KhoaHoc> list;//list chứa danh sách khóa học

    public KhoaHocJFrame() {
        init();
    }

    //Các phương thức khi khởi tạo
    private void init() {
        initComponents();
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);
        setColumnName();
        load();
        fillCboChuyenDe();
        setStatus(true);
        clear();
    }

    //Phuong thuc định dạng bảng
    private void setColumnName() {
        String header[] = {"Mã KH", "Chuyên đề", "Thời lượng", "Học phí", "Khai giảng",
            "Tạo bởi", "Ngày tạo"};
        DefaultTableModel tableModel = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        tblGridView.setModel(tableModel);
    }

    //Phuong thuc hien thi danh sach nhan vien
    private void load() {
        DefaultTableModel tableModel = (DefaultTableModel) tblGridView.getModel();
        tableModel.setRowCount(0);
        try {
            list = dao.select();
            for (KhoaHoc khoaHoc : list) {
                Vector row = new Vector();
                row.add(khoaHoc.getMaKH());
                row.add(khoaHoc.getMaCD());
                row.add(khoaHoc.getThoiLuong());
                row.add(khoaHoc.getHocPhi());
                row.add(XDate.toString(khoaHoc.getNgayKG(), "dd/MM/yyyy"));
                row.add(khoaHoc.getMaNV());
                row.add(XDate.toString(khoaHoc.getNgayTao(), "dd/MM/yyyy"));
                tableModel.addRow(row);
            }
            tblGridView.setModel(tableModel);
            TableHelper.formatHeader(tblGridView);
            TableHelper.formarCloumnSize(tblGridView, 40, 180, 40, 40, 40, 40, 40);
        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn dữ liệu!", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        } finally {
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc load dữ liệu vào cboChuyenDe
    private void fillCboChuyenDe() {
        DefaultComboBoxModel model = (DefaultComboBoxModel) cboChuyenDe.getModel();
        model.removeAllElements();
        List<ChuyenDe> listcd = new ArrayList<>();
        listcd = cddao.select();
        model.addElement(new ChuyenDe());
        for (ChuyenDe chuyenDe : listcd) {
            model.addElement(chuyenDe);
        }
    }

    //Phuong thuc kiem tra dữ liệu nhập vào
    private boolean checkInput() {
        try {
            //Kiểm tra chọn mã chuyên đề
            if (cboChuyenDe.getSelectedIndex() == 0) {
                DialogHelper.alert(this, "Vui lòng chọn mã chuyên đề", JOptionPane.WARNING_MESSAGE);
                return false;
            }
            
            //Kiểm tra ngày tháng
            Date ngayKG = jDateChooser.getDate();
            Date ngayTao = XDate.now();
            
            //Lấy thời gian chênh lệch giữa 2 ngày theo milisecond
            long miliseconds = ngayKG.getTime() - ngayTao.getTime();

            //Kiểm tra sự chênh lệch
            if (TimeUnit.DAYS.convert(miliseconds, TimeUnit.MILLISECONDS) < 5) {
                DialogHelper.alert(this, "Ngày khai giảng phải sau ngày hiện tại ít nhất 5 ngày", JOptionPane.WARNING_MESSAGE);
                return false;
            }

            //Kiểm tra thời lượng
            if (txtThoiLuong.getText().trim().equals("")) {
                DialogHelper.alert(this, "Vui lòng nhập thời lượng", JOptionPane.WARNING_MESSAGE);
                txtThoiLuong.requestFocus();
                return false;
            }
            try {
                int thoiLuong = Integer.parseInt(txtThoiLuong.getText().trim());
                if (thoiLuong < 0) {
                    throw new Exception("Thời lượng không được bé hơn không");
                }
            } catch (NumberFormatException ex) {
                DialogHelper.alert(this, "Thời lượng không đúng định dạng số", JOptionPane.WARNING_MESSAGE);
                txtThoiLuong.requestFocus();
                return false;
            } catch (Exception ex) {
                DialogHelper.alert(this, ex.getMessage(), JOptionPane.WARNING_MESSAGE);
                txtThoiLuong.requestFocus();
                return false;
            }

            //Kiểm tra học phí
            if (txtHocPhi.getText().trim().equals("")) {
                DialogHelper.alert(this, "Vui lòng nhập học phí", JOptionPane.WARNING_MESSAGE);
                txtHocPhi.requestFocus();
                return false;
            }
            try {
                double hocPhi = Double.parseDouble(txtHocPhi.getText().trim());
                if (hocPhi < 0) {
                    throw new Exception("Học phí không được bé hơn không");
                }
            } catch (NumberFormatException ex) {
                DialogHelper.alert(this, "Học phí không đúng định dạng số", JOptionPane.WARNING_MESSAGE);
                txtHocPhi.requestFocus();
                return false;
            } catch (Exception ex) {
                DialogHelper.alert(this, ex.getMessage(), JOptionPane.WARNING_MESSAGE);
                txtHocPhi.requestFocus();
                return false;
            }
        } catch (Exception ex) {
            DialogHelper.alert(this, "Có lỗi thông tin nhập vào", JOptionPane.WARNING_MESSAGE);
            ex.printStackTrace();
        }
        return true;
    }

    //Phuong thuc insert
    private void insert() {
        if (checkInput()) {
            KhoaHoc model = getModel();
            if (dao.insert(model) != 0) {
                load();
                index = list.size() - 1;
                setStatus(false);
                setNavigator();
                setModel(list.get(index));
                DialogHelper.alert(this, "Thêm mới thành công!", JOptionPane.INFORMATION_MESSAGE);
            } else {
                DialogHelper.alert(this, "Thêm mới thất bại!", JOptionPane.ERROR_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc update
    private void update() {
        if (checkInput()) {
            KhoaHoc model = getModel();
            if (dao.update(model) != 0) {
                load();
                DialogHelper.alert(this, "Cập nhật thành công!", JOptionPane.INFORMATION_MESSAGE);
            } else {
                DialogHelper.alert(this, "Cập nhật thất bại!", JOptionPane.ERROR_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc xoa
    private void delete() {
        if (DialogHelper.confirm(this, "Bạn thực sự muốn xóa chuyên đề này?")) {
            int maKH = Integer.parseInt(cboChuyenDe.getToolTipText());
            if (dao.findById(maKH) != null) {
                if (dao.delete(maKH) != 0) {
                    load();
                    clear();
                    DialogHelper.alert(this, "Xóa thành công!", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    DialogHelper.alert(this, "Xóa thất bại!", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                DialogHelper.alert(this, "Mã khóa học " + maKH + " không tồn tại", JOptionPane.WARNING_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc làm trống form
    private void clear() {
        setModel(new KhoaHoc());
        cboChuyenDe.setSelectedIndex(0);
        setStatus(true);
    }

    //Phuong thuc lay du lieu tu form
    private KhoaHoc getModel() {
        KhoaHoc model = new KhoaHoc();
        ChuyenDe chuyenDe = (ChuyenDe) cboChuyenDe.getSelectedItem();

        model.setMaKH(Integer.parseInt(cboChuyenDe.getToolTipText()));
        model.setMaCD(chuyenDe.getMaCD());
        model.setNgayKG(new java.sql.Date(jDateChooser.getDate().getTime()));
        model.setThoiLuong(Integer.parseInt(txtThoiLuong.getText()));
        model.setHocPhi(Double.parseDouble(txtHocPhi.getText()));
        model.setNgayTao(XDate.now());
        model.setMaNV(ShareHelper.USER.getMaNV());
        model.setGhiChu(txtGhiChu.getText());
        return model;
    }

    //Phuong thuc hiển thị thông tin khóa học lên form
    private void setModel(KhoaHoc model) {
        cboChuyenDe.setToolTipText(model.getMaKH() + "");
        cboChuyenDe.getModel().setSelectedItem(cddao.findById(model.getMaCD()));
        txtThoiLuong.setText(model.getThoiLuong() + "");
        txtHocPhi.setText(model.getHocPhi() + "");
        txtMaNV.setText(model.getMaNV());
        txtNgayTao.setText(XDate.toString(model.getNgayTao(), "dd/MM/yyyy"));
        txtGhiChu.setText(model.getGhiChu());
        jDateChooser.setDate(model.getNgayKG());
    }

    //Phuong thuc mở form quản lý học viên
    private void openHocVien(){
        new HocVienJFrame(Integer.parseInt(cboChuyenDe.getToolTipText())).setVisible(true);
    }
    
    //Phuong thuc chon comboBox
    private void selectComboBox(){
        ChuyenDe chuyenDe = (ChuyenDe) cboChuyenDe.getModel().getSelectedItem();
        if (chuyenDe == null) {
            chuyenDe = new ChuyenDe();
        }
        txtThoiLuong.setText(chuyenDe.getThoiLuong() + "");
        txtHocPhi.setText(chuyenDe.getHocPhi() + "");
    }
    
    //Phuong thuc thiết lập trạng thái các button và text field khi insert
    private void setStatus(boolean insertable) {
        cboChuyenDe.setEditable(insertable);
        btnInsert.setEnabled(insertable);
        btnUpdate.setEnabled(!insertable);
        btnDelete.setEnabled(!insertable && ShareHelper.isAdmin());

        btnFirst.setEnabled(!insertable);
        btnLast.setEnabled(!insertable);
        btnPrevious.setEnabled(!insertable);
        btnNext.setEnabled(!insertable);
        btnHocVien.setVisible(!insertable);
    }

    //Phương thức thiết lập trạng thái nút điều hướng
    private void setNavigator() {
        if (index == 0) {
            btnFirst.setEnabled(false);
            btnPrevious.setEnabled(false);
            btnNext.setEnabled(true);
            btnLast.setEnabled(true);
        }
        if (index > 0) {
            btnFirst.setEnabled(true);
            btnPrevious.setEnabled(true);
        }
        if (index < list.size() - 1) {
            btnNext.setEnabled(true);
            btnLast.setEnabled(true);
        }
        if (index == list.size() - 1) {
            btnFirst.setEnabled(true);
            btnPrevious.setEnabled(true);
            btnNext.setEnabled(false);
            btnLast.setEnabled(false);
        }
        if (list.isEmpty() || list.size() == 1) {
            btnFirst.setEnabled(false);
            btnPrevious.setEnabled(false);
            btnNext.setEnabled(false);
            btnLast.setEnabled(false);
        } else {
            try {
                tblGridView.setRowSelectionInterval(index, index);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }

    }

    //Phương thức hiển thị khóa học đầu tiên
    private void displayFirst() {
        index = 0;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị khóa học trước
    private void displayPrevious() {
        index--;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị khóa học sau
    private void displayNext() {
        index++;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị khóa học cuối cùng
    private void displayLast() {
        index = list.size() - 1;
        setModel(list.get(index));
        setNavigator();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        lblTitle = new javax.swing.JLabel();
        tabs = new javax.swing.JTabbedPane();
        pnlEdit = new javax.swing.JPanel();
        lblChuyenDe = new javax.swing.JLabel();
        cboChuyenDe = new javax.swing.JComboBox<>();
        lblNgayKG = new javax.swing.JLabel();
        lblHocPhi = new javax.swing.JLabel();
        txtHocPhi = new javax.swing.JTextField();
        lblThoiLuong = new javax.swing.JLabel();
        txtThoiLuong = new javax.swing.JTextField();
        lblMaNV = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        lblNgayTao = new javax.swing.JLabel();
        txtNgayTao = new javax.swing.JTextField();
        lblGhiChu = new javax.swing.JLabel();
        srcGhiChu = new javax.swing.JScrollPane();
        txtGhiChu = new javax.swing.JTextArea();
        btnInsert = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnClear = new javax.swing.JButton();
        btnFirst = new javax.swing.JButton();
        btnPrevious = new javax.swing.JButton();
        btnNext = new javax.swing.JButton();
        btnLast = new javax.swing.JButton();
        btnHocVien = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jDateChooser = new com.toedter.calendar.JDateChooser();
        pnlList = new javax.swing.JPanel();
        srcTbl = new javax.swing.JScrollPane();
        tblGridView = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("QUẢN LÝ KHÓA HỌC");

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(0, 0, 255));
        lblTitle.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        lblTitle.setText("  QUẢN LÝ KHÓA HỌC");
        lblTitle.setPreferredSize(new java.awt.Dimension(500, 35));
        getContentPane().add(lblTitle, java.awt.BorderLayout.NORTH);

        tabs.setPreferredSize(new java.awt.Dimension(1050, 500));

        pnlEdit.setPreferredSize(new java.awt.Dimension(1050, 500));
        pnlEdit.setLayout(new java.awt.GridBagLayout());

        lblChuyenDe.setText("Chuyên đề");
        lblChuyenDe.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblChuyenDe, gridBagConstraints);

        cboChuyenDe.setPreferredSize(new java.awt.Dimension(420, 30));
        cboChuyenDe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboChuyenDeActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(cboChuyenDe, gridBagConstraints);

        lblNgayKG.setText("Ngày khai giảng");
        lblNgayKG.setToolTipText("");
        lblNgayKG.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblNgayKG, gridBagConstraints);

        lblHocPhi.setText("Học phí");
        lblHocPhi.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblHocPhi, gridBagConstraints);

        txtHocPhi.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtHocPhi, gridBagConstraints);

        lblThoiLuong.setText("Thời lượng (giờ)");
        lblThoiLuong.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblThoiLuong, gridBagConstraints);

        txtThoiLuong.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtThoiLuong, gridBagConstraints);

        lblMaNV.setText("Người tạo");
        lblMaNV.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblMaNV, gridBagConstraints);

        txtMaNV.setEditable(false);
        txtMaNV.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtMaNV, gridBagConstraints);

        lblNgayTao.setText("Ngày tạo");
        lblNgayTao.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblNgayTao, gridBagConstraints);

        txtNgayTao.setEditable(false);
        txtNgayTao.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtNgayTao, gridBagConstraints);

        lblGhiChu.setText("Ghi chú");
        lblGhiChu.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblGhiChu, gridBagConstraints);

        srcGhiChu.setPreferredSize(new java.awt.Dimension(880, 100));

        txtGhiChu.setColumns(70);
        txtGhiChu.setLineWrap(true);
        txtGhiChu.setRows(5);
        srcGhiChu.setViewportView(txtGhiChu);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 20, 0);
        pnlEdit.add(srcGhiChu, gridBagConstraints);

        btnInsert.setText("Thêm");
        btnInsert.setPreferredSize(new java.awt.Dimension(80, 30));
        btnInsert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInsertActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 30);
        pnlEdit.add(btnInsert, gridBagConstraints);

        btnUpdate.setText("Sửa");
        btnUpdate.setPreferredSize(new java.awt.Dimension(80, 30));
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 30);
        pnlEdit.add(btnUpdate, gridBagConstraints);

        btnDelete.setText("Xóa");
        btnDelete.setPreferredSize(new java.awt.Dimension(80, 30));
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 30);
        pnlEdit.add(btnDelete, gridBagConstraints);

        btnClear.setText("Mới");
        btnClear.setPreferredSize(new java.awt.Dimension(80, 30));
        btnClear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnClearActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 30);
        pnlEdit.add(btnClear, gridBagConstraints);

        btnFirst.setText("|<");
        btnFirst.setPreferredSize(new java.awt.Dimension(50, 30));
        btnFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFirstActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 200);
        pnlEdit.add(btnFirst, gridBagConstraints);

        btnPrevious.setText("<<");
        btnPrevious.setPreferredSize(new java.awt.Dimension(50, 30));
        btnPrevious.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPreviousActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 70);
        pnlEdit.add(btnPrevious, gridBagConstraints);

        btnNext.setText(">>");
        btnNext.setPreferredSize(new java.awt.Dimension(50, 30));
        btnNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNextActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 70, 0, 0);
        pnlEdit.add(btnNext, gridBagConstraints);

        btnLast.setText(">|");
        btnLast.setPreferredSize(new java.awt.Dimension(50, 30));
        btnLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLastActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 200, 0, 0);
        pnlEdit.add(btnLast, gridBagConstraints);

        btnHocVien.setText("Học viên");
        btnHocVien.setPreferredSize(new java.awt.Dimension(80, 30));
        btnHocVien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHocVienActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 30);
        pnlEdit.add(btnHocVien, gridBagConstraints);

        jPanel1.setLayout(new java.awt.GridBagLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        pnlEdit.add(jPanel1, gridBagConstraints);

        jDateChooser.setDateFormatString("dd/MM/yyyy");
        jDateChooser.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(jDateChooser, gridBagConstraints);

        tabs.addTab("CẬP NHẬT", pnlEdit);

        pnlList.setPreferredSize(new java.awt.Dimension(1050, 520));
        pnlList.setLayout(new java.awt.BorderLayout());

        srcTbl.setPreferredSize(new java.awt.Dimension(1000, 320));

        tblGridView.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblGridView.setRowHeight(18);
        tblGridView.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblGridViewMouseClicked(evt);
            }
        });
        srcTbl.setViewportView(tblGridView);

        pnlList.add(srcTbl, java.awt.BorderLayout.CENTER);

        tabs.addTab("DANH SÁCH", pnlList);

        getContentPane().add(tabs, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tblGridViewMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblGridViewMouseClicked
        if (evt.getClickCount() == 2) {
            index = tblGridView.rowAtPoint(evt.getPoint());
            if (index >= 0) {
                setModel(list.get(index));
                setStatus(false);
                setNavigator();
                tabs.setSelectedIndex(0);
            }
        }
    }//GEN-LAST:event_tblGridViewMouseClicked

    private void btnInsertActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInsertActionPerformed
        insert();
    }//GEN-LAST:event_btnInsertActionPerformed

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
        update();
    }//GEN-LAST:event_btnUpdateActionPerformed

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
        delete();
    }//GEN-LAST:event_btnDeleteActionPerformed

    private void btnClearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnClearActionPerformed
        clear();
    }//GEN-LAST:event_btnClearActionPerformed

    private void btnFirstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFirstActionPerformed
        displayFirst();
    }//GEN-LAST:event_btnFirstActionPerformed

    private void btnPreviousActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPreviousActionPerformed
        displayPrevious();
    }//GEN-LAST:event_btnPreviousActionPerformed

    private void btnNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNextActionPerformed
        displayNext();
    }//GEN-LAST:event_btnNextActionPerformed

    private void btnLastActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLastActionPerformed
        displayLast();
    }//GEN-LAST:event_btnLastActionPerformed

    private void btnHocVienActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHocVienActionPerformed
        openHocVien();
    }//GEN-LAST:event_btnHocVienActionPerformed

    private void cboChuyenDeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboChuyenDeActionPerformed
        selectComboBox();
    }//GEN-LAST:event_cboChuyenDeActionPerformed

    /**
     * s
     *
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KhoaHocJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KhoaHocJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClear;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnFirst;
    private javax.swing.JButton btnHocVien;
    private javax.swing.JButton btnInsert;
    private javax.swing.JButton btnLast;
    private javax.swing.JButton btnNext;
    private javax.swing.JButton btnPrevious;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JComboBox<String> cboChuyenDe;
    private com.toedter.calendar.JDateChooser jDateChooser;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblChuyenDe;
    private javax.swing.JLabel lblGhiChu;
    private javax.swing.JLabel lblHocPhi;
    private javax.swing.JLabel lblMaNV;
    private javax.swing.JLabel lblNgayKG;
    private javax.swing.JLabel lblNgayTao;
    private javax.swing.JLabel lblThoiLuong;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JPanel pnlEdit;
    private javax.swing.JPanel pnlList;
    private javax.swing.JScrollPane srcGhiChu;
    private javax.swing.JScrollPane srcTbl;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblGridView;
    private javax.swing.JTextArea txtGhiChu;
    private javax.swing.JTextField txtHocPhi;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JTextField txtNgayTao;
    private javax.swing.JTextField txtThoiLuong;
    // End of variables declaration//GEN-END:variables
}
