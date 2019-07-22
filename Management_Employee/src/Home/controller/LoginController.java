package Home.controller;

import Home.DAO.TaiKhoanDAO;
import Home.common.Common;
import Home.common.CustomDialog;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert.AlertType;

public class LoginController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            tkdao = new TaiKhoanDAO();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //Phuong thuc mở Giao diện chính
    public void openMain() {
        try {
            Common.mainStage.close();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Main.fxml")));
            Common.mainStage.setScene(scene);
            Common.mainStage.show();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private TaiKhoanDAO tkdao;

    @FXML
    private JFXButton btnHuy;

    @FXML
    private JFXButton btnDangNhap;

    @FXML
    private JFXTextField txtTaiKhoan;

    @FXML
    private JFXPasswordField txtMatKhau;

    @FXML
    void login() {
        int kq = tkdao.findByCode(txtTaiKhoan.getText(), txtMatKhau.getText());//Biến lưu kết quả trả về
        switch (kq) {
            case 0:
                CustomDialog.showAlert(AlertType.ERROR, Common.mainStage, " ", "Sai tên đăng nhập");
                break;
            case 1:
                CustomDialog.showAlert(AlertType.ERROR, Common.mainStage, " ", "Sai mật khẩu");
                break;
            case 2:
                CustomDialog.showAlert(AlertType.INFORMATION, Common.mainStage, " ", "Đăng nhập thành công");
                break;
            default:
                System.out.println("co loi xay ra");
                break;
        }
    }

    @FXML
    void exit() {
        Platform.exit();
    }
}
