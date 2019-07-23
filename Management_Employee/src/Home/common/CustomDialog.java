
package Home.common;

import javafx.scene.control.Alert;
import javafx.stage.Stage;
import javafx.stage.Window;

public class CustomDialog {
    public static void showAlert(Alert.AlertType alertType, Window owner, String title, String message) {
        Alert alert = new Alert(alertType);
        Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Picture().createImageInIconFolder("Chucvu.png"));
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.initOwner(owner);
        alert.showAndWait();
    }
}
