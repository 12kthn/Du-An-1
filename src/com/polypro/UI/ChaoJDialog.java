/*
 * Document: Giao diện chào
 * Create on: 18/05/2019
 * Author: Pham Duy Bien - PS08445
 */
package com.polypro.UI;

import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.Timer;

public class ChaoJDialog extends javax.swing.JDialog {

    Timer timer;//gọi lớp Timer chạy progressbar
    ActionListener a;//sự kiện cho timer

    public ChaoJDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLogo();
        setLoading();
        timer = new Timer(5, a);
        timer.start();
    }

    //set hình nền cho loading
    private void setLogo() {
        ImageIcon icon = (ImageIcon) lblLogo.getIcon();
        Image image = icon.getImage();
        ImageIcon icon1 = new ImageIcon(image.getScaledInstance(lblLogo.getWidth(), lblLogo.getHeight(), image.SCALE_SMOOTH));
        lblLogo.setIcon(icon1);
    }

    //setting Loading
    private void setLoading() {
        //set text hiển thị trên form
        lblLoading.setText("Loading");

        a = new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                int value;//biến lưu giá trị % của progressbar
                value = prgLoading.getValue() + 1;
                prgLoading.setValue(value <= 100 ? value : 100);//set giá trị % của Progressbar luôn <= 100

                //Hiển thị Loading sinh động hơn
                if (value % 10 == 0) {
                    if (lblLoading.getText().equals("Loading . . .")) {
                        lblLoading.setText("Loading");
                    } else {
                        lblLoading.setText(lblLoading.getText() + " .");
                    }
                }

                //dừng sự kiện khi progressbar đạt 100%
                if (value == 101) {
                    timer.stop();
                    ChaoJDialog.this.dispose();
                }
            }
        };
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblLogo = new javax.swing.JLabel();
        pnlLoading = new javax.swing.JPanel();
        lblLoading = new javax.swing.JLabel();
        prgLoading = new javax.swing.JProgressBar();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(892, 431));

        lblLogo.setBackground(new java.awt.Color(255, 255, 255));
        lblLogo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Poly.png"))); // NOI18N
        lblLogo.setPreferredSize(new java.awt.Dimension(864, 322));
        getContentPane().add(lblLogo, java.awt.BorderLayout.CENTER);

        pnlLoading.setPreferredSize(new java.awt.Dimension(864, 105));
        pnlLoading.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 0, 0));

        lblLoading.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        lblLoading.setForeground(new java.awt.Color(255, 153, 51));
        lblLoading.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        lblLoading.setToolTipText("");
        lblLoading.setHorizontalTextPosition(javax.swing.SwingConstants.LEFT);
        lblLoading.setPreferredSize(new java.awt.Dimension(140, 30));
        pnlLoading.add(lblLoading);

        prgLoading.setForeground(new java.awt.Color(0, 0, 255));
        prgLoading.setPreferredSize(new java.awt.Dimension(800, 20));
        pnlLoading.add(prgLoading);

        getContentPane().add(pnlLoading, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

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
            java.util.logging.Logger.getLogger(ChaoJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChaoJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChaoJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChaoJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                ChaoJDialog dialog = new ChaoJDialog(new javax.swing.JFrame(), true);
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
    private javax.swing.JLabel lblLoading;
    private javax.swing.JLabel lblLogo;
    private javax.swing.JPanel pnlLoading;
    private javax.swing.JProgressBar prgLoading;
    // End of variables declaration//GEN-END:variables
}
