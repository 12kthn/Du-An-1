package Home.controller;

import Home.DAO.TaiKhoanDAO;
import Home.helper.Share;
import Home.helper.CustomDialog;
import Home.helper.Validate;
import com.jfoenix.controls.JFXButton;
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
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.StackPane;
import Home.helper.IConfirmationDialog;

public class LoginController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            tkdao = new TaiKhoanDAO();
            customDialog = new CustomDialog();
            validatorInit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //Phương thức khởi tạo validatorJFX
    public void validatorInit() {
        txtTaiKhoan.getValidators().add(Validate.createValidatorJFX("Vui lòng nhập tài khoản"));
        txtTaiKhoan.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    txtTaiKhoan.validate();
                }
            }

        });
        
        txtMatKhau.getValidators().add(Validate.createValidatorJFX("Vui lòng nhập mật khẩu"));
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
            customDialog.showDialog(stackPane, false, "Vui lòng nhập đầy đủ");
            return;
        }
        int kq = tkdao.checkAccount(txtTaiKhoan.getText(), txtMatKhau.getText());//Biến lưu kết quả trả về
        switch (kq) {
            case 0:
                customDialog.showDialog(stackPane, false, "Sai tên đăng nhập");
                break;
            case 1:
                customDialog.showDialog(stackPane, false, "Sai mật khẩu");
                break;
            case 2:
                customDialog.showDialog(stackPane, true, "Đăng nhập thành công");
                openMain();
                break;
            default:
                customDialog.showDialog(stackPane, false, "Có lỗi xảy ra, không thể đăng nhập");
                break;
        }
    }

    @FXML
    void enterToLogin(KeyEvent event) {
        if (event.getCode() == KeyCode.ENTER) {
            btnLogin.fire();
        }
    }
    
    @FXML
    void exit() {
        customDialog.confirmDialog("Bạn có muốn thoát chương trình", new exitHandler());
    }
    
    public void openMain() {
        try {
            Share.mainStage.close();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Main.fxml")));
            Share.mainStage.setScene(scene);
            Share.mainStage.show();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private TaiKhoanDAO tkdao;
    CustomDialog customDialog;

    @FXML
    private StackPane stackPane;
    
    @FXML
    private JFXTextField txtTaiKhoan;

    @FXML
    private JFXPasswordField txtMatKhau;
  
    @FXML
    private JFXButton btnLogin;
    
    class exitHandler implements IConfirmationDialog{

        @Override
        public void onConfirm() {
            Share.mainStage.close();
        }

        @Override
        public void onCancel() {
            
        }
     
    }
}
