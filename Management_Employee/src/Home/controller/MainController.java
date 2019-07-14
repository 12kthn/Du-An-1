/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.controller;


import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

/**
 *
 * @author Duc Tung
 */
public class MainController implements Initializable{

    private Stage stage;
    
    @FXML
    private BorderPane container;
    
    @FXML
    private HBox topPane;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        setGUIHome();
    }

    @FXML
    public void setGUIHome() {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Home.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUINhanVien() {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/NhanVien.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    @FXML
    public void setGUIChamCong() {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ChamCong.fxml")));
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
    public void movePanel(MouseEvent event){
        double x = event.getScreenX();
        double y = event.getScreenY();
        //set tọa độ mới cho JDialog khi rê chuột
        stage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        stage.setX(x - xMouse);
        stage.setY(y - yMouse);
    }
    
    @FXML
    public void close(){
        Platform.exit();
    }
    
    @FXML
    public void minimun(){
        
    }
    
    //tao 2 bien lưu tọa độ con trỏ chuột
    double xMouse;
    double yMouse;
}
