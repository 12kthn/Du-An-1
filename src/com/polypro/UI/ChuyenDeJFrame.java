/*
 * Document: Giao diện quản lý chuyên đề
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.UI;

import com.polypro.dao.ChuyenDeDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.model.ChuyenDe;
import java.awt.Image;
import java.io.File;
import java.util.List;
import java.util.Vector;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class ChuyenDeJFrame extends javax.swing.JFrame {
    
    int index = -1;//Vị trí người học đang hiển thị trên form
    File file;//file ảnh
    ChuyenDeDAO dao = new ChuyenDeDAO();//tạo đối tượng ChuyenDeDAO
    List<ChuyenDe> list; //list lưu danh sách Chuyên đề
    
    public ChuyenDeJFrame() {
        init();
    }

    //gọi các phương thức khi khởi tạo
    private void init(){
        initComponents();
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);
        setColumnName();
        load();
        clear();
    }
    
    //Phuong thuc định dạng bảng
    private void setColumnName() {
        //Tên các cột
        String header[] = {"Mã CD", "Tên CD", "Học phí", "Thời lượng",
            "Hình"};
        DefaultTableModel tableModel = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        tblGridView.setModel(tableModel);
    }

    //Phuong thuc hien thi danh sach chuyên đề
    private void load() {
        DefaultTableModel tableModel = (DefaultTableModel) tblGridView.getModel();
        tableModel.setRowCount(0);
        try {
            list = dao.select();
            for (ChuyenDe chuyenDe : list) {
                Vector row = new Vector();
                row.add(chuyenDe.getMaCD());
                row.add(chuyenDe.getTenCD());
                row.add(chuyenDe.getHocPhi());
                row.add(chuyenDe.getThoiLuong());
                row.add(chuyenDe.getHinh());
                tableModel.addRow(row);
            }
            tblGridView.setModel(tableModel);
            TableHelper.formatHeader(tblGridView);
            TableHelper.formarCloumnSize(tblGridView, 40, 180, 40, 40);
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
        if (txtMaCD.getText().length() != 5) {
            DialogHelper.alert(this, "Mã chuyên đề phải có 5 ký tự", JOptionPane.WARNING_MESSAGE);
            txtMaCD.requestFocus();
            return false;
        }
        String regexCode = "[a-zA-Z0-9]{5}"; //regular expression của mã người học
        if (!txtMaCD.getText().trim().matches(regexCode)) {
            DialogHelper.alert(this, "Mã chuyên đề không hợp lệ̣", JOptionPane.WARNING_MESSAGE);
            txtMaCD.requestFocus();
            return false;
        }
        
        //Kiểm tra tên
        if (txtTenCD.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập tên chuyên đề", JOptionPane.WARNING_MESSAGE);
            txtTenCD.requestFocus();
            return false;
        }
        String regexName = "[a-zA-ZAÁÀẢÃẠÂẤẦẨẪẬĂẮẰẲẴẶEÉÈẺẼẸÊẾỀỂỄỆIÍÌỈĨỊOÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢ"
                + "UÚÙỦŨỤƯỨỪỬỮỰYÝỲỶỸỴĐ aáàảãạâấầẩẫậăắằẳẵặeéèẻẽẹêếềểễệiíìỉĩịoóòỏõọôốồổỗộơớờởỡợ"
                + "uúùủũụưứừửữựyýỳỷỹỵđ ]+";  //regular expression của ký tự  tiếng Việt
        if (!txtTenCD.getText().trim().matches(regexName)) {
            DialogHelper.alert(this, "Tên chuyên đề không hợp lệ", JOptionPane.WARNING_MESSAGE);
            txtTenCD.requestFocus();
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
            if (thoiLuong <= 0) {
                throw new Exception("Thời lượng không được bé hơn không");
            }
        } catch (NumberFormatException ex) {
            DialogHelper.alert(this, "Thời lượng không đúng định dạng số", JOptionPane.WARNING_MESSAGE);
            txtThoiLuong.requestFocus();
            return false;
        } catch (Exception ex){
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
        } catch (Exception ex){
            DialogHelper.alert(this, ex.getMessage(), JOptionPane.WARNING_MESSAGE);
            txtHocPhi.requestFocus();
            return false;
        }
        
        //Kiểm tra hình
        if (lblHinh.getToolTipText() == null) {
            DialogHelper.alert(this, "Vui lòng chọn hình", JOptionPane.WARNING_MESSAGE);
            return false;
        }
        
        return true;
    }

    //Phuong thuc chọn file ảnh
    private void selectLogo() {
        JFileChooser fileChooser = new JFileChooser();
        if (fileChooser.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
            file = fileChooser.getSelectedFile();
            ShareHelper.setIcon(lblHinh, file);
        }
    }


    //Phuong thuc insert
    private void insert() {
        if (checkInput()) {
            ChuyenDe model = getModel();
            if (dao.findById(model.getMaCD()) != null) {
                DialogHelper.alert(this, "Mã chuyên đề đã tồn tại", JOptionPane.WARNING_MESSAGE);
                txtMaCD.requestFocus();
            } else {
                if (dao.insert(model) != 0 && ShareHelper.saveLogo(file)) {
                    load();
                    index = TableHelper.getRowByCode(tblGridView.getModel(), 0, model.getMaCD());
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

    //Phuong thuc update
    private void update() {
        if (checkInput()) {
            ChuyenDe model = getModel();
            if (dao.update(model) != 0 && ShareHelper.saveLogo(file)) {
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
        if (!ShareHelper.USER.getVaiTro()) {
                DialogHelper.alert(this, "Chỉ có quản trị viên mới thực hiện được chức năng này", JOptionPane.WARNING_MESSAGE);
                return;
            }
        if (DialogHelper.confirm(this, "Bạn thực sự muốn xóa chuyên đề này?")) {
            String maCD = txtMaCD.getText();
            if (dao.findById(maCD) != null) {
                if (dao.delete(maCD) != 0) {
                    load();
                    clear();
                    DialogHelper.alert(this, "Xóa thành công!", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    DialogHelper.alert(this, "Xóa thất bại!", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                DialogHelper.alert(this, "Mã chuyên đề " + maCD + " không tồn tại", JOptionPane.WARNING_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc làm trống form
    private void clear() {
        setModel(new ChuyenDe());
        lblHinh.setIcon(null);
        setStatus(true);
    }

    //Phuong thuc lay du lieu tu form
    private ChuyenDe getModel() {
        ChuyenDe model = new ChuyenDe();
        model.setMaCD(txtMaCD.getText());
        model.setTenCD(txtTenCD.getText());
        model.setThoiLuong(Integer.parseInt(txtThoiLuong.getText()));
        model.setHocPhi(Double.parseDouble(txtHocPhi.getText()));
        model.setHinh(lblHinh.getToolTipText());
        model.setMoTa(txtMoTa.getText());
        return model;
    }

    //Phuong thuc hiển thị thông tin chuyên đề lên form
    private void setModel(ChuyenDe model) {
        txtMaCD.setText(model.getMaCD());
        txtTenCD.setText(model.getTenCD());
        txtThoiLuong.setText(model.getThoiLuong() + "");
        txtHocPhi.setText(model.getHocPhi() + "");
        txtMoTa.setText(model.getMoTa());
        file = new File("logos\\"+ model.getHinh());
        ShareHelper.setIcon(lblHinh, file);
    }

    //Phuong thuc thiết lập trạng thái các button và text field khi insert
    private void setStatus(boolean insertable) {
        txtMaCD.setEditable(insertable);
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

    //Phương thức hiển thị chuyên đề đầu tiên
    private void displayFirst() {
        index = 0;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị chuyên đề trước
    private void displayPrevious() {
        index--;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị chuyên đề sau
    private void displayNext() {
        index++;
        setModel(list.get(index));
        setNavigator();
    }

    //Phương thức hiển thị chuyên đề cuối cùng
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
        lblMaCD = new javax.swing.JLabel();
        lblTenCD = new javax.swing.JLabel();
        lblThoiLuong = new javax.swing.JLabel();
        lblHocPhi = new javax.swing.JLabel();
        lblMoTa = new javax.swing.JLabel();
        txtMaCD = new javax.swing.JTextField();
        txtTenCD = new javax.swing.JTextField();
        txtThoiLuong = new javax.swing.JTextField();
        txtHocPhi = new javax.swing.JTextField();
        btnInsert = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnClear = new javax.swing.JButton();
        btnFirst = new javax.swing.JButton();
        btnPrevious = new javax.swing.JButton();
        btnNext = new javax.swing.JButton();
        btnLast = new javax.swing.JButton();
        srcGhiChu = new javax.swing.JScrollPane();
        txtMoTa = new javax.swing.JTextArea();
        lblHinh = new javax.swing.JLabel();
        lblTitleHinh = new javax.swing.JLabel();
        pnlList = new javax.swing.JPanel();
        srcTbl = new javax.swing.JScrollPane();
        tblGridView = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Chuyên đề");
        setPreferredSize(new java.awt.Dimension(780, 600));

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(0, 0, 255));
        lblTitle.setText("  QUẢN LÝ CHUYÊN ĐỀ");
        lblTitle.setPreferredSize(new java.awt.Dimension(500, 35));
        getContentPane().add(lblTitle, java.awt.BorderLayout.NORTH);

        tabs.setPreferredSize(new java.awt.Dimension(1050, 500));

        pnlEdit.setPreferredSize(new java.awt.Dimension(530, 500));
        pnlEdit.setLayout(new java.awt.GridBagLayout());

        lblMaCD.setText("Mã chuyên đề");
        lblMaCD.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblMaCD, gridBagConstraints);

        lblTenCD.setText("Tên chuyên đề");
        lblTenCD.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblTenCD, gridBagConstraints);

        lblThoiLuong.setText("Thời lượng (giờ)");
        lblThoiLuong.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblThoiLuong, gridBagConstraints);

        lblHocPhi.setText("Học phí");
        lblHocPhi.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 0);
        pnlEdit.add(lblHocPhi, gridBagConstraints);

        lblMoTa.setText("Mô tả chuyên đề");
        lblMoTa.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblMoTa, gridBagConstraints);

        txtMaCD.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtMaCD, gridBagConstraints);

        txtTenCD.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtTenCD, gridBagConstraints);

        txtThoiLuong.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtThoiLuong, gridBagConstraints);

        txtHocPhi.setPreferredSize(new java.awt.Dimension(420, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 40, 0, 0);
        pnlEdit.add(txtHocPhi, gridBagConstraints);

        btnInsert.setText("Thêm");
        btnInsert.setPreferredSize(new java.awt.Dimension(70, 30));
        btnInsert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInsertActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 30);
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
        gridBagConstraints.gridy = 3;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 30);
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
        gridBagConstraints.gridy = 4;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 30);
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
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 0, 30);
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
        gridBagConstraints.gridy = 10;
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
        gridBagConstraints.gridy = 10;
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
        gridBagConstraints.gridy = 10;
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
        gridBagConstraints.gridy = 10;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 200, 0, 0);
        pnlEdit.add(btnLast, gridBagConstraints);

        srcGhiChu.setPreferredSize(new java.awt.Dimension(610, 100));

        txtMoTa.setColumns(50);
        txtMoTa.setLineWrap(true);
        txtMoTa.setRows(5);
        srcGhiChu.setViewportView(txtMoTa);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 20, 0);
        pnlEdit.add(srcGhiChu, gridBagConstraints);

        lblHinh.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblHinh.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(102, 102, 102)));
        lblHinh.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        lblHinh.setPreferredSize(new java.awt.Dimension(150, 200));
        lblHinh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblHinhMouseClicked(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridheight = 7;
        pnlEdit.add(lblHinh, gridBagConstraints);

        lblTitleHinh.setText("Hình");
        lblTitleHinh.setPreferredSize(new java.awt.Dimension(100, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridheight = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 15, 0);
        pnlEdit.add(lblTitleHinh, gridBagConstraints);

        tabs.addTab("CẬP NHẬT", pnlEdit);

        pnlList.setPreferredSize(new java.awt.Dimension(1050, 520));
        pnlList.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 15));

        srcTbl.setPreferredSize(new java.awt.Dimension(730, 460));

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

        pnlList.add(srcTbl);

        tabs.addTab("DANH SÁCH", pnlList);

        getContentPane().add(tabs, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lblHinhMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblHinhMouseClicked
        selectLogo();
    }//GEN-LAST:event_lblHinhMouseClicked

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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ChuyenDeJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChuyenDeJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChuyenDeJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChuyenDeJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ChuyenDeJFrame().setVisible(true);
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
    private javax.swing.JButton btnUpdate;
    private javax.swing.JLabel lblHinh;
    private javax.swing.JLabel lblHocPhi;
    private javax.swing.JLabel lblMaCD;
    private javax.swing.JLabel lblMoTa;
    private javax.swing.JLabel lblTenCD;
    private javax.swing.JLabel lblThoiLuong;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JLabel lblTitleHinh;
    private javax.swing.JPanel pnlEdit;
    private javax.swing.JPanel pnlList;
    private javax.swing.JScrollPane srcGhiChu;
    private javax.swing.JScrollPane srcTbl;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblGridView;
    private javax.swing.JTextField txtHocPhi;
    private javax.swing.JTextField txtMaCD;
    private javax.swing.JTextArea txtMoTa;
    private javax.swing.JTextField txtTenCD;
    private javax.swing.JTextField txtThoiLuong;
    // End of variables declaration//GEN-END:variables
}
