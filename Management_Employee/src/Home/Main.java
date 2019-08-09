
package Home;

import Home.helper.Share;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

public class Main extends Application {
    
    
    @Override
    public void start(Stage stage) throws Exception {
        Share.mainStage = stage;
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Login.fxml")));
        stage.setScene(scene);
        stage.setResizable(false);
        stage.initStyle(StageStyle.UNDECORATED);
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
    
}
