/*
 * Document: Giao dien quan ly nguoi hoc
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.UI;

import com.polypro.dao.NguoiHocDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.helper.XDate;
import com.polypro.model.NguoiHoc;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import java.util.Vector;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class NguoiHocJFrame extends javax.swing.JFrame {

    int index = -1;//Vị trí người học đang hiển thị trên form
    NguoiHocDAO dao = new NguoiHocDAO();//tạo đối tượng NguoiHocDAO
    List<NguoiHoc> list;//list chứa danh sách người học hiện tại

    public NguoiHocJFrame() {
        init();
    }

    //Gọi các phương thức khi khởi tạo
    private void init(){
        initComponents();
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);
        setIconImage(ShareHelper.APP_ICON);
        fillCboGioiTinh();
        setColumnName();
        load("");
        clear();
    }
    
    //Phuong thuc load dữ liệu vào cboGioiTinh
    private void fillCboGioiTinh() {
        DefaultComboBoxModel model = (DefaultComboBoxModel) cboGioiTinh.getModel();
        model.removeAllElements();
        model.addElement("");
        model.addElement("Nam");
        model.addElement("Nữ");
    }

    //Phuong thuc định dạng bảng
    private void setColumnName() {
        String header[] = {"Mã NH", "Họ tên", "Giới tính", "Ngày sinh",
            "Điện thoại", "Email", "Mã NV", "Ngày ĐK"};
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
    private void load(String name) {
        DefaultTableModel tableModel = (DefaultTableModel) tblGridView.getModel();
        tableModel.setRowCount(0);
        try {
            list = dao.findByName(name);
            for (NguoiHoc nguoiHoc : list) {
                Vector row = new Vector();
                row.add(nguoiHoc.getMaNH());
                row.add(nguoiHoc.getHoTen());
                row.add(nguoiHoc.getGioiTinh() ? "Nam" : "Nữ");
                row.add(XDate.toString(nguoiHoc.getNgaySinh(), "dd/MM/yyyy"));
                row.add(nguoiHoc.getDienThoai());
                row.add(nguoiHoc.getEmail());
                row.add(nguoiHoc.getMaNV());
                row.add(XDate.toString(nguoiHoc.getNgayDK(), "dd/MM/yyyy"));
                tableModel.addRow(row);
            }
            tblGridView.setModel(tableModel);
            TableHelper.formatHeader(tblGridView);
            TableHelper.formarCloumnSize(tblGridView, 40, 150, 40, 40, 40, 120, 40);
        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn dữ liệu!", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        } finally {
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc kiem tra dữ liệu nhập vào
    private boolean checkInput() {
        //kiểm tra mã
        if (txtMaNH.getText().length() != 7) {
            DialogHelper.alert(this, "Mã người học phải có 7 ký tự", JOptionPane.WARNING_MESSAGE);
            txtMaNH.requestFocus();
            return false;
        }
        String regexCode = "[a-zA-Z0-9]{7}"; //regular expression của mã người học
        if (!txtMaNH.getText().trim().matches(regexCode)) {
            DialogHelper.alert(this, "Mã người học không hợp lệ̣", JOptionPane.WARNING_MESSAGE);
            txtMaNH.requestFocus();
            return false;
        }
        
        //kiểm tra họ tên
        if (txtHoTen.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập họ tên", JOptionPane.WARNING_MESSAGE);
            txtHoTen.requestFocus();
            return false;
        }
        String regexName = "[a-zA-ZAÁÀẢÃẠÂẤẦẨẪẬĂẮẰẲẴẶEÉÈẺẼẸÊẾỀỂỄỆIÍÌỈĨỊOÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢ"
                + "UÚÙỦŨỤƯỨỪỬỮỰYÝỲỶỸỴĐ aáàảãạâấầẩẫậăắằẳẵặeéèẻẽẹêếềểễệiíìỉĩịoóòỏõọôốồổỗộơớờởỡợ"
                + "uúùủũụưứừửữựyýỳỷỹỵđ ]+";  //regular expression của ký tự  tiếng Việt
        if (!txtHoTen.getText().trim().matches(regexName)) {
            DialogHelper.alert(this, "Họ tên không hợp lệ", JOptionPane.WARNING_MESSAGE);
            txtHoTen.requestFocus();
            return false;
        }

        //kiểm tra giới tính
        if (cboGioiTinh.getSelectedIndex() == 0) {
            DialogHelper.alert(this, "Vui lòng chọn giới tính", JOptionPane.WARNING_MESSAGE);
            return false;
        }
        
        //kiểm tra ngày sinh
        if (jDateChooser.getDate() == null) {
            DialogHelper.alert(this, "Vui lòng chọn ngày sinh", JOptionPane.WARNING_MESSAGE);
            return false;
        }
        //Kiểm tra ngày sinh trước ngày hiện tại 16 năm
        
        //Tạo đối tượng Calendar
        Calendar birthDay = Calendar.getInstance(TimeZone.getDefault());
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        
        //đặt thời gian cho đối tượng Calendar
        birthDay.setTime(jDateChooser.getDate());
        now.setTime(XDate.now());
        
        //Kiểm tra chênh lệch năm
        if (now.get(Calendar.YEAR) - birthDay.get(Calendar.YEAR) < 16) {
            DialogHelper.alert(this, "Ngày sinh phải trước hiện tại 16 năm", JOptionPane.WARNING_MESSAGE);
            return false;
        }

        //kiểm tra số đt
        if (txtDienThoai.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập số điện thoại", JOptionPane.WARNING_MESSAGE);
            txtDienThoai.requestFocus();
            return false;
        }
        if (!txtDienThoai.getText().trim().matches("^0" + "[0-9]{9}")) {
            DialogHelper.alert(this, "Số điện thoại không hợp lệ", JOptionPane.WARNING_MESSAGE);
            txtDienThoai.requestFocus();
            return false;
        }
        
        //kiểm tra email
        if (txtEmail.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập Email", JOptionPane.WARNING_MESSAGE);
            txtEmail.requestFocus();
            return false;
        }
        String regexEmail = "\\w+@\\w+(\\.\\w+){1,2}"; //regular expression của email
        if (!txtEmail.getText().trim().matches(regexEmail)) {
            DialogHelper.alert(this, "Email không đúng định dạng", JOptionPane.WARNING_MESSAGE);
            txtEmail.requestFocus();
            return false;
        }
        
        return true;
    }

    //Phuong thuc insert nhan vien
    private void insert() {
        if (checkInput()) {
            NguoiHoc model = getModel();
            if (dao.findById(model.getMaNH()) != null) {
                DialogHelper.alert(this, "Mã nhân viên đã tồn tại", JOptionPane.WARNING_MESSAGE);
                txtMaNH.requestFocus();
            } else {
                if (dao.insert(model) != 0) {
                    load("");
                    index = TableHelper.getRowByCode(tblGridView.getModel(), 0, model.getMaNH());
                    System.out.println(model.getMaNH());
                    setModel(list.get(index));
                    setStatus(false);
                    setNavigator();
                    DialogHelper.alert(this, "Thêm mới thành công!", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    DialogHelper.alert(this, "Thêm mới thất bại!", JOptionPane.ERROR_MESSAGE);
                }
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc update nhan vien
    private void update() {
        if (checkInput()) {
            NguoiHoc model = getModel();
            if (dao.update(model) != 0) {
                load("");
                DialogHelper.alert(this, "Cập nhật thành công!", JOptionPane.INFORMATION_MESSAGE);
            } else {
                DialogHelper.alert(this, "Cập nhật thất bại!", JOptionPane.ERROR_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc xoa nhan vien
    private void delete() {
        if (DialogHelper.confirm(this, "Bạn thực sự muốn xóa nhân viên này?")) {
            String maNH = txtMaNH.getText();
            if (dao.findById(maNH) != null) {
                if (dao.delete(maNH) != 0) {
                    load("");
                    clear();
                    DialogHelper.alert(this, "Xóa thành công!", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    DialogHelper.alert(this, "Xóa thất bại!", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                DialogHelper.alert(this, "Mã nhân viên " + maNH + " không tồn tại", JOptionPane.WARNING_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc làm trống form
    private void clear() {
        setModel(new NguoiHoc());
        cboGioiTinh.setSelectedIndex(0);
        setStatus(true);
    }

    //Phuong thuc lay du lieu tu form
    private NguoiHoc getModel() {
        NguoiHoc model = new NguoiHoc();
        model.setMaNH(txtMaNH.getText());
        model.setHoTen(txtHoTen.getText());
        model.setGioiTinh(cboGioiTinh.getSelectedIndex() == 1);
        model.setNgaySinh(new java.sql.Date(jDateChooser.getDate().getTime()));
        model.setDienThoai(txtDienThoai.getText());
        model.setEmail(txtEmail.getText());
        model.setGhiChu(txtGhiChu.getText());
        model.setMaNV(ShareHelper.USER.getMaNV());
        model.setNgayDK(XDate.now());
        return model;
    }

    //Phuong thuc hiển thị thông tin nhân viên lên form
    private void setModel(NguoiHoc model) {
        txtMaNH.setText(model.getMaNH());
        txtHoTen.setText(model.getHoTen());
        cboGioiTinh.getModel().setSelectedItem(model.getGioiTinh() ? "Nam" : "Nữ");
        jDateChooser.setDate(model.getNgaySinh());
        txtDienThoai.setText(model.getDienThoai());
        txtEmail.setText(model.getEmail());
        txtGhiChu.setText(model.getGhiChu());
    }

    //Phuong thuc thiết lập trạng thái các button và text field khi insert
    private void setStatus(boolean insertable) {
        txtMaNH.setEditable(insertable);
        btnInsert.setEnabled(insertable);
        btnUpdate.setEnabled(!insertable);
        btnDelete.setEnabled(!insertable && ShareHelper.isAdmin());

        btnFirst.setEnabled(!insertable);
        btnLast.setEnabled(!insertable);
        btnPrevious.setEnabled(!insertable);
        btnNext.setEnabled(!insertable);
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

    //Phương thức hiển thị nhân viên đầu tiên
    private void displayFirst() {
        index = 0;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị nhân viên trước
    private void displayPrevious() {
        index--;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị nhân viên sau
    private void displayNext() {
        index++;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị nhân viên cuối cùng
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
        lblMaNH = new javax.swing.JLabel();
        lblHoTen = new javax.swing.JLabel();
        lblGioiTinh = new javax.swing.JLabel();
        lblNgaySinh = new javax.swing.JLabel();
        lblDienThoai = new javax.swing.JLabel();
        lblEmail = new javax.swing.JLabel();
        lblGhiChu = new javax.swing.JLabel();
        txtMaNH = new javax.swing.JTextField();
        txtHoTen = new javax.swing.JTextField();
        txtDienThoai = new javax.swing.JTextField();
        txtEmail = new javax.swing.JTextField();
        btnInsert = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnClear = new javax.swing.JButton();
        btnFirst = new javax.swing.JButton();
        btnPrevious = new javax.swing.JButton();
        btnNext = new javax.swing.JButton();
        btnLast = new javax.swing.JButton();
        cboGioiTinh = new javax.swing.JComboBox<>();
        srcGhiChu = new javax.swing.JScrollPane();
        txtGhiChu = new javax.swing.JTextArea();
        jDateChooser = new com.toedter.calendar.JDateChooser();
        pnlList = new javax.swing.JPanel();
        pnlTimKiem = new javax.swing.JPanel();
        txtTimKiem = new javax.swing.JTextField();
        btnTimKiem = new javax.swing.JButton();
        srcTblNguoiHoc = new javax.swing.JScrollPane();
        tblGridView = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("QUẢN LÝ NGƯỜI HỌC");

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(0, 0, 255));
        lblTitle.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        lblTitle.setText("  QUẢN LÝ NGƯỜI HỌC");
        lblTitle.setPreferredSize(new java.awt.Dimension(500, 35));
        getContentPane().add(lblTitle, java.awt.BorderLayout.NORTH);

        tabs.setPreferredSize(new java.awt.Dimension(1050, 500));

        pnlEdit.setPreferredSize(new java.awt.Dimension(1050, 500));
        pnlEdit.setLayout(new java.awt.GridBagLayout());

        lblMaNH.setText("Mã người học");
        lblMaNH.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblMaNH, gridBagConstraints);

        lblHoTen.setText("Họ và tên");
        lblHoTen.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblHoTen, gridBagConstraints);

        lblGioiTinh.setText("Giới tính");
        lblGioiTinh.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblGioiTinh, gridBagConstraints);

        lblNgaySinh.setText("Ngày sinh");
        lblNgaySinh.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblNgaySinh, gridBagConstraints);

        lblDienThoai.setText("Điện thoại");
        lblDienThoai.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblDienThoai, gridBagConstraints);

        lblEmail.setText("Địa chỉ email");
        lblEmail.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblEmail, gridBagConstraints);

        lblGhiChu.setText("Ghi chú");
        lblGhiChu.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblGhiChu, gridBagConstraints);

        txtMaNH.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtMaNH, gridBagConstraints);

        txtHoTen.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtHoTen, gridBagConstraints);

        txtDienThoai.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtDienThoai, gridBagConstraints);

        txtEmail.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtEmail, gridBagConstraints);

        btnInsert.setText("Thêm");
        btnInsert.setPreferredSize(new java.awt.Dimension(70, 30));
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
        btnUpdate.setPreferredSize(new java.awt.Dimension(70, 30));
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
        btnDelete.setPreferredSize(new java.awt.Dimension(70, 30));
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
        btnClear.setPreferredSize(new java.awt.Dimension(70, 30));
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

        cboGioiTinh.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(cboGioiTinh, gridBagConstraints);

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

        jDateChooser.setDateFormatString("dd/MM/yyyy");
        jDateChooser.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(jDateChooser, gridBagConstraints);

        tabs.addTab("CẬP NHẬT", pnlEdit);

        pnlList.setPreferredSize(new java.awt.Dimension(1050, 520));
        pnlList.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 15));

        pnlTimKiem.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Tìm kiếm", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 14))); // NOI18N
        pnlTimKiem.setPreferredSize(new java.awt.Dimension(1000, 80));
        pnlTimKiem.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 20, 10));

        txtTimKiem.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtTimKiem.setPreferredSize(new java.awt.Dimension(800, 30));
        txtTimKiem.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtTimKiemKeyReleased(evt);
            }
        });
        pnlTimKiem.add(txtTimKiem);

        btnTimKiem.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnTimKiem.setText("Tìm kiếm");
        btnTimKiem.setPreferredSize(new java.awt.Dimension(100, 30));
        btnTimKiem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimKiemActionPerformed(evt);
            }
        });
        pnlTimKiem.add(btnTimKiem);

        pnlList.add(pnlTimKiem);

        srcTblNguoiHoc.setPreferredSize(new java.awt.Dimension(1000, 320));

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
        srcTblNguoiHoc.setViewportView(tblGridView);

        pnlList.add(srcTblNguoiHoc);

        tabs.addTab("DANH SÁCH", pnlList);

        getContentPane().add(tabs, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

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

    private void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimKiemActionPerformed
        load(txtTimKiem.getText().trim());
    }//GEN-LAST:event_btnTimKiemActionPerformed

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

    private void txtTimKiemKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimKiemKeyReleased
        load(txtTimKiem.getText().trim());
    }//GEN-LAST:event_txtTimKiemKeyReleased

    /**
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
            java.util.logging.Logger.getLogger(NguoiHocJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new NguoiHocJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnClear;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnFirst;
    private javax.swing.JButton btnInsert;
    private javax.swing.JButton btnLast;
    private javax.swing.JButton btnNext;
    private javax.swing.JButton btnPrevious;
    private javax.swing.JButton btnTimKiem;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JComboBox<String> cboGioiTinh;
    private com.toedter.calendar.JDateChooser jDateChooser;
    private javax.swing.JLabel lblDienThoai;
    private javax.swing.JLabel lblEmail;
    private javax.swing.JLabel lblGhiChu;
    private javax.swing.JLabel lblGioiTinh;
    private javax.swing.JLabel lblHoTen;
    private javax.swing.JLabel lblMaNH;
    private javax.swing.JLabel lblNgaySinh;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JPanel pnlEdit;
    private javax.swing.JPanel pnlList;
    private javax.swing.JPanel pnlTimKiem;
    private javax.swing.JScrollPane srcGhiChu;
    private javax.swing.JScrollPane srcTblNguoiHoc;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblGridView;
    private javax.swing.JTextField txtDienThoai;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextArea txtGhiChu;
    private javax.swing.JTextField txtHoTen;
    private javax.swing.JTextField txtMaNH;
    private javax.swing.JTextField txtTimKiem;
    // End of variables declaration//GEN-END:variables
}
