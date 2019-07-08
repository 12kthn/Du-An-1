//15-05-2019
//Pham Duy Bien - PS08445
//Giao dien chinh cua chuong trinh
package com.polypro.UI;

import com.polypro.helper.DialogHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.XDate;
import com.polypro.model.NhanVien;
import java.awt.Desktop;
import java.awt.Image;
import java.io.File;
import java.io.IOException;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

public class MainJFrame extends javax.swing.JFrame implements Runnable {

    public MainJFrame() {
        init();
    }

    //gọi các phương thức khi khởi tạo
    private void init(){
        new ChaoJDialog(this, true).setVisible(true);
        new DangNhapJDialog(this, true).setVisible(true);
        if (ShareHelper.USER == null) {
            System.exit(0);
        }
        initComponents();
        setLocationRelativeTo(null);
        displayUser();
        displayTime();
        fitLogo();
        setIconImage(ShareHelper.APP_ICON);
    }
    
    //Phuong thuc hien thi thong tin nguoi dung
    public void displayUser() {
        NhanVien nhanVien = ShareHelper.USER;
        if (nhanVien == null) {
            ShareHelper.setIcon(lblUser, null);
            txtMaNV.setText("1");
            txtTenNV.setText("1");
        } else {
            if (nhanVien.getVaiTro()) {
                ShareHelper.setIcon(lblUser, new File("logos\\admin.png"));
            } else {
                ShareHelper.setIcon(lblUser, new File("logos\\user.png"));
            }
            txtMaNV.setText(nhanVien.getMaNV());
            txtTenNV.setText(nhanVien.getHoTen());
        }
    }

    //Phuong thuc chinh sua kich thuoc logo khop voi chieu dai lblLogo
    private void fitLogo() {
        ImageIcon icon = (ImageIcon) lblLogo.getIcon();
        Image image = icon.getImage();
        ImageIcon icon1 = new ImageIcon(image.getScaledInstance(lblLogo.getWidth() - 500, (lblLogo.getWidth() - 500) * 215 / 567, image.SCALE_SMOOTH));
        lblLogo.setIcon(icon1);
    }

    //Ghi đè phuong thuc run của Runnable
    @Override
    public void run() {
        while (true) {
            try {
                lblTime.setText(XDate.toString(null, "hh:mm:ss aa EEE, dd/MM/yyyy"));
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                break;
            }
        }
    }

    //Phuong thuc hiển thị thời gian hiện tại
    private void displayTime() {
        Thread time = new Thread(this);
        time.start();
    }

    //Phuong thuc mở form Đăng nhập
    private void openDangNhap() {
        new DangNhapJDialog(this, true).setVisible(true);
    }

    //Phuong thuc mở form Đổi mật khẩu
    private void openDoiMatKhau(){
        new DoiMatKhauJDialog(this, true).setVisible(true);
    }

    //Phuong thuc đăng xuất
    private void logoff() {
        ShareHelper.logoff();
        displayUser();
    }

    //Phuong thuc mở form Quản lý thống kê
    private void openThongKe(int index) {
        if (ShareHelper.authenticated()) {
            if (index == 3) {
                if (!ShareHelper.isAdmin()) {
                    DialogHelper.alert(this, "Chỉ có quản trị viên mới thực hiện được chức năng này", JOptionPane.WARNING_MESSAGE);
                    return;
                }
            }
            new ThongKeJFrame(index).setVisible(true);
        }
    }

    //Phuong thuc mở form Quản lý nhân viên
    private void openNhanVien() {
        if (ShareHelper.isAdmin()) {
            new NhanVienJFrame().setVisible(true);
        } else {
            DialogHelper.alert(this, "Chỉ có quản trị viên mới thực hiện được chức năng này", JOptionPane.WARNING_MESSAGE);
        }
    }

    //Phuong thuc mở form Quản lý khóa học
    private void openKhoaHoc() {
        if (ShareHelper.authenticated()) {
            new KhoaHocJFrame().setVisible(true);
        } else {
            DialogHelper.alert(this, "Vui lòng đăng nhập!", JOptionPane.WARNING_MESSAGE);
        }
    }

    //Phuong thuc mở form Quản lý chuyên đề
    private void openChuyenDe() {
        if (ShareHelper.authenticated()) {
            new ChuyenDeJFrame().setVisible(true);
        } else {
            DialogHelper.alert(this, "Vui lòng đăng nhập!", JOptionPane.WARNING_MESSAGE);
        }
    }

    //Phuong thuc mở form Quản lý người học
    private void openNguoiHoc() {
        if (ShareHelper.authenticated()) {
            new NguoiHocJFrame().setVisible(true);
        } else {
            DialogHelper.alert(this, "Vui lòng đăng nhập!", JOptionPane.WARNING_MESSAGE);
        }
    }

    //Phuong thuc mở form Giới thiệu
    private void openGioiThieu() {
        new AboutJDialog(this, true).setVisible(true);
    }

    //Phuong thuc mở Website hướng dẫn
    private void openWebsite() {
        try {
            Desktop.getDesktop().open(new File("help\\index.html"));
        } catch (IOException ex) {
            DialogHelper.alert(this, "Không tìm thấy file hướng dẫn!", JOptionPane.ERROR_MESSAGE);
        }
    }

    //Phuong thuc thoat chương trình
    private void closeProgram() {
        if (DialogHelper.confirm(this, "Bạn có muốn thoát khỏi ứng dụng không?")) {
            System.exit(0);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jMenuItem8 = new javax.swing.JMenuItem();
        jToolBar = new javax.swing.JToolBar();
        btnDangXuat = new javax.swing.JButton();
        btnKetThuc = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JToolBar.Separator();
        btnChuyenDe = new javax.swing.JButton();
        btnNguoiHoc = new javax.swing.JButton();
        btnKhoaHoc = new javax.swing.JButton();
        jSeparator2 = new javax.swing.JToolBar.Separator();
        btnHuongDan = new javax.swing.JButton();
        pnlStatusbar = new javax.swing.JPanel();
        lblTime = new javax.swing.JLabel();
        lblStatus = new javax.swing.JLabel();
        pnlCenter = new javax.swing.JPanel();
        pnlUser = new javax.swing.JPanel();
        lblUser = new javax.swing.JLabel();
        lblMaNV = new javax.swing.JLabel();
        lblTenNV = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtTenNV = new javax.swing.JTextField();
        lblLogo = new javax.swing.JLabel();
        jMenuBar = new javax.swing.JMenuBar();
        mnuHeThong = new javax.swing.JMenu();
        mniDangNhap = new javax.swing.JMenuItem();
        mniDangXuat = new javax.swing.JMenuItem();
        jSeparator3 = new javax.swing.JPopupMenu.Separator();
        mniDoiMatKhau = new javax.swing.JMenuItem();
        jSeparator4 = new javax.swing.JPopupMenu.Separator();
        mniKetThuc = new javax.swing.JMenuItem();
        mnuQuanLy = new javax.swing.JMenu();
        mniNguoiHoc = new javax.swing.JMenuItem();
        mniChuyenDe = new javax.swing.JMenuItem();
        mniKhoaHoc = new javax.swing.JMenuItem();
        mniQuanLyNhanVien = new javax.swing.JMenuItem();
        mnuThongKe = new javax.swing.JMenu();
        mniNguoiHocTungNam = new javax.swing.JMenuItem();
        jSeparator5 = new javax.swing.JPopupMenu.Separator();
        mniBangDiemKhoa = new javax.swing.JMenuItem();
        mniDiemTungKhoaHoc = new javax.swing.JMenuItem();
        jSeparator6 = new javax.swing.JPopupMenu.Separator();
        mniDoanhThuTungChuyenDe = new javax.swing.JMenuItem();
        mnuTroGiup = new javax.swing.JMenu();
        mniHuongDan = new javax.swing.JMenuItem();
        jSeparator7 = new javax.swing.JPopupMenu.Separator();
        mniGioiThieu = new javax.swing.JMenuItem();

        jMenuItem8.setText("jMenuItem8");

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("HỆ THỐNG QUẢN LÝ ĐÀO TẠO");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jToolBar.setRollover(true);
        jToolBar.setPreferredSize(new java.awt.Dimension(1000, 55));

        btnDangXuat.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Log out.png"))); // NOI18N
        btnDangXuat.setText("Đăng xuất");
        btnDangXuat.setFocusable(false);
        btnDangXuat.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnDangXuat.setMaximumSize(new java.awt.Dimension(100, 53));
        btnDangXuat.setMinimumSize(new java.awt.Dimension(90, 53));
        btnDangXuat.setPreferredSize(new java.awt.Dimension(100, 64));
        btnDangXuat.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnDangXuat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDangXuatActionPerformed(evt);
            }
        });
        jToolBar.add(btnDangXuat);

        btnKetThuc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Stop.png"))); // NOI18N
        btnKetThuc.setText("Kết thúc");
        btnKetThuc.setToolTipText("");
        btnKetThuc.setFocusable(false);
        btnKetThuc.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnKetThuc.setMaximumSize(new java.awt.Dimension(100, 53));
        btnKetThuc.setPreferredSize(new java.awt.Dimension(100, 64));
        btnKetThuc.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnKetThuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKetThucActionPerformed(evt);
            }
        });
        jToolBar.add(btnKetThuc);
        jToolBar.add(jSeparator1);

        btnChuyenDe.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Lists.png"))); // NOI18N
        btnChuyenDe.setText("Chuyên đề");
        btnChuyenDe.setFocusable(false);
        btnChuyenDe.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnChuyenDe.setMaximumSize(new java.awt.Dimension(100, 51));
        btnChuyenDe.setPreferredSize(new java.awt.Dimension(100, 64));
        btnChuyenDe.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnChuyenDe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnChuyenDeActionPerformed(evt);
            }
        });
        jToolBar.add(btnChuyenDe);

        btnNguoiHoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Conference.png"))); // NOI18N
        btnNguoiHoc.setText("Người học");
        btnNguoiHoc.setFocusable(false);
        btnNguoiHoc.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnNguoiHoc.setMaximumSize(new java.awt.Dimension(100, 51));
        btnNguoiHoc.setMinimumSize(new java.awt.Dimension(65, 51));
        btnNguoiHoc.setPreferredSize(new java.awt.Dimension(100, 64));
        btnNguoiHoc.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnNguoiHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNguoiHocActionPerformed(evt);
            }
        });
        jToolBar.add(btnNguoiHoc);

        btnKhoaHoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Certificate.png"))); // NOI18N
        btnKhoaHoc.setText("Khóa học");
        btnKhoaHoc.setFocusable(false);
        btnKhoaHoc.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnKhoaHoc.setMaximumSize(new java.awt.Dimension(100, 51));
        btnKhoaHoc.setPreferredSize(new java.awt.Dimension(100, 64));
        btnKhoaHoc.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnKhoaHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKhoaHocActionPerformed(evt);
            }
        });
        jToolBar.add(btnKhoaHoc);
        jToolBar.add(jSeparator2);

        btnHuongDan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Globe.png"))); // NOI18N
        btnHuongDan.setText("Hướng dẫn");
        btnHuongDan.setFocusable(false);
        btnHuongDan.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnHuongDan.setMaximumSize(new java.awt.Dimension(100, 51));
        btnHuongDan.setPreferredSize(new java.awt.Dimension(100, 64));
        btnHuongDan.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnHuongDan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHuongDanActionPerformed(evt);
            }
        });
        jToolBar.add(btnHuongDan);

        getContentPane().add(jToolBar, java.awt.BorderLayout.NORTH);

        pnlStatusbar.setPreferredSize(new java.awt.Dimension(1200, 40));
        pnlStatusbar.setLayout(new java.awt.BorderLayout());

        lblTime.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblTime.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Clock.png"))); // NOI18N
        lblTime.setToolTipText("");
        lblTime.setPreferredSize(new java.awt.Dimension(200, 40));
        pnlStatusbar.add(lblTime, java.awt.BorderLayout.EAST);

        lblStatus.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblStatus.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Info.png"))); // NOI18N
        lblStatus.setText("Hệ quản lý đào tạo");
        lblStatus.setPreferredSize(new java.awt.Dimension(150, 40));
        pnlStatusbar.add(lblStatus, java.awt.BorderLayout.WEST);

        getContentPane().add(pnlStatusbar, java.awt.BorderLayout.PAGE_END);

        pnlCenter.setLayout(new java.awt.GridBagLayout());

        pnlUser.setMinimumSize(new java.awt.Dimension(100, 100));
        pnlUser.setPreferredSize(new java.awt.Dimension(160, 220));
        pnlUser.setLayout(new java.awt.GridBagLayout());

        lblUser.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        lblUser.setPreferredSize(new java.awt.Dimension(100, 100));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 10, 0);
        pnlUser.add(lblUser, gridBagConstraints);

        lblMaNV.setText("Mã tài khoản:");
        lblMaNV.setPreferredSize(new java.awt.Dimension(150, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        pnlUser.add(lblMaNV, gridBagConstraints);

        lblTenNV.setText("Họ tên:");
        lblTenNV.setPreferredSize(new java.awt.Dimension(150, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        pnlUser.add(lblTenNV, gridBagConstraints);

        txtMaNV.setEditable(false);
        txtMaNV.setPreferredSize(new java.awt.Dimension(150, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        pnlUser.add(txtMaNV, gridBagConstraints);

        txtTenNV.setEditable(false);
        txtTenNV.setPreferredSize(new java.awt.Dimension(150, 25));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        pnlUser.add(txtTenNV, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHEAST;
        pnlCenter.add(pnlUser, gridBagConstraints);

        lblLogo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Poly.png"))); // NOI18N
        lblLogo.setPreferredSize(new java.awt.Dimension(1200, 606));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        pnlCenter.add(lblLogo, gridBagConstraints);

        getContentPane().add(pnlCenter, java.awt.BorderLayout.CENTER);

        mnuHeThong.setText("Hệ thống");
        mnuHeThong.setMargin(new java.awt.Insets(0, 5, 0, 5));

        mniDangNhap.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_L, java.awt.event.InputEvent.CTRL_MASK));
        mniDangNhap.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Login.png"))); // NOI18N
        mniDangNhap.setText("Đăng nhập");
        mniDangNhap.setPreferredSize(new java.awt.Dimension(169, 32));
        mniDangNhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniDangNhapActionPerformed(evt);
            }
        });
        mnuHeThong.add(mniDangNhap);

        mniDangXuat.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_O, java.awt.event.InputEvent.CTRL_MASK));
        mniDangXuat.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Log out.png"))); // NOI18N
        mniDangXuat.setText("Đăng xuất");
        mniDangXuat.setPreferredSize(new java.awt.Dimension(173, 32));
        mniDangXuat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniDangXuatActionPerformed(evt);
            }
        });
        mnuHeThong.add(mniDangXuat);
        mnuHeThong.add(jSeparator3);

        mniDoiMatKhau.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Refresh.png"))); // NOI18N
        mniDoiMatKhau.setText("Đổi mật khẩu");
        mniDoiMatKhau.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniDoiMatKhauActionPerformed(evt);
            }
        });
        mnuHeThong.add(mniDoiMatKhau);
        mnuHeThong.add(jSeparator4);

        mniKetThuc.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_F4, java.awt.event.InputEvent.ALT_MASK));
        mniKetThuc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Stop.png"))); // NOI18N
        mniKetThuc.setText("Kết thúc");
        mniKetThuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniKetThucActionPerformed(evt);
            }
        });
        mnuHeThong.add(mniKetThuc);

        jMenuBar.add(mnuHeThong);

        mnuQuanLy.setText("Quản lý");
        mnuQuanLy.setMargin(new java.awt.Insets(0, 5, 0, 5));

        mniNguoiHoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Conference.png"))); // NOI18N
        mniNguoiHoc.setText("Người học");
        mniNguoiHoc.setPreferredSize(new java.awt.Dimension(121, 32));
        mniNguoiHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniNguoiHocActionPerformed(evt);
            }
        });
        mnuQuanLy.add(mniNguoiHoc);

        mniChuyenDe.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Lists.png"))); // NOI18N
        mniChuyenDe.setText("Chuyên đề");
        mniChuyenDe.setPreferredSize(new java.awt.Dimension(121, 32));
        mniChuyenDe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniChuyenDeActionPerformed(evt);
            }
        });
        mnuQuanLy.add(mniChuyenDe);

        mniKhoaHoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Certificate.png"))); // NOI18N
        mniKhoaHoc.setText("Khóa học");
        mniKhoaHoc.setPreferredSize(new java.awt.Dimension(121, 32));
        mniKhoaHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniKhoaHocActionPerformed(evt);
            }
        });
        mnuQuanLy.add(mniKhoaHoc);

        mniQuanLyNhanVien.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/User group.png"))); // NOI18N
        mniQuanLyNhanVien.setText("Nhân viên");
        mniQuanLyNhanVien.setPreferredSize(new java.awt.Dimension(121, 32));
        mniQuanLyNhanVien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniQuanLyNhanVienActionPerformed(evt);
            }
        });
        mnuQuanLy.add(mniQuanLyNhanVien);

        jMenuBar.add(mnuQuanLy);

        mnuThongKe.setText("Thống kê");
        mnuThongKe.setMargin(new java.awt.Insets(0, 5, 0, 5));

        mniNguoiHocTungNam.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Clien list.png"))); // NOI18N
        mniNguoiHocTungNam.setText("Người học từng năm");
        mniNguoiHocTungNam.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniNguoiHocTungNamActionPerformed(evt);
            }
        });
        mnuThongKe.add(mniNguoiHocTungNam);
        mnuThongKe.add(jSeparator5);

        mniBangDiemKhoa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Card file.png"))); // NOI18N
        mniBangDiemKhoa.setText("Bảng điểm khóa");
        mniBangDiemKhoa.setPreferredSize(new java.awt.Dimension(189, 32));
        mniBangDiemKhoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniBangDiemKhoaActionPerformed(evt);
            }
        });
        mnuThongKe.add(mniBangDiemKhoa);

        mniDiemTungKhoaHoc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Bar chart.png"))); // NOI18N
        mniDiemTungKhoaHoc.setText("Điểm từng khóa học");
        mniDiemTungKhoaHoc.setPreferredSize(new java.awt.Dimension(189, 32));
        mniDiemTungKhoaHoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniDiemTungKhoaHocActionPerformed(evt);
            }
        });
        mnuThongKe.add(mniDiemTungKhoaHoc);
        mnuThongKe.add(jSeparator6);

        mniDoanhThuTungChuyenDe.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Dollar.png"))); // NOI18N
        mniDoanhThuTungChuyenDe.setText("Doanh thu từng chuyên đề");
        mniDoanhThuTungChuyenDe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniDoanhThuTungChuyenDeActionPerformed(evt);
            }
        });
        mnuThongKe.add(mniDoanhThuTungChuyenDe);

        jMenuBar.add(mnuThongKe);

        mnuTroGiup.setText("Trợ giúp");
        mnuTroGiup.setMargin(new java.awt.Insets(0, 5, 0, 5));

        mniHuongDan.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_F1, 0));
        mniHuongDan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Globe.png"))); // NOI18N
        mniHuongDan.setText("Hướng dẫn sử dụng");
        mniHuongDan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniHuongDanActionPerformed(evt);
            }
        });
        mnuTroGiup.add(mniHuongDan);
        mnuTroGiup.add(jSeparator7);

        mniGioiThieu.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/polypro/icons/Brick house.png"))); // NOI18N
        mniGioiThieu.setText("Giới thiệu sản phẩm");
        mniGioiThieu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniGioiThieuActionPerformed(evt);
            }
        });
        mnuTroGiup.add(mniGioiThieu);

        jMenuBar.add(mnuTroGiup);

        setJMenuBar(jMenuBar);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void mniGioiThieuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniGioiThieuActionPerformed
        openGioiThieu();
    }//GEN-LAST:event_mniGioiThieuActionPerformed

    private void btnChuyenDeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnChuyenDeActionPerformed
        openChuyenDe();
    }//GEN-LAST:event_btnChuyenDeActionPerformed

    private void mniChuyenDeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniChuyenDeActionPerformed
        openChuyenDe();
    }//GEN-LAST:event_mniChuyenDeActionPerformed

    private void mniNguoiHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniNguoiHocActionPerformed
        openNguoiHoc();
    }//GEN-LAST:event_mniNguoiHocActionPerformed

    private void btnNguoiHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNguoiHocActionPerformed
        openNguoiHoc();
    }//GEN-LAST:event_btnNguoiHocActionPerformed

    private void btnKhoaHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKhoaHocActionPerformed
        openKhoaHoc();
    }//GEN-LAST:event_btnKhoaHocActionPerformed

    private void mniKhoaHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniKhoaHocActionPerformed
        openKhoaHoc();
    }//GEN-LAST:event_mniKhoaHocActionPerformed

    private void btnDangXuatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDangXuatActionPerformed
        logoff();
    }//GEN-LAST:event_btnDangXuatActionPerformed

    private void mniDangXuatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniDangXuatActionPerformed
        logoff();
    }//GEN-LAST:event_mniDangXuatActionPerformed

    private void btnKetThucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKetThucActionPerformed
        closeProgram();
    }//GEN-LAST:event_btnKetThucActionPerformed

    private void mniKetThucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniKetThucActionPerformed
        closeProgram();
    }//GEN-LAST:event_mniKetThucActionPerformed

    private void mniQuanLyNhanVienActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniQuanLyNhanVienActionPerformed
        openNhanVien();
    }//GEN-LAST:event_mniQuanLyNhanVienActionPerformed

    private void mniDangNhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniDangNhapActionPerformed
        openDangNhap();
    }//GEN-LAST:event_mniDangNhapActionPerformed

    private void btnHuongDanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHuongDanActionPerformed
        openWebsite();
    }//GEN-LAST:event_btnHuongDanActionPerformed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        closeProgram();
    }//GEN-LAST:event_formWindowClosing

    private void mniNguoiHocTungNamActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniNguoiHocTungNamActionPerformed
        openThongKe(0);
    }//GEN-LAST:event_mniNguoiHocTungNamActionPerformed

    private void mniBangDiemKhoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniBangDiemKhoaActionPerformed
        openThongKe(1);
    }//GEN-LAST:event_mniBangDiemKhoaActionPerformed

    private void mniDiemTungKhoaHocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniDiemTungKhoaHocActionPerformed
        openThongKe(2);
    }//GEN-LAST:event_mniDiemTungKhoaHocActionPerformed

    private void mniDoanhThuTungChuyenDeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniDoanhThuTungChuyenDeActionPerformed
        openThongKe(3);
    }//GEN-LAST:event_mniDoanhThuTungChuyenDeActionPerformed

    private void mniHuongDanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniHuongDanActionPerformed
        openWebsite();
    }//GEN-LAST:event_mniHuongDanActionPerformed

    private void mniDoiMatKhauActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniDoiMatKhauActionPerformed
        openDoiMatKhau();
    }//GEN-LAST:event_mniDoiMatKhauActionPerformed

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
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new MainJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnChuyenDe;
    private javax.swing.JButton btnDangXuat;
    private javax.swing.JButton btnHuongDan;
    private javax.swing.JButton btnKetThuc;
    private javax.swing.JButton btnKhoaHoc;
    private javax.swing.JButton btnNguoiHoc;
    private javax.swing.JMenuBar jMenuBar;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JToolBar.Separator jSeparator1;
    private javax.swing.JToolBar.Separator jSeparator2;
    private javax.swing.JPopupMenu.Separator jSeparator3;
    private javax.swing.JPopupMenu.Separator jSeparator4;
    private javax.swing.JPopupMenu.Separator jSeparator5;
    private javax.swing.JPopupMenu.Separator jSeparator6;
    private javax.swing.JPopupMenu.Separator jSeparator7;
    private javax.swing.JToolBar jToolBar;
    private javax.swing.JLabel lblLogo;
    private javax.swing.JLabel lblMaNV;
    private javax.swing.JLabel lblStatus;
    private javax.swing.JLabel lblTenNV;
    private javax.swing.JLabel lblTime;
    private javax.swing.JLabel lblUser;
    private javax.swing.JMenuItem mniBangDiemKhoa;
    private javax.swing.JMenuItem mniChuyenDe;
    private javax.swing.JMenuItem mniDangNhap;
    private javax.swing.JMenuItem mniDangXuat;
    private javax.swing.JMenuItem mniDiemTungKhoaHoc;
    private javax.swing.JMenuItem mniDoanhThuTungChuyenDe;
    private javax.swing.JMenuItem mniDoiMatKhau;
    private javax.swing.JMenuItem mniGioiThieu;
    private javax.swing.JMenuItem mniHuongDan;
    private javax.swing.JMenuItem mniKetThuc;
    private javax.swing.JMenuItem mniKhoaHoc;
    private javax.swing.JMenuItem mniNguoiHoc;
    private javax.swing.JMenuItem mniNguoiHocTungNam;
    private javax.swing.JMenuItem mniQuanLyNhanVien;
    private javax.swing.JMenu mnuHeThong;
    private javax.swing.JMenu mnuQuanLy;
    private javax.swing.JMenu mnuThongKe;
    private javax.swing.JMenu mnuTroGiup;
    private javax.swing.JPanel pnlCenter;
    private javax.swing.JPanel pnlStatusbar;
    private javax.swing.JPanel pnlUser;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JTextField txtTenNV;
    // End of variables declaration//GEN-END:variables
}
