/*
 * Document: Giao diện đăng nhập
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.UI;

import com.polypro.dao.NhanVienDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.model.NhanVien;
import java.awt.event.KeyEvent;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class DangNhapJDialog extends javax.swing.JDialog {

    //tao 2 bien lưu tọa độ con trỏ chuột
    int xMouse;
    int yMouse;

    //tạo biến xác định hiển thị password hay không
    boolean showPass = false;

    //biến lưu Jframe cha của JDialog
    MainJFrame mainJFrame;
    
    public DangNhapJDialog(MainJFrame parent, boolean modal) {
        super(parent, modal);
        mainJFrame = parent;
        initComponents();
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }
            
    //phuong thuc đăng nhập
    private void login() {
        
        if (txtUsername.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập Username", JOptionPane.WARNING_MESSAGE);
            txtUsername.requestFocus();
            return;
        }
        if (txtPassword.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập Password", JOptionPane.WARNING_MESSAGE);
            txtPassword.requestFocus();
            return;
        }
        
        String userName = txtUsername.getText().trim();
        String password = txtPassword.getText().trim();
        NhanVienDAO dao = new NhanVienDAO();
        try {
            NhanVien nhanVien = dao.findById(userName);
            if (nhanVien == null) {
                DialogHelper.alert(this, "Sai tên đăng nhập", JOptionPane.ERROR_MESSAGE);
                txtUsername.requestFocus();
            } else {
                if (!password.equals(nhanVien.getMatKhau())) {
                    DialogHelper.alert(this, "Sai mật khẩu", JOptionPane.ERROR_MESSAGE);
                    txtPassword.requestFocus();
                } else {
                    ShareHelper.USER = nhanVien;//Lưu thông tin nhân viên đang sử dụng phần mềm
                    DialogHelper.alert(this, "Đăng nhập thành công", JOptionPane.INFORMATION_MESSAGE);
                    dispose();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    //Phương thức hủy đăng nhập
    private void cancel(){
        if (mainJFrame.isShowing()) {
            dispose();
        } else {
            System.exit(0);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        pnlTitle = new javax.swing.JPanel();
        lblIcon = new javax.swing.JLabel();
        lblTitle = new javax.swing.JLabel();
        pnlLogin = new javax.swing.JPanel();
        lblUserName = new javax.swing.JLabel();
        lblPassword = new javax.swing.JLabel();
        txtUsername = new javax.swing.JTextField();
        txtPassword = new javax.swing.JPasswordField();
        btnLogin = new javax.swing.JButton();
        btnCancel = new javax.swing.JButton();
        btnDisplayPass = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(500, 320));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        pnlTitle.setBackground(new java.awt.Color(249, 148, 6));
        pnlTitle.setPreferredSize(new java.awt.Dimension(450, 45));
        pnlTitle.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                pnlTitleMouseDragged(evt);
            }
        });
        pnlTitle.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                pnlTitleMousePressed(evt);
            }
        });
        pnlTitle.setLayout(new java.awt.BorderLayout());

        lblIcon.setFont(new java.awt.Font("Tahoma", 1, 30)); // NOI18N
        lblIcon.setForeground(new java.awt.Color(255, 255, 255));
        lblIcon.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblIcon.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/fpt.png"))); // NOI18N
        lblIcon.setHorizontalTextPosition(javax.swing.SwingConstants.RIGHT);
        lblIcon.setMaximumSize(new java.awt.Dimension(60, 43));
        lblIcon.setMinimumSize(new java.awt.Dimension(60, 43));
        lblIcon.setPreferredSize(new java.awt.Dimension(60, 43));
        pnlTitle.add(lblIcon, java.awt.BorderLayout.WEST);

        lblTitle.setFont(new java.awt.Font("Tahoma", 1, 26)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(255, 255, 255));
        lblTitle.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        lblTitle.setText("ĐĂNG NHẬP");
        lblTitle.setHorizontalTextPosition(javax.swing.SwingConstants.RIGHT);
        lblTitle.setMaximumSize(new java.awt.Dimension(350, 43));
        lblTitle.setMinimumSize(new java.awt.Dimension(350, 43));
        lblTitle.setPreferredSize(new java.awt.Dimension(350, 43));
        pnlTitle.add(lblTitle, java.awt.BorderLayout.CENTER);

        getContentPane().add(pnlTitle, java.awt.BorderLayout.NORTH);

        pnlLogin.setBackground(new java.awt.Color(1, 50, 67));
        pnlLogin.setPreferredSize(new java.awt.Dimension(450, 220));
        pnlLogin.setLayout(new java.awt.GridBagLayout());

        lblUserName.setBackground(new java.awt.Color(243, 241, 239));
        lblUserName.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblUserName.setForeground(new java.awt.Color(243, 241, 239));
        lblUserName.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lblUserName.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/user.png"))); // NOI18N
        lblUserName.setText("Tài khoản:");
        lblUserName.setMaximumSize(new java.awt.Dimension(120, 50));
        lblUserName.setMinimumSize(new java.awt.Dimension(120, 50));
        lblUserName.setPreferredSize(new java.awt.Dimension(120, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipady = 30;
        pnlLogin.add(lblUserName, gridBagConstraints);

        lblPassword.setBackground(new java.awt.Color(243, 241, 239));
        lblPassword.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblPassword.setForeground(new java.awt.Color(243, 241, 239));
        lblPassword.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lblPassword.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/pass.png"))); // NOI18N
        lblPassword.setText("Mật khẩu:");
        lblPassword.setMaximumSize(new java.awt.Dimension(120, 50));
        lblPassword.setMinimumSize(new java.awt.Dimension(120, 50));
        lblPassword.setPreferredSize(new java.awt.Dimension(120, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipady = 30;
        pnlLogin.add(lblPassword, gridBagConstraints);

        txtUsername.setBackground(new java.awt.Color(191, 191, 191));
        txtUsername.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtUsername.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        txtUsername.setMinimumSize(new java.awt.Dimension(200, 32));
        txtUsername.setPreferredSize(new java.awt.Dimension(200, 32));
        txtUsername.setRequestFocusEnabled(false);
        txtUsername.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtUsernameKeyPressed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(txtUsername, gridBagConstraints);

        txtPassword.setBackground(new java.awt.Color(191, 191, 191));
        txtPassword.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtPassword.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        txtPassword.setMinimumSize(new java.awt.Dimension(200, 32));
        txtPassword.setPreferredSize(new java.awt.Dimension(200, 32));
        txtPassword.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtPasswordKeyPressed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(txtPassword, gridBagConstraints);

        btnLogin.setBackground(new java.awt.Color(0, 0, 153));
        btnLogin.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btnLogin.setForeground(new java.awt.Color(255, 255, 255));
        btnLogin.setText("Đăng nhập");
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 20;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 90, 0, 0);
        pnlLogin.add(btnLogin, gridBagConstraints);

        btnCancel.setBackground(new java.awt.Color(255, 0, 0));
        btnCancel.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btnCancel.setForeground(new java.awt.Color(255, 255, 255));
        btnCancel.setText("Hủy");
        btnCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 20;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 0, 0, 0);
        pnlLogin.add(btnCancel, gridBagConstraints);

        btnDisplayPass.setBackground(new java.awt.Color(1, 50, 67));
        btnDisplayPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/hide.png"))); // NOI18N
        btnDisplayPass.setBorder(null);
        btnDisplayPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDisplayPassActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(btnDisplayPass, gridBagConstraints);

        getContentPane().add(pnlLogin, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        cancel();
    }//GEN-LAST:event_btnCancelActionPerformed

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
        login();
    }//GEN-LAST:event_btnLoginActionPerformed

    private void btnDisplayPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDisplayPassActionPerformed
        if (txtPassword.getEchoChar() == '*') {
            txtPassword.setEchoChar((char) 0);
        } else {
            txtPassword.setEchoChar('*');
        }
    }//GEN-LAST:event_btnDisplayPassActionPerformed

    private void pnlTitleMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlTitleMousePressed
        //Lấy tọa độ con trỏ chuột khi click vào pnlTitle
        xMouse = evt.getX();
        yMouse = evt.getY();
    }//GEN-LAST:event_pnlTitleMousePressed

    private void pnlTitleMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlTitleMouseDragged
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        //set tọa độ mới cho JDialog khi rê chuột
        setLocation(x - xMouse, y - yMouse);
    }//GEN-LAST:event_pnlTitleMouseDragged

    private void txtUsernameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtUsernameKeyPressed
       if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            btnLogin.doClick();
        }
    }//GEN-LAST:event_txtUsernameKeyPressed

    private void txtPasswordKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPasswordKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            btnLogin.doClick();
        }
    }//GEN-LAST:event_txtPasswordKeyPressed

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        mainJFrame.displayUser();
    }//GEN-LAST:event_formWindowClosed

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
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                DangNhapJDialog dialog = new DangNhapJDialog(new javax.swing.JFrame(), true);
//                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
//                    @Override
//                    public void windowClosing(java.awt.event.WindowEvent e) {
//                        System.exit(0);
//                    }
//                });
//                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancel;
    private javax.swing.JButton btnDisplayPass;
    private javax.swing.JButton btnLogin;
    private javax.swing.JLabel lblIcon;
    private javax.swing.JLabel lblPassword;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JLabel lblUserName;
    private javax.swing.JPanel pnlLogin;
    private javax.swing.JPanel pnlTitle;
    private javax.swing.JPasswordField txtPassword;
    private javax.swing.JTextField txtUsername;
    // End of variables declaration//GEN-END:variables
}
