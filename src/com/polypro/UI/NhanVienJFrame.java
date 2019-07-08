/*
 * Document: Giao diện quản lý nhân viên
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.UI;

import com.polypro.dao.NhanVienDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.model.NhanVien;
import java.util.List;
import java.util.Vector;
import javax.swing.ButtonGroup;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

public class NhanVienJFrame extends javax.swing.JFrame {

    ButtonGroup brgVaiTro = new ButtonGroup();
    int index = -1;//Vị trí nhân viên đang hiển thị trên form
    NhanVienDAO dao = new NhanVienDAO();
    List<NhanVien> list;

    public NhanVienJFrame() {
        initComponents();
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);
        setIconImage(ShareHelper.APP_ICON);
        setColumnName();
        setButtonGroup();
        load();
        setStatus(true);
    }

    //Phuong thuc thiet lap ButtonGroup
    private void setButtonGroup() {
        brgVaiTro.add(rdoNhanVien);
        brgVaiTro.add(rdoTruongPhong);
    }

    //Phuong thuc định dạng bảng
    private void setColumnName() {
        String headerArr[] = {"Mã NV", "Mật khẩu", "Họ và tên", "Vai trò"};
        DefaultTableModel tableModel = new DefaultTableModel(headerArr, 0) {
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
            for (NhanVien nhanVien : list) {
                Vector row = new Vector();
                row.add(nhanVien.getMaNV());
                row.add(nhanVien.getMatKhau());
                row.add(nhanVien.getHoTen());
                row.add(nhanVien.getVaiTro() ? "Quản trị" : "Nhân viên");
                tableModel.addRow(row);
            }
            tblGridView.setModel(tableModel);
            TableHelper.formatHeader(tblGridView);
            TableHelper.formarCloumnSize(tblGridView, 80, 80, 150);
        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn dữ liệu!", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        } finally {
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc kiem tra dữ liệu nhập vào
    private boolean checkInput() {
        if (txtMaNV.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập mã nhân viên", JOptionPane.WARNING_MESSAGE);
            txtMaNV.requestFocus();
            return false;
        }
        if (txtMatKhau.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập mật khẩu", JOptionPane.WARNING_MESSAGE);
            txtMatKhau.requestFocus();
            return false;
        }
        if (txtXacNhanMK.getText().length() <= 3) {
            DialogHelper.alert(this, "Mật khẩu phải dài hơn 3 ký tự", JOptionPane.WARNING_MESSAGE);
            txtMatKhau.requestFocus();
            return false;
        }
        if (txtXacNhanMK.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập xác nhận mật khẩu", JOptionPane.WARNING_MESSAGE);
            txtXacNhanMK.requestFocus();
            return false;
        }
        if (txtHoTen.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập họ tên", JOptionPane.WARNING_MESSAGE);
            txtHoTen.requestFocus();
            return false;
        }
        if ((!rdoTruongPhong.isSelected()) && (!rdoNhanVien.isSelected())) {
            DialogHelper.alert(this, "Vui lòng chọn vai trò", JOptionPane.WARNING_MESSAGE);
            return false;
        }
        if (!txtXacNhanMK.getText().equals(txtMatKhau.getText())) {
            DialogHelper.alert(this, "Xác nhận mật khẩu không đúng!", JOptionPane.WARNING_MESSAGE);
            txtXacNhanMK.requestFocus();
            return false;
        }
        return true;
    }

    //Phuong thuc insert nhan vien
    private void insert() {
        if (checkInput()) {
            NhanVien model = getModel();
            if (dao.findById(model.getMaNV()) != null) {
                DialogHelper.alert(this, "Mã nhân viên đã tồn tại", JOptionPane.WARNING_MESSAGE);
                txtMaNV.requestFocus();
            } else {
                if (dao.insert(model) != 0) {
                    load();
                    index = getRowByMaNV(tblGridView.getModel(), model.getMaNV());
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
            NhanVien model = getModel();
            if (dao.update(model) != 0) {
                load();
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
            String manv = txtMaNV.getText();
            if (dao.findById(manv) != null) {
                if (manv.equals(ShareHelper.USER.getMaNV())) {
                    DialogHelper.alert(this, "Bạn không thể xóa chính mình", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                if (dao.delete(manv) != 0) {
                    load();
                    clear();
                    DialogHelper.alert(this, "Xóa thành công!", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    DialogHelper.alert(this, "Xóa thất bại!", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                DialogHelper.alert(this, "Mã nhân viên " + manv + " không tồn tại", JOptionPane.WARNING_MESSAGE);
            }
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc làm trống form
    private void clear() {
        setModel(new NhanVien());
        brgVaiTro.clearSelection();
        setStatus(true);
    }

    //Phuong thuc lay du lieu tu form
    private NhanVien getModel() {
        NhanVien model = new NhanVien();
        model.setMaNV(txtMaNV.getText().trim());
        model.setHoTen(txtHoTen.getText());
        model.setMatKhau(txtMatKhau.getText());
        model.setVaiTro(rdoTruongPhong.isSelected());
        return model;
    }

    //Phuong thuc hiển thị thông tin nhân viên lên form
    private void setModel(NhanVien model) {
        txtMaNV.setText(model.getMaNV());
        txtHoTen.setText(model.getHoTen());
        txtMatKhau.setText(model.getMatKhau());
        txtXacNhanMK.setText(model.getMatKhau());
        rdoTruongPhong.setSelected(model.getVaiTro());
        rdoNhanVien.setSelected(!model.getVaiTro());
    }

    //Phuong thuc thiết lập trạng thái các button và text field khi insert
    private void setStatus(boolean insertable) {
        txtMaNV.setEditable(insertable);
        btnInsert.setEnabled(insertable);
        btnUpdate.setEnabled(!insertable);
        btnDelete.setEnabled(!insertable);

        btnFirst.setEnabled(!insertable);
        btnLast.setEnabled(!insertable);
        btnPrevious.setEnabled(!insertable);
        btnNext.setEnabled(!insertable);
    }

    //Phuong thuc tim vi tri nhan vien tren Jtable theo ma
    private int getRowByMaNV(TableModel model, String maNV) {
        for (int i = 0; i < model.getRowCount() - 1; i++) {
            if (model.getValueAt(i, 0).equals(maNV)) {
                return i;
            }
        }
        return 0;
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
        lblMaNV = new javax.swing.JLabel();
        lblMatKhau = new javax.swing.JLabel();
        lblXacNhanMK = new javax.swing.JLabel();
        lblHoTen = new javax.swing.JLabel();
        lblVaiTro = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtMatKhau = new javax.swing.JPasswordField();
        txtXacNhanMK = new javax.swing.JPasswordField();
        txtHoTen = new javax.swing.JTextField();
        rdoTruongPhong = new javax.swing.JRadioButton();
        rdoNhanVien = new javax.swing.JRadioButton();
        btnInsert = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnClear = new javax.swing.JButton();
        btnFirst = new javax.swing.JButton();
        btnPrevious = new javax.swing.JButton();
        btnNext = new javax.swing.JButton();
        btnLast = new javax.swing.JButton();
        pnlList = new javax.swing.JPanel();
        src = new javax.swing.JScrollPane();
        tblGridView = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Quản lý nhân viên");
        setPreferredSize(new java.awt.Dimension(580, 540));

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(0, 0, 255));
        lblTitle.setText(" QUẢN LÝ NHÂN VIÊN QUẢN TRỊ");
        lblTitle.setPreferredSize(new java.awt.Dimension(500, 35));
        getContentPane().add(lblTitle, java.awt.BorderLayout.NORTH);

        tabs.setPreferredSize(new java.awt.Dimension(616, 500));

        pnlEdit.setPreferredSize(new java.awt.Dimension(530, 480));
        pnlEdit.setLayout(new java.awt.GridBagLayout());

        lblMaNV.setText("Mã nhân viên");
        lblMaNV.setPreferredSize(new java.awt.Dimension(200, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblMaNV, gridBagConstraints);

        lblMatKhau.setText("Mật khẩu");
        lblMatKhau.setPreferredSize(new java.awt.Dimension(200, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblMatKhau, gridBagConstraints);

        lblXacNhanMK.setText("Xác nhận mật khẩu");
        lblXacNhanMK.setPreferredSize(new java.awt.Dimension(200, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblXacNhanMK, gridBagConstraints);

        lblHoTen.setText("Họ và tên");
        lblHoTen.setPreferredSize(new java.awt.Dimension(200, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblHoTen, gridBagConstraints);

        lblVaiTro.setText("Vai trò");
        lblVaiTro.setPreferredSize(new java.awt.Dimension(200, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(5, 0, 5, 0);
        pnlEdit.add(lblVaiTro, gridBagConstraints);

        txtMaNV.setPreferredSize(new java.awt.Dimension(400, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtMaNV, gridBagConstraints);

        txtMatKhau.setPreferredSize(new java.awt.Dimension(400, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        pnlEdit.add(txtMatKhau, gridBagConstraints);

        txtXacNhanMK.setPreferredSize(new java.awt.Dimension(400, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        pnlEdit.add(txtXacNhanMK, gridBagConstraints);

        txtHoTen.setPreferredSize(new java.awt.Dimension(400, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        pnlEdit.add(txtHoTen, gridBagConstraints);

        rdoTruongPhong.setText("Trưởng phòng");
        rdoTruongPhong.setPreferredSize(new java.awt.Dimension(110, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlEdit.add(rdoTruongPhong, gridBagConstraints);

        rdoNhanVien.setText("Nhân viên");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(0, 140, 0, 40);
        pnlEdit.add(rdoNhanVien, gridBagConstraints);

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
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
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
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
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
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
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
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
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
        gridBagConstraints.insets = new java.awt.Insets(30, 0, 0, 200);
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
        gridBagConstraints.insets = new java.awt.Insets(30, 0, 0, 70);
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
        gridBagConstraints.insets = new java.awt.Insets(30, 70, 0, 0);
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
        gridBagConstraints.insets = new java.awt.Insets(30, 200, 0, 0);
        pnlEdit.add(btnLast, gridBagConstraints);

        tabs.addTab("CẬP NHẬT", pnlEdit);

        pnlList.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 15));

        src.setPreferredSize(new java.awt.Dimension(530, 400));

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
        src.setViewportView(tblGridView);

        pnlList.add(src);

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
            java.util.logging.Logger.getLogger(NhanVienJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NhanVienJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NhanVienJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NhanVienJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new NhanVienJFrame().setVisible(true);
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
    private javax.swing.JLabel lblHoTen;
    private javax.swing.JLabel lblMaNV;
    private javax.swing.JLabel lblMatKhau;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JLabel lblVaiTro;
    private javax.swing.JLabel lblXacNhanMK;
    private javax.swing.JPanel pnlEdit;
    private javax.swing.JPanel pnlList;
    private javax.swing.JRadioButton rdoNhanVien;
    private javax.swing.JRadioButton rdoTruongPhong;
    private javax.swing.JScrollPane src;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblGridView;
    private javax.swing.JTextField txtHoTen;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JPasswordField txtMatKhau;
    private javax.swing.JPasswordField txtXacNhanMK;
    // End of variables declaration//GEN-END:variables
}
