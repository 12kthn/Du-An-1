//17/05/2019
//Pham Duy Bien - PS08445
//Lớp tiện ích Jdbc
//Cung cấp phương thức tiện ích quản lý người đăng nhập và làm việc 
//với hình ảnh chia sẻ trong tất cả các form của ứng dụng

package com.polypro.helper;

import com.polypro.model.NhanVien;
import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.DecimalFormat;
import javax.swing.ImageIcon;
import javax.swing.JLabel;

public class ShareHelper {

    /**
     * Ảnh biểu tượng của ứng dụng, xuất hiện trên mọi cửa sổ
     */
    public static final Image APP_ICON;

    static {
        // Tải biểu tượng ứng dụng
        String file = "/com/polypro/icons/fpt.png";
        APP_ICON = new ImageIcon(ShareHelper.class.getResource(file)).getImage();
    }

    /**
     * Sao chép file logo chuyên đề vào thư mục logo
     *
     * @param file là đối tượng file ảnh
     * @return chép được hay không
     *
     */
    public static boolean saveLogo(File file) {
        File dir = new File("logos");
        // Tạo thư mục nếu chưa tồn tại
        if (!dir.exists()) {
            dir.mkdirs();
        }
        File newFile = new File(dir, file.getName());
        try {
            // Copy vào thư mục logos (đè nếu đã tồn tại)
            Path source = Paths.get(file.getAbsolutePath());
            Path destination = Paths.get(newFile.getAbsolutePath());
            Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    /**
     * Đọc hình ảnh logo chuyên đề
     *
     * @param fileName là tên file logo
     * @return ảnh đọc được
     */
    public static File readLogo(String fileName) {
        return new File("logos", fileName);
    }

    /**
     * setIcon cho Jlabel
     *
     * @param label là Jlabel cần setIcon
     * @param file là file ảnh
     */
    public static void setIcon(JLabel label, File file) {
        if (file == null) {
            label.setIcon(null);
        } else {
            ImageIcon icon = new ImageIcon(file.getAbsolutePath());
            Image image = icon.getImage();
            ImageIcon icon1 = new ImageIcon(image.getScaledInstance(label.getWidth(), label.getHeight(), image.SCALE_SMOOTH));
            label.setIcon(icon1);
            label.setToolTipText(file.getName());
        }
    }

    /**
     * Đối tượng này chứa thông tin người sử dụng sau khi đăng nhập
     */
    public static NhanVien USER = null;

    /**
     * Xóa thông tin của người sử dụng khi có yêu cầu đăng xuất
     */
    public static void logoff() {
        ShareHelper.USER = null;
    }

    /**
     * Kiểm tra xem đăng nhập hay chưa
     *
     * @return đăng nhập hay chưa
     */
    public static boolean authenticated() {
        return ShareHelper.USER != null;
    }
    
    /**
     * Kiểm tra xem vai trò admin hay không
     *
     * @return vai trò admin hay không
     */
    public static boolean isAdmin() {
        return ShareHelper.USER.getVaiTro();
    }

    static String DECIMAL_FORMAR = "###,###.##";
    /**
     * Định dạng kiểu dữ liệu Double
     *
     * @param num là số được truyền vào
     * @param pattern là chuỗi định dạng cho kiểu double
     * @return chuỗi đã được định dạng
     *
     */
    public static String formatDouble(double num, String...pattern) {
        if (pattern.length > 0) {
            DECIMAL_FORMAR = pattern[0];
        }
        DecimalFormat decimalFormat = new DecimalFormat(DECIMAL_FORMAR);//gọi hàm định dạng kiểu double
        return decimalFormat.format(num);
    }
}
