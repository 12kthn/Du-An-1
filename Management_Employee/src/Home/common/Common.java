
package Home.common;

import Home.controller.NhanVienController;
import Home.controller.ToChucController;
import Home.model.TaiKhoan;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Common {
    
    public static Stage mainStage = null;
    public static Scene mainScene = null;
    public static BorderPane mainPane;
    public static NhanVienController nvController;
    public static ToChucController tcController;
    
    /**
     * Đối tượng này chứa thông tin người sử dụng sau khi đăng nhập
     */
    public static TaiKhoan USER = null;

    /**
     * Đối tượng này chứa mã Phòng ban mà tài khoản đăng nhập quản lý
     * Null tức là Giám đốc
     */
    public static String MAPB = null;
    
    /**
     * Xóa thông tin của người sử dụng khi có yêu cầu đăng xuất
     */
    public static void logoff() {
        Common.USER = null;
    }
}
