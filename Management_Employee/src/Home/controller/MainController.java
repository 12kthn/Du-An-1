/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.controller;

import Home.Main;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.layout.BorderPane;

/**
 *
 * @author Duc Tung
 */
public class MainController implements Initializable{

    @FXML
    public BorderPane container;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Home.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setHomeContainer() {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/Home.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setNhanVienContainer() {
        try {
            container.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/NhanVien.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    
    @FXML
    public void close(){
        Platform.exit();
    }
    
    @FXML
    public void minimun(){
        
    }
}
