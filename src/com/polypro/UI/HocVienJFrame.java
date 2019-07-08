/*
 * Document: Giao diện quản lý học viên
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import com.polypro.dao.HocVienDAO;
import com.polypro.dao.NguoiHocDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.model.HocVien;
import com.polypro.model.NguoiHoc;
import java.util.List;
import javax.swing.ButtonGroup;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class HocVienJFrame extends javax.swing.JFrame {

    int index = -1;//Vị trí người học đang hiển thị trên form
    HocVienDAO dao = new HocVienDAO();
    NguoiHocDAO nhdao = new NguoiHocDAO();
    List<HocVien> list;
    List<NguoiHoc> listnh;
    int maKH;//Mã khóa học
    ButtonGroup brgStatus = new ButtonGroup();

    public HocVienJFrame(int maKH) {
        init(maKH);
    }

    
    //Goi cac phuong thuc khi khoi tao
    private void init(int maKH) {
        initComponents();
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);
        this.maKH = maKH;
        setButtonGroup();
        setTabelModel();
        loadtblHVTKH();
        loadtblHVNKH("");
    }

    //Phuong thuc định dạng table
    private void setTabelModel() {
        tblHVTKH.setModel(new javax.swing.table.DefaultTableModel(
                new Object[][]{},
                new String[]{
                    "Mã HV", "Mã NH", "Họ tên", "Điểm", "Xóa"
                }
        ) {
            Class[] types = new Class[]{
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Boolean.class
            };
            boolean[] canEdit = new boolean[]{
                false, false, false, true, ShareHelper.isAdmin()
            };

            @Override
            public Class getColumnClass(int columnIndex) {
                return types[columnIndex];
            }

            @Override
            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit[columnIndex];
            }
        });
        TableHelper.formatHeader(tblHVTKH);
        TableHelper.formarCloumnSize(tblHVTKH, 50, 70, 180, 50, 50);

        tblHVNKH.setModel(new javax.swing.table.DefaultTableModel(
                new Object[][]{},
                new String[]{
                    "Mã NH", "Họ tên", "Giới tính", "Thêm"
                }
        ) {
            Class[] types = new Class[]{
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Boolean.class
            };
            boolean[] canEdit = new boolean[]{
                false, false, false, true
            };

            @Override
            public Class getColumnClass(int columnIndex) {
                return types[columnIndex];
            }

            @Override
            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit[columnIndex];
            }
        });
        TableHelper.formatHeader(tblHVNKH);
        TableHelper.formarCloumnSize(tblHVNKH, 80, 180, 50, 50);

    }

    //Phuong thuc thêm các JRadioButton vào Button Group
    private void setButtonGroup() {
        brgStatus.add(rdoChuaNhap);
        brgStatus.add(rdoDaNhap);
        brgStatus.add(rdoTatCa);
        rdoTatCa.setSelected(true);
    }

    //Phuong thuc hien thi danh sach hoc vien trong khóa học
    private void loadtblHVTKH() {
        DefaultTableModel tableModel = (DefaultTableModel) tblHVTKH.getModel();
        tableModel.setRowCount(0);
        try {
            list = dao.findByCourse(maKH);

            for (HocVien model : list) {
                NguoiHoc nguoiHoc = nhdao.findById(model.getMaNH());
                Object[] row = {model.getMaHV(),
                    model.getMaNH(), nguoiHoc.getHoTen(), model.getDiem(), false};
                if (rdoTatCa.isSelected()) {
                    tableModel.addRow(row);
                } else if (rdoDaNhap.isSelected() && model.getDiem() >= 0) {
                    tableModel.addRow(row);
                } else if (rdoChuaNhap.isSelected() && model.getDiem() < 0) {
                    tableModel.addRow(row);
                }
            }
            tblHVTKH.setModel(tableModel);

        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn dữ liệu!", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        } finally {
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc hien thi danh sach hoc vien ngoài khóa học
    private void loadtblHVNKH(String tenNH) {
        DefaultTableModel tableModel = (DefaultTableModel) tblHVNKH.getModel();
        tableModel.setRowCount(0);
        try {
            listnh = nhdao.findStudentsNotInCourseByName(maKH, tenNH);
            for (NguoiHoc model : listnh) {
                Object[] row = {model.getMaNH(),
                    model.getHoTen(), model.getGioiTinh() ? "Nam" : "Nữ", false};
                tableModel.addRow(row);
            }
            tblHVNKH.setModel(tableModel);

        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn dữ liệu!", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        } finally {
            JdbcHelper.closeConnection();
        }
    }

    //Phuong thuc insert
    private void insert() {
        Boolean selected = false;
        int kq = 0;
        for (int i = 0; i < tblHVNKH.getRowCount(); i++) {
            Boolean isInsert = (Boolean) tblHVNKH.getValueAt(i, 3);
            if (isInsert) {
                selected = true;
                String manh = (String) tblHVNKH.getValueAt(i, 0);
                HocVien model = new HocVien();
                model.setMaKH(maKH);
                model.setMaNH(manh);
                model.setDiem(-1);
                kq += dao.insert(model);
            }
        }
        if (selected) {
            if (kq > 0) {
                loadtblHVNKH(txtTimKiem.getText());
                loadtblHVTKH();
                DialogHelper.alert(this, "Thêm mới thành công!", JOptionPane.INFORMATION_MESSAGE);
            } else {
                DialogHelper.alert(this, "Có lỗi xảy ra", JOptionPane.INFORMATION_MESSAGE);
            }

        } else {
            DialogHelper.alert(this, "Vui lòng chọn học viên", JOptionPane.WARNING_MESSAGE);
        } 
        JdbcHelper.closeConnection ();
    }

    

    //Phuong thuc update
    private void update() {
        for (int i = 0; i < tblHVTKH.getRowCount(); i++) {
            if (tblHVTKH.isEditing()) {
                tblHVTKH.getCellEditor().stopCellEditing();
            }
            
            Integer mahv = (Integer) tblHVTKH.getValueAt(i, 0);
            String manh = (String) tblHVTKH.getValueAt(i, 1);
            double diem = 0;
            try {
                diem = Double.parseDouble(tblHVTKH.getValueAt(i, 3) + "");
            } catch (NumberFormatException e) {
                DialogHelper.alert(this, "Điểm không đúng định dạng", JOptionPane.WARNING_MESSAGE);
                return;
            }
            
            if (diem > 10 || diem < -1) {
                DialogHelper.alert(this, "Điểm không hợp lệ", JOptionPane.WARNING_MESSAGE);
                return;
            }
            Boolean isDelete = (Boolean) tblHVTKH.getValueAt(i, 4);
            if (isDelete) {
                dao.delete(mahv);
            } else {
                HocVien model = new HocVien();
                model.setMaHV(mahv);
                model.setMaKH(maKH);
                model.setMaNH(manh);
                model.setDiem(diem);
                dao.update(model);
            }
        }
        loadtblHVTKH();
        loadtblHVNKH(txtTimKiem.getText());
        DialogHelper.alert(this, "Cập nhật thành công!", JOptionPane.INFORMATION_MESSAGE);
        JdbcHelper.closeConnection();

    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlHVNKH = new javax.swing.JPanel();
        pnlTimKiem = new javax.swing.JPanel();
        txtTimKiem = new javax.swing.JTextField();
        btnTimKiem = new javax.swing.JButton();
        scrTbl1 = new javax.swing.JScrollPane();
        tblHVNKH = new javax.swing.JTable();
        pnlBottomL = new javax.swing.JPanel();
        btnThem = new javax.swing.JButton();
        pnlHVKH = new javax.swing.JPanel();
        pnlStatus = new javax.swing.JPanel();
        rdoTatCa = new javax.swing.JRadioButton();
        rdoDaNhap = new javax.swing.JRadioButton();
        rdoChuaNhap = new javax.swing.JRadioButton();
        scrTbl = new javax.swing.JScrollPane();
        tblHVTKH = new javax.swing.JTable();
        pnlBottomR = new javax.swing.JPanel();
        btnCapNhat = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("QUẢN LÝ HỌC VIÊN");
        setPreferredSize(new java.awt.Dimension(1500, 650));
        getContentPane().setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 20, 20));

        pnlHVNKH.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED), "Học viên ngoài khóa học", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 14))); // NOI18N
        pnlHVNKH.setPreferredSize(new java.awt.Dimension(700, 550));
        pnlHVNKH.setLayout(new java.awt.BorderLayout());

        pnlTimKiem.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED), "Tìm kiếm", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.BELOW_TOP, new java.awt.Font("Tahoma", 1, 14))); // NOI18N
        pnlTimKiem.setPreferredSize(new java.awt.Dimension(700, 80));
        pnlTimKiem.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 20, 10));

        txtTimKiem.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtTimKiem.setPreferredSize(new java.awt.Dimension(400, 30));
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

        pnlHVNKH.add(pnlTimKiem, java.awt.BorderLayout.NORTH);

        scrTbl1.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        scrTbl1.setPreferredSize(new java.awt.Dimension(700, 280));

        tblHVNKH.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        tblHVNKH.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblHVNKH.setRowHeight(18);
        scrTbl1.setViewportView(tblHVNKH);

        pnlHVNKH.add(scrTbl1, java.awt.BorderLayout.CENTER);

        pnlBottomL.setPreferredSize(new java.awt.Dimension(100, 40));
        pnlBottomL.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));

        btnThem.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnThem.setText("Thêm");
        btnThem.setMargin(new java.awt.Insets(10, 14, 10, 14));
        btnThem.setPreferredSize(new java.awt.Dimension(100, 30));
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });
        pnlBottomL.add(btnThem);

        pnlHVNKH.add(pnlBottomL, java.awt.BorderLayout.SOUTH);

        getContentPane().add(pnlHVNKH);

        pnlHVKH.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED), "Học viên trong khóa học", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 14))); // NOI18N
        pnlHVKH.setPreferredSize(new java.awt.Dimension(700, 550));
        pnlHVKH.setLayout(new java.awt.BorderLayout());

        pnlStatus.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        pnlStatus.setPreferredSize(new java.awt.Dimension(700, 80));
        pnlStatus.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT));

        rdoTatCa.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rdoTatCa.setText("Tất cả");
        rdoTatCa.setPreferredSize(new java.awt.Dimension(71, 70));
        rdoTatCa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rdoTatCaActionPerformed(evt);
            }
        });
        pnlStatus.add(rdoTatCa);

        rdoDaNhap.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rdoDaNhap.setText("Đã nhập");
        rdoDaNhap.setPreferredSize(new java.awt.Dimension(87, 70));
        rdoDaNhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rdoDaNhapActionPerformed(evt);
            }
        });
        pnlStatus.add(rdoDaNhap);

        rdoChuaNhap.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rdoChuaNhap.setText("Chưa nhập");
        rdoChuaNhap.setPreferredSize(new java.awt.Dimension(105, 70));
        rdoChuaNhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rdoChuaNhapActionPerformed(evt);
            }
        });
        pnlStatus.add(rdoChuaNhap);

        pnlHVKH.add(pnlStatus, java.awt.BorderLayout.NORTH);

        scrTbl.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        scrTbl.setPreferredSize(new java.awt.Dimension(700, 280));

        tblHVTKH.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblHVTKH.setRowHeight(18);
        scrTbl.setViewportView(tblHVTKH);

        pnlHVKH.add(scrTbl, java.awt.BorderLayout.CENTER);

        pnlBottomR.setPreferredSize(new java.awt.Dimension(100, 40));
        pnlBottomR.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));

        btnCapNhat.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnCapNhat.setText("Cập nhật");
        btnCapNhat.setPreferredSize(new java.awt.Dimension(100, 30));
        btnCapNhat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCapNhatActionPerformed(evt);
            }
        });
        pnlBottomR.add(btnCapNhat);

        pnlHVKH.add(pnlBottomR, java.awt.BorderLayout.SOUTH);

        getContentPane().add(pnlHVKH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        insert();
    }//GEN-LAST:event_btnThemActionPerformed

    private void rdoTatCaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rdoTatCaActionPerformed
        loadtblHVTKH();
    }//GEN-LAST:event_rdoTatCaActionPerformed

    private void rdoDaNhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rdoDaNhapActionPerformed
        loadtblHVTKH();
    }//GEN-LAST:event_rdoDaNhapActionPerformed

    private void rdoChuaNhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rdoChuaNhapActionPerformed
        loadtblHVTKH();
    }//GEN-LAST:event_rdoChuaNhapActionPerformed

    private void btnCapNhatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCapNhatActionPerformed
        update();
    }//GEN-LAST:event_btnCapNhatActionPerformed

    private void txtTimKiemKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimKiemKeyReleased
        loadtblHVNKH(txtTimKiem.getText().trim());
    }//GEN-LAST:event_txtTimKiemKeyReleased

    private void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimKiemActionPerformed
        loadtblHVNKH(txtTimKiem.getText().trim());
    }//GEN-LAST:event_btnTimKiemActionPerformed

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
            java.util.logging.Logger.getLogger(HocVienJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(HocVienJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(HocVienJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(HocVienJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new HocVienJFrame(1).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCapNhat;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnTimKiem;
    private javax.swing.JPanel pnlBottomL;
    private javax.swing.JPanel pnlBottomR;
    private javax.swing.JPanel pnlHVKH;
    private javax.swing.JPanel pnlHVNKH;
    private javax.swing.JPanel pnlStatus;
    private javax.swing.JPanel pnlTimKiem;
    private javax.swing.JRadioButton rdoChuaNhap;
    private javax.swing.JRadioButton rdoDaNhap;
    private javax.swing.JRadioButton rdoTatCa;
    private javax.swing.JScrollPane scrTbl;
    private javax.swing.JScrollPane scrTbl1;
    private javax.swing.JTable tblHVNKH;
    private javax.swing.JTable tblHVTKH;
    private javax.swing.JTextField txtTimKiem;
    // End of variables declaration//GEN-END:variables
}
