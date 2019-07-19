package Home.controller;

import Home.common.Common;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class LoginController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }

    @FXML
    void login() {
        openMain();
    }

    @FXML
    void exit() {
        Platform.exit();
    }

    Stage stage;

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

}
