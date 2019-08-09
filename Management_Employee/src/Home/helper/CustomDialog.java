package Home.helper;

import java.util.Optional;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
import javafx.stage.Stage;
import javafx.stage.Window;

public class CustomDialog {

    public static void showAlert(Alert.AlertType alertType, Window owner, String title, String message) {
        Alert alert = new Alert(alertType);
        Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Picture().createImage("caidat.png"));
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.initOwner(owner);
        alert.showAndWait();
    }
    
    public static void showAlert(Alert.AlertType alertType, Window owner, String message) {
        Alert alert = new Alert(alertType);
        Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Picture().createImage("caidat.png"));
        alert.setTitle("Management System");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.initOwner(owner);
        alert.showAndWait();
    }

    public static void showAlert(Alert.AlertType alertType, String message) {
        Alert alert = new Alert(alertType);
        Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Picture().createImage("caidat.png"));
        alert.setTitle("Management System");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.initOwner(Share.mainStage);
        alert.showAndWait();
    }

    public static boolean confirm(String message) {
        Alert alert = new Alert(AlertType.CONFIRMATION);
        Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Picture().createImage("caidat.png"));
        alert.setTitle("Management System");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.initOwner(Share.mainStage);

        Optional<ButtonType> result = alert.showAndWait();
        return result.get() == ButtonType.OK;
    }
}
