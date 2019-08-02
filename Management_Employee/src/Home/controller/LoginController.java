package Home.controller;

import Home.DAO.TaiKhoanDAO;
import Home.common.Common;
import Home.common.CustomDialog;
import Home.common.Validate;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
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
            validatorInit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //Phương thức khởi tạo validatorJFX
    public void validatorInit() {
        txtTaiKhoan.getValidators().add(Validate.createValidatorJFX("tài khoản"));
        txtTaiKhoan.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    txtTaiKhoan.validate();
                }
            }

        });
        
        txtMatKhau.getValidators().add(Validate.createValidatorJFX("mật khẩu"));
        txtMatKhau.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    txtMatKhau.validate();
                }
            }

        });
    }

    @FXML
    void login() {
        if (!txtTaiKhoan.validate() || !txtMatKhau.validate()) {
            CustomDialog.showAlert(AlertType.ERROR, "Vui lòng nhập đầy đủ");
            return;
        }
        int kq = tkdao.checkAccount(txtTaiKhoan.getText(), txtMatKhau.getText());//Biến lưu kết quả trả về
        switch (kq) {
            case 0:
                CustomDialog.showAlert(AlertType.ERROR, "Sai tên đăng nhập");
                break;
            case 1:
                CustomDialog.showAlert(AlertType.ERROR, "Sai mật khẩu");
                break;
            case 2:
                CustomDialog.showAlert(AlertType.INFORMATION, "Đăng nhập thành công");
                openMain();
                break;
            default:
                CustomDialog.showAlert(AlertType.ERROR, "Có lỗi xảy ra, không thể đăng nhập");
                break;
        }
    }

    @FXML
    void exit() {
        if (CustomDialog.confirm("Bạn có muốn thoát chương trình")){
            Common.mainStage.close();
        }        
    }
    
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
    private JFXTextField txtTaiKhoan;

    @FXML
    private JFXPasswordField txtMatKhau;
  
}
