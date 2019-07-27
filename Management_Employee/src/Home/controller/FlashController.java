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
import javafx.scene.control.ProgressIndicator;

public class FlashController implements Initializable, Runnable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        //set ProgressIndicator chạy vô hạn (dạng vòng tròn)
        progressIndicator.setProgress(ProgressIndicator.INDETERMINATE_PROGRESS);
        Thread thread = new Thread(this);
        thread.start();
    }

    @Override
    public void run() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
        //Tất cả sự kiện trong UI muốn chạy bằng Thread phải đặt trong Platform.runLater
        Platform.runLater(new Runnable() {
            @Override
            public void run() {
                try {
                    //tắt stage chính và mở Login
                    Common.mainStage.close();
                    Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Login.fxml")));
                    Common.mainStage.setScene(scene);
                    Common.mainStage.show();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        });
    }

    @FXML
    ProgressIndicator progressIndicator;

}
