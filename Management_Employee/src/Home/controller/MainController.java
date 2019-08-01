
package Home.controller;

import Home.common.Common;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.animation.FadeTransition;
import javafx.animation.ParallelTransition;
import javafx.animation.TranslateTransition;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.util.Duration;

public class MainController implements Initializable {

    private Stage stage;

    @FXML
    private BorderPane borderPane;

    @FXML
    private HBox topPane;

    @FXML
    HBox AccountBox;
    @FXML
    Label lblDoiMatKhau;
    @FXML
    Label lblDangXuat;
    @FXML
    Label lblUsername;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        Common.mainPane = borderPane;
        setGUIHome();
//        AccountBox.setOpacity(0);
//        lblUsername.toFront();
    }

    @FXML
    public void setGUIHome() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Home.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUINhanVien() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/NhanVien.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIToChuc() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ToChuc.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    @FXML
    public void setGUIChamCong() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ChamCong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    @FXML
    public void setGUIBangLuong() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/BangLuong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    @FXML
    public void setGUIKhoiPhuc() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/KhoiPhuc.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
 @FXML
    public void setGUITaikhoan() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Taikhoan.fxml")));
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
        Common.mainStage.setX(x - xMouse);
        Common.mainStage.setY(y - yMouse);
    }

    @FXML
    public void accountPanelIn() {
        TranslateTransition transition = new TranslateTransition(Duration.seconds(0.5), AccountBox);
        transition.setToX(-140);

        FadeTransition fadeIn = new FadeTransition(Duration.seconds(0.5), AccountBox);
        fadeIn.setFromValue(0);
        fadeIn.setToValue(1);

        ParallelTransition parallelTransition = new ParallelTransition(transition, fadeIn);
        parallelTransition.play();
    }
    
    @FXML
    public void accountPanelOut() {
        TranslateTransition transition = new TranslateTransition(Duration.seconds(0.5), AccountBox);
        transition.setToX(-50);

        FadeTransition fadeOut = new FadeTransition(Duration.seconds(0.5), AccountBox);
        fadeOut.setToValue(0);

        ParallelTransition parallelTransition = new ParallelTransition(transition, fadeOut);
        parallelTransition.play();
    }

    @FXML
    public void closeWindow() {
        Common.mainStage.close();
    }

    @FXML
    public void minimizeWindow() {
        Common.mainStage.setIconified(true);
    }

//    tao 2 bien lưu tọa độ con trỏ chuột
    double xMouse;
    double yMouse;
}
