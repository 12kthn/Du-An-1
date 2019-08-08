package Home.controller;

import Home.helper.Share;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;

public class MainController implements Initializable {

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        Share.mainPane = borderPane;
        setGUIHome();
    }

    @FXML
    public void setGUIHome() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Home.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUINhanVien() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/NhanVien.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIToChuc() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ToChuc.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIChamCong() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ChamCong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIBangLuong() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/BangLuong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIKhoiPhuc() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/KhoiPhuc.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUITaikhoan() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/TaiKhoan.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIDoimatkhau() {
        try {
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Doimatkhau.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    void getCoorMouse(MouseEvent event) {
        xMouse = event.getSceneX();
        yMouse = event.getSceneY();
    }

    @FXML
    public void movePanel(MouseEvent event) {
        double x = event.getScreenX();
        double y = event.getScreenY();
        //set tọa độ mới cho JDialog khi rê chuột
        Share.mainStage.setX(x - xMouse);
        Share.mainStage.setY(y - yMouse);
    }

    @FXML
    public void logOut() {
        try {
            Share.logOut();
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/TaiKhoan.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void closeWindow() {
        Share.mainStage.close();
    }

    @FXML
    public void minimizeWindow() {
        Share.mainStage.setIconified(true);
    }

    //tọa độ con trỏ chuột
    double xMouse;
    double yMouse;

    @FXML
    private BorderPane borderPane;

    @FXML
    HBox AccountBox;

    @FXML
    Label lblDoiMatKhau;

    @FXML
    Label lblDangXuat;

    @FXML
    Label lblUsername;

}
