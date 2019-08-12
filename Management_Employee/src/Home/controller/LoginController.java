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
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.StackPane;
import Home.helper.IConfirmationDialog;
import javafx.scene.layout.AnchorPane;

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

    private boolean checkNull() {
        if (Validate.isNull(txtTaiKhoan, "Vui lòng nhập tài khoản", stackPane, mainPane)) {
            return false;
        }
        if (Validate.isNull(txtMatKhau, "Vui lòng nhập mật khẩu", stackPane, mainPane)) {
            return false;
        }
        return true;
    }

    @FXML
    void login() {
        if (checkNull()) {
            int result = tkdao.checkAccount(txtTaiKhoan.getText(), txtMatKhau.getText());
            switch (result) {
                case 0:
                    customDialog.showDialog(stackPane, mainPane, false, "Sai tên đăng nhập");
                    break;
                case 1:
                    customDialog.showDialog(stackPane, mainPane, false, "Sai mật khẩu");
                    break;
                case 2:
                    customDialog.showAndWaitDialog(stackPane, mainPane, true, "Đăng nhập thành công", new openMainHandler());
                    break;
                default:
                    customDialog.showDialog(stackPane, mainPane, false, "Có lỗi xảy ra, không thể đăng nhập");
                    break;
            }
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
        customDialog.confirmDialog(stackPane, mainPane, "Bạn có muốn thoát chương trình", new exitHandler());
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
    private AnchorPane mainPane;

    @FXML
    private JFXTextField txtTaiKhoan;

    @FXML
    private JFXPasswordField txtMatKhau;

    @FXML
    private JFXButton btnLogin;

    class openMainHandler implements IConfirmationDialog {

        @Override
        public void onConfirm() {
            openMain();
        }

        @Override
        public void onCancel() {

        }

    }

    class exitHandler implements IConfirmationDialog {

        @Override
        public void onConfirm() {
            Share.mainStage.close();
        }

        @Override
        public void onCancel() {

        }

    }
}
