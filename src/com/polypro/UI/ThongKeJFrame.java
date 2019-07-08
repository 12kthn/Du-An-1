/*
 * Document: Giao diện thống kê
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import com.polypro.dao.KhoaHocDAO;
import com.polypro.dao.ThongKeDAO;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.TableHelper;
import com.polypro.helper.XDate;
import com.polypro.model.KhoaHoc;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author nucle
 */
public class ThongKeJFrame extends javax.swing.JFrame {

    ThongKeDAO tkDAO = new ThongKeDAO();
    KhoaHocDAO khDAO = new KhoaHocDAO();

    public ThongKeJFrame(int tabIndex) {
        initComponents();
        setIconImage(ShareHelper.APP_ICON);
        setLocationRelativeTo(null);
        tabs.setSelectedIndex(tabIndex);
        tabs.setEnabledAt(3, ShareHelper.USER.getVaiTro());
        fillTblNguoiHoc();
        fillCboKhoaHoc();
        fillTblBangDiem();
        fillCboNam();
        fillTblTongHop();
        fillTblDoanhThu();
    }

    //Phuong thuc truyền dữ liệu lên tblNguoiHoc
    private void fillTblNguoiHoc() {
        String header[] = {"Năm", "Số người học", "Ngày đăng ký đầu tiên", "Ngày đăng ký cuối cùng"};
        DefaultTableModel model = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };      

        List<Object[]> list = tkDAO.getNguoiHoc();
        for (Object[] row : list) {
            model.addRow(row);
        }
        tblNguoiHoc.setModel(model);
        TableHelper.formatHeader(tblNguoiHoc);
        TableHelper.formarCloumnSize(tblNguoiHoc, 50, 50, 120);
    }

    //Phuong thuc truyền dữ liệu vào cboKhoaHoc
    private void fillCboKhoaHoc() {
        DefaultComboBoxModel model = (DefaultComboBoxModel) cboKhoaHoc.getModel();
        model.removeAllElements();
        List<KhoaHoc> list = khDAO.select();
        for (KhoaHoc khoaHoc : list) {
            model.addElement(khoaHoc);
        }
        cboKhoaHoc.setSelectedIndex(0);
    }

    //Phuong thuc truyền dữ liệu lên tblBangDiem
    private void fillTblBangDiem() {
        String header[] = {"Mã ngành học", "Họ và tên", "Điểm", "Xếp loại"};
        DefaultTableModel model = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        List<KhoaHoc> listKH = khDAO.select();
        KhoaHoc kh = listKH.get(cboKhoaHoc.getSelectedIndex());
        List<Object[]> list = tkDAO.getBangDiem(kh.getMaKH());
        for (Object[] row : list) {
            model.addRow(row);
        }
        tblBangDiem.setModel(model);
        TableHelper.formatHeader(tblBangDiem);
        TableHelper.formarCloumnSize(tblBangDiem, 50, 150, 10);
    }

    //Phuong thuc truyền dữ liệu vào cboNam
    private void fillCboNam() {
        DefaultComboBoxModel model = (DefaultComboBoxModel) cboNam.getModel();
        model.removeAllElements();
        List<KhoaHoc> list = khDAO.select();
        for (KhoaHoc khoaHoc : list) {
            String nam = XDate.toString(khoaHoc.getNgayKG(), "yyyy");
            if (model.getIndexOf(nam) < 0) {
                cboNam.addItem(nam);
            }
        }
        cboNam.setSelectedIndex(0);
    }

    //Phuong thuc đưa dữ liệu lên tblTongHop
    private void fillTblTongHop() {
        String header[] = {"Chuyên đề", "Tổng số HV", "Cao nhất", "Thấp nhất", "Điểm TB"};
        DefaultTableModel model = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        List<Object[]> list = tkDAO.getDiemTheoChuyenDe();
        for (Object[] row : list) {
            model.addRow(row);
        }
        tblTongHop.setModel(model);
        
        TableHelper.formatHeader(tblTongHop);
        TableHelper.formarCloumnSize(tblTongHop, 180, 10, 10, 10);
    }

    //Phuong thuc truyền dữ liệu lên tblDoanhThu
    private void fillTblDoanhThu() {
        String header[] = {"Chuyên đề", "Số khóa", "Số HV", "Doanh thu", "HP thấp nhất", "HP cao nhất", "HP TB"};
        DefaultTableModel model = new DefaultTableModel(header, 0) {
            //không cho phép sửa dữ liệu trên Jtable
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        List<Object[]> list = tkDAO.getDoanhThu(Integer.parseInt(cboNam.getSelectedItem() + ""));
        for (Object[] row : list) {
            model.addRow(row);
        }
        tblDoanhThu.setModel(model);
        
        TableHelper.formatHeader(tblDoanhThu);
        TableHelper.formarCloumnSize(tblDoanhThu, 180, 40, 40, 50, 70, 70);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTitle = new javax.swing.JLabel();
        tabs = new javax.swing.JTabbedPane();
        pnlNguoiHoc = new javax.swing.JPanel();
        srcTblChuyenDe = new javax.swing.JScrollPane();
        tblNguoiHoc = new javax.swing.JTable();
        pnlBangDiem = new javax.swing.JPanel();
        pnlClassify1 = new javax.swing.JPanel();
        lblKhoaHoc = new javax.swing.JLabel();
        cboKhoaHoc = new javax.swing.JComboBox<>();
        srcTblBangDiem = new javax.swing.JScrollPane();
        tblBangDiem = new javax.swing.JTable();
        pnlKhoaHoc = new javax.swing.JPanel();
        srcTblChuyenDe2 = new javax.swing.JScrollPane();
        tblTongHop = new javax.swing.JTable();
        pnlDoanhThu = new javax.swing.JPanel();
        srcTblChuyenDe4 = new javax.swing.JScrollPane();
        tblDoanhThu = new javax.swing.JTable();
        pnlClassify2 = new javax.swing.JPanel();
        lblNam = new javax.swing.JLabel();
        cboNam = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(800, 600));

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(0, 0, 255));
        lblTitle.setText("  TỔNG HỢP THỐNG KÊ");
        lblTitle.setPreferredSize(new java.awt.Dimension(500, 35));
        getContentPane().add(lblTitle, java.awt.BorderLayout.NORTH);

        tabs.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tabs.setPreferredSize(new java.awt.Dimension(1050, 500));

        pnlNguoiHoc.setPreferredSize(new java.awt.Dimension(760, 520));
        pnlNguoiHoc.setLayout(new java.awt.BorderLayout());

        srcTblChuyenDe.setPreferredSize(new java.awt.Dimension(730, 460));

        tblNguoiHoc.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tblNguoiHoc.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblNguoiHoc.setRowHeight(20);
        srcTblChuyenDe.setViewportView(tblNguoiHoc);

        pnlNguoiHoc.add(srcTblChuyenDe, java.awt.BorderLayout.CENTER);

        tabs.addTab("NGƯỜI HỌC", pnlNguoiHoc);

        pnlBangDiem.setPreferredSize(new java.awt.Dimension(760, 520));
        pnlBangDiem.setLayout(new java.awt.BorderLayout());

        lblKhoaHoc.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lblKhoaHoc.setText("Khóa học:");
        lblKhoaHoc.setPreferredSize(new java.awt.Dimension(100, 30));
        pnlClassify1.add(lblKhoaHoc);

        cboKhoaHoc.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        cboKhoaHoc.setPreferredSize(new java.awt.Dimension(600, 30));
        cboKhoaHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboKhoaHocActionPerformed(evt);
            }
        });
        pnlClassify1.add(cboKhoaHoc);

        pnlBangDiem.add(pnlClassify1, java.awt.BorderLayout.NORTH);

        srcTblBangDiem.setPreferredSize(new java.awt.Dimension(730, 420));

        tblBangDiem.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tblBangDiem.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblBangDiem.setRowHeight(20);
        srcTblBangDiem.setViewportView(tblBangDiem);

        pnlBangDiem.add(srcTblBangDiem, java.awt.BorderLayout.CENTER);

        tabs.addTab("BẢNG ĐIỂM", pnlBangDiem);

        pnlKhoaHoc.setPreferredSize(new java.awt.Dimension(760, 520));
        pnlKhoaHoc.setLayout(new java.awt.BorderLayout());

        srcTblChuyenDe2.setPreferredSize(new java.awt.Dimension(730, 460));

        tblTongHop.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tblTongHop.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblTongHop.setRowHeight(20);
        srcTblChuyenDe2.setViewportView(tblTongHop);

        pnlKhoaHoc.add(srcTblChuyenDe2, java.awt.BorderLayout.CENTER);

        tabs.addTab("TỔNG HỢP ĐIỂM", pnlKhoaHoc);

        pnlDoanhThu.setPreferredSize(new java.awt.Dimension(760, 520));
        pnlDoanhThu.setLayout(new java.awt.BorderLayout());

        srcTblChuyenDe4.setPreferredSize(new java.awt.Dimension(730, 420));

        tblDoanhThu.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tblDoanhThu.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tblDoanhThu.setRowHeight(20);
        srcTblChuyenDe4.setViewportView(tblDoanhThu);

        pnlDoanhThu.add(srcTblChuyenDe4, java.awt.BorderLayout.CENTER);

        lblNam.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lblNam.setText("Năm:");
        lblNam.setPreferredSize(new java.awt.Dimension(50, 30));
        pnlClassify2.add(lblNam);

        cboNam.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        cboNam.setPreferredSize(new java.awt.Dimension(650, 30));
        cboNam.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboNamActionPerformed(evt);
            }
        });
        pnlClassify2.add(cboNam);

        pnlDoanhThu.add(pnlClassify2, java.awt.BorderLayout.NORTH);

        tabs.addTab("DOANH THU", pnlDoanhThu);

        getContentPane().add(tabs, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cboKhoaHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboKhoaHocActionPerformed
        fillTblBangDiem();
    }//GEN-LAST:event_cboKhoaHocActionPerformed

    private void cboNamActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboNamActionPerformed
        fillTblDoanhThu();
    }//GEN-LAST:event_cboNamActionPerformed

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
            java.util.logging.Logger.getLogger(ThongKeJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ThongKeJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ThongKeJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ThongKeJFrame.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ThongKeJFrame(0).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cboKhoaHoc;
    private javax.swing.JComboBox<String> cboNam;
    private javax.swing.JLabel lblKhoaHoc;
    private javax.swing.JLabel lblNam;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JPanel pnlBangDiem;
    private javax.swing.JPanel pnlClassify1;
    private javax.swing.JPanel pnlClassify2;
    private javax.swing.JPanel pnlDoanhThu;
    private javax.swing.JPanel pnlKhoaHoc;
    private javax.swing.JPanel pnlNguoiHoc;
    private javax.swing.JScrollPane srcTblBangDiem;
    private javax.swing.JScrollPane srcTblChuyenDe;
    private javax.swing.JScrollPane srcTblChuyenDe2;
    private javax.swing.JScrollPane srcTblChuyenDe4;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblBangDiem;
    private javax.swing.JTable tblDoanhThu;
    private javax.swing.JTable tblNguoiHoc;
    private javax.swing.JTable tblTongHop;
    // End of variables declaration//GEN-END:variables
}
