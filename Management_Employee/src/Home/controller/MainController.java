package Home.controller;

import Home.helper.Share;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

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
    public void openGUIDoimatkhau() {
        try {
            Stage secondStage = new Stage();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/DoiMatKhau.fxml")));
            secondStage.setScene(scene);
            secondStage.setResizable(false);
            secondStage.initStyle(StageStyle.UNDECORATED);
            secondStage.show();
            Share.secondStage = secondStage;
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
            Share.mainStage.close();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Login.fxml")));
            Share.mainStage.setScene(scene);
            Share.mainStage.show();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIGioithieu() {
        try {
            Share.logOut();
            Share.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/GioiThieu.fxml")));
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
