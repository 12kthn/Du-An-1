/*
 * Document: Giao diện đổi mật khẩu
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import com.polypro.dao.NhanVienDAO;
import com.polypro.helper.DialogHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.model.NhanVien;
import javax.swing.JOptionPane;

public class DoiMatKhauJDialog extends javax.swing.JDialog {

    //tao 2 bien lưu tọa độ con trỏ chuột
    int xMouse;
    int yMouse;

    //tạo biến xác định hiển thị password hay không
    boolean showPass = false;

    public DoiMatKhauJDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        setLocationRelativeTo(null);
    }

    private boolean checkInput() {
        if (txtOldPass.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập mật khẩu cũ", JOptionPane.WARNING_MESSAGE);
            txtOldPass.requestFocus();
            return false;
        }
        if (txtNewPass.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập mật khẩu", JOptionPane.WARNING_MESSAGE);
            txtNewPass.requestFocus();
            return false;
        }
        if (txtConfirmPass.getText().trim().equals("")) {
            DialogHelper.alert(this, "Vui lòng nhập xác nhận mật khẩu", JOptionPane.WARNING_MESSAGE);
            txtConfirmPass.requestFocus();
            return false;
        }
        if (!txtOldPass.getText().equals(ShareHelper.USER.getMatKhau())) {
            DialogHelper.alert(this, "Mật khẩu cũ không chính xác", JOptionPane.WARNING_MESSAGE);
            txtOldPass.requestFocus();
            return false;
        }
        if (txtNewPass.getText().trim().length() < 6) {
            DialogHelper.alert(this, "Mật khẩu phải có ít nhất 8 ký tự", JOptionPane.WARNING_MESSAGE);
            txtNewPass.requestFocus();
            return false;
        }
        if (!txtNewPass.getText().equals(txtOldPass)) {
            DialogHelper.alert(this, "Mật khẩu mới và xác nhận mật khẩu phải giống nhau", JOptionPane.WARNING_MESSAGE);
            txtConfirmPass.requestFocus();
            return false;
        }
        return true;
    }

    private void changePassword() {
        if (checkInput()) {
            NhanVien model = getModel();
            if (new NhanVienDAO().update(model) != 0) {
                DialogHelper.alert(this, "Đổi mật khẩu thành công!", JOptionPane.INFORMATION_MESSAGE);
                dispose();
            } else {
                DialogHelper.alert(this, "Có lỗi xảy ra", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    private NhanVien getModel() {
        NhanVien model = ShareHelper.USER;
        model.setMatKhau(txtNewPass.getText());
        return model;
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        pnlTitle = new javax.swing.JPanel();
        lblIcon = new javax.swing.JLabel();
        lblTitle = new javax.swing.JLabel();
        pnlLogin = new javax.swing.JPanel();
        lblOldPass = new javax.swing.JLabel();
        lblConfirmNewPass = new javax.swing.JLabel();
        txtNewPass = new javax.swing.JPasswordField();
        btnConfirm = new javax.swing.JButton();
        btnCancel = new javax.swing.JButton();
        btnDisplayOldPass = new javax.swing.JButton();
        lblNewPass = new javax.swing.JLabel();
        txtOldPass = new javax.swing.JPasswordField();
        btnDisplayConfirmNewPass = new javax.swing.JButton();
        btnDisplayNewPass = new javax.swing.JButton();
        txtConfirmPass = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(629, 420));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(629, 420));
        setResizable(false);

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
        lblTitle.setText("ĐỔI MẬT KHẨU");
        lblTitle.setToolTipText("");
        lblTitle.setHorizontalTextPosition(javax.swing.SwingConstants.RIGHT);
        lblTitle.setMaximumSize(new java.awt.Dimension(350, 43));
        lblTitle.setMinimumSize(new java.awt.Dimension(350, 43));
        lblTitle.setPreferredSize(new java.awt.Dimension(350, 43));
        pnlTitle.add(lblTitle, java.awt.BorderLayout.CENTER);

        getContentPane().add(pnlTitle, java.awt.BorderLayout.NORTH);

        pnlLogin.setBackground(new java.awt.Color(1, 50, 67));
        pnlLogin.setPreferredSize(new java.awt.Dimension(450, 220));
        pnlLogin.setLayout(new java.awt.GridBagLayout());

        lblOldPass.setBackground(new java.awt.Color(243, 241, 239));
        lblOldPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblOldPass.setForeground(new java.awt.Color(243, 241, 239));
        lblOldPass.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lblOldPass.setText("Mật khẩu cũ:");
        lblOldPass.setMaximumSize(new java.awt.Dimension(200, 50));
        lblOldPass.setMinimumSize(new java.awt.Dimension(200, 50));
        lblOldPass.setPreferredSize(new java.awt.Dimension(200, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipady = 30;
        pnlLogin.add(lblOldPass, gridBagConstraints);

        lblConfirmNewPass.setBackground(new java.awt.Color(243, 241, 239));
        lblConfirmNewPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblConfirmNewPass.setForeground(new java.awt.Color(243, 241, 239));
        lblConfirmNewPass.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lblConfirmNewPass.setText("Xác nhận mật khẩu mới:");
        lblConfirmNewPass.setMaximumSize(new java.awt.Dimension(200, 50));
        lblConfirmNewPass.setMinimumSize(new java.awt.Dimension(200, 50));
        lblConfirmNewPass.setPreferredSize(new java.awt.Dimension(200, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipady = 30;
        pnlLogin.add(lblConfirmNewPass, gridBagConstraints);

        txtNewPass.setBackground(new java.awt.Color(191, 191, 191));
        txtNewPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtNewPass.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        txtNewPass.setMinimumSize(new java.awt.Dimension(220, 32));
        txtNewPass.setPreferredSize(new java.awt.Dimension(220, 32));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(txtNewPass, gridBagConstraints);

        btnConfirm.setBackground(new java.awt.Color(0, 0, 153));
        btnConfirm.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btnConfirm.setForeground(new java.awt.Color(255, 255, 255));
        btnConfirm.setText("Xác nhận");
        btnConfirm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConfirmActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 20;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 160, 0, 0);
        pnlLogin.add(btnConfirm, gridBagConstraints);

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
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 20;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 0, 0, 70);
        pnlLogin.add(btnCancel, gridBagConstraints);

        btnDisplayOldPass.setBackground(new java.awt.Color(1, 50, 67));
        btnDisplayOldPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/hide.png"))); // NOI18N
        btnDisplayOldPass.setBorder(null);
        btnDisplayOldPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDisplayOldPassActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(btnDisplayOldPass, gridBagConstraints);

        lblNewPass.setBackground(new java.awt.Color(243, 241, 239));
        lblNewPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblNewPass.setForeground(new java.awt.Color(243, 241, 239));
        lblNewPass.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lblNewPass.setText("Mật khẩu mới:");
        lblNewPass.setMaximumSize(new java.awt.Dimension(200, 50));
        lblNewPass.setMinimumSize(new java.awt.Dimension(200, 50));
        lblNewPass.setPreferredSize(new java.awt.Dimension(200, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipady = 30;
        pnlLogin.add(lblNewPass, gridBagConstraints);

        txtOldPass.setBackground(new java.awt.Color(191, 191, 191));
        txtOldPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtOldPass.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        txtOldPass.setMinimumSize(new java.awt.Dimension(220, 32));
        txtOldPass.setPreferredSize(new java.awt.Dimension(220, 32));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(txtOldPass, gridBagConstraints);

        btnDisplayConfirmNewPass.setBackground(new java.awt.Color(1, 50, 67));
        btnDisplayConfirmNewPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/hide.png"))); // NOI18N
        btnDisplayConfirmNewPass.setBorder(null);
        btnDisplayConfirmNewPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDisplayConfirmNewPassActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(btnDisplayConfirmNewPass, gridBagConstraints);

        btnDisplayNewPass.setBackground(new java.awt.Color(1, 50, 67));
        btnDisplayNewPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/hide.png"))); // NOI18N
        btnDisplayNewPass.setBorder(null);
        btnDisplayNewPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDisplayNewPassActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(btnDisplayNewPass, gridBagConstraints);

        txtConfirmPass.setBackground(new java.awt.Color(191, 191, 191));
        txtConfirmPass.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtConfirmPass.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        txtConfirmPass.setMinimumSize(new java.awt.Dimension(220, 32));
        txtConfirmPass.setPreferredSize(new java.awt.Dimension(220, 32));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 20;
        gridBagConstraints.ipady = 10;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        pnlLogin.add(txtConfirmPass, gridBagConstraints);

        getContentPane().add(pnlLogin, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void pnlTitleMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlTitleMouseDragged
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        //set tọa độ mới cho JDialog khi rê chuột
        setLocation(x - xMouse, y - yMouse);
    }//GEN-LAST:event_pnlTitleMouseDragged

    private void pnlTitleMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlTitleMousePressed
        //Lấy tọa độ con trỏ chuột khi click vào pnlTitle
        xMouse = evt.getX();
        yMouse = evt.getY();
    }//GEN-LAST:event_pnlTitleMousePressed

    private void btnConfirmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConfirmActionPerformed
        changePassword();
    }//GEN-LAST:event_btnConfirmActionPerformed

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        dispose();
    }//GEN-LAST:event_btnCancelActionPerformed

    private void btnDisplayOldPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDisplayOldPassActionPerformed
        if (txtOldPass.getEchoChar() == '*') {
            txtOldPass.setEchoChar((char) 0);
        } else {
            txtOldPass.setEchoChar('*');
        }
    }//GEN-LAST:event_btnDisplayOldPassActionPerformed

    private void btnDisplayConfirmNewPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDisplayConfirmNewPassActionPerformed
        if (txtConfirmPass.getEchoChar() == '*') {
            txtConfirmPass.setEchoChar((char) 0);
        } else {
            txtConfirmPass.setEchoChar('*');
        }
    }//GEN-LAST:event_btnDisplayConfirmNewPassActionPerformed

    private void btnDisplayNewPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDisplayNewPassActionPerformed
        if (txtNewPass.getEchoChar() == '*') {
            txtNewPass.setEchoChar((char) 0);
        } else {
            txtNewPass.setEchoChar('*');
        }
    }//GEN-LAST:event_btnDisplayNewPassActionPerformed

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
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                DoiMatKhauJDialog dialog = new DoiMatKhauJDialog(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancel;
    private javax.swing.JButton btnConfirm;
    private javax.swing.JButton btnDisplayConfirmNewPass;
    private javax.swing.JButton btnDisplayNewPass;
    private javax.swing.JButton btnDisplayOldPass;
    private javax.swing.JLabel lblConfirmNewPass;
    private javax.swing.JLabel lblIcon;
    private javax.swing.JLabel lblNewPass;
    private javax.swing.JLabel lblOldPass;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JPanel pnlLogin;
    private javax.swing.JPanel pnlTitle;
    private javax.swing.JPasswordField txtConfirmPass;
    private javax.swing.JPasswordField txtNewPass;
    private javax.swing.JPasswordField txtOldPass;
    // End of variables declaration//GEN-END:variables
}
