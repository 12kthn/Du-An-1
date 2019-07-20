
package Home.common;

import Home.controller.NhanVienController;
import java.text.DecimalFormat;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Common {
    public static Stage mainStage = null;
    public static Scene mainScene = null;
    public static BorderPane mainPane;
    public static NhanVienController nvController;
    
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
