/*
 * Document: Giao diện giới thiệu sản phẩm
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import java.awt.Image;
import javax.swing.ImageIcon;

public class AboutJDialog extends javax.swing.JDialog {

    public AboutJDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        fitLogo();
        setLocationRelativeTo(null);
        txtAbout.setText("Lời giới thiệu");
   }

    //Method chinh sua kich thuoc logo khop voi chieu dai lblLogo
    private void fitLogo() {
        ImageIcon icon = (ImageIcon) lblLogo.getIcon();
        Image image = icon.getImage();
        ImageIcon icon1 = new ImageIcon(image.getScaledInstance(lblLogo.getWidth(), lblLogo.getWidth() * 215 / 567, image.SCALE_SMOOTH));
        lblLogo.setIcon(icon1);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlBorder = new javax.swing.JPanel();
        lblLogo = new javax.swing.JLabel();
        srcAbout = new javax.swing.JScrollPane();
        txtAbout = new javax.swing.JTextArea();
        btnClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("About");
        setBackground(new java.awt.Color(255, 255, 255));
        setBounds(new java.awt.Rectangle(0, 0, 0, 0));
        setUndecorated(true);
        setResizable(false);

        pnlBorder.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        pnlBorder.setPreferredSize(new java.awt.Dimension(500, 500));
        pnlBorder.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 10, 10));

        lblLogo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Poly.png"))); // NOI18N
        lblLogo.setPreferredSize(new java.awt.Dimension(500, 220));
        pnlBorder.add(lblLogo);

        srcAbout.setPreferredSize(new java.awt.Dimension(460, 215));

        txtAbout.setEditable(false);
        txtAbout.setColumns(20);
        txtAbout.setRows(5);
        srcAbout.setViewportView(txtAbout);

        pnlBorder.add(srcAbout);

        btnClose.setText("Close");
        btnClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCloseActionPerformed(evt);
            }
        });
        pnlBorder.add(btnClose);

        getContentPane().add(pnlBorder, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCloseActionPerformed
        dispose();
    }//GEN-LAST:event_btnCloseActionPerformed

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
            java.util.logging.Logger.getLogger(AboutJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AboutJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AboutJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AboutJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                AboutJDialog dialog = new AboutJDialog(new javax.swing.JFrame(), true);
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
    private javax.swing.JButton btnClose;
    private javax.swing.JLabel lblLogo;
    private javax.swing.JPanel pnlBorder;
    private javax.swing.JScrollPane srcAbout;
    private javax.swing.JTextArea txtAbout;
    // End of variables declaration//GEN-END:variables
}
