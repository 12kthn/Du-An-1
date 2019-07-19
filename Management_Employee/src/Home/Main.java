
package Home;

import Home.common.Common;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

public class Main extends Application {
    
    
    @Override
    public void start(Stage stage) throws Exception {
        Common.mainStage = stage;
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/Home/gui/Main.fxml")));
        stage.setScene(scene);
        stage.setResizable(false);
//        stage.initStyle(StageStyle.UNDECORATED);
        stage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
