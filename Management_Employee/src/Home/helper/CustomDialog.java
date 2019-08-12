package Home.helper;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXDialog;
import com.jfoenix.controls.JFXDialogLayout;
import com.jfoenix.controls.events.JFXDialogEvent;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.control.Label;
import javafx.scene.effect.BoxBlur;
import javafx.scene.layout.StackPane;

public class CustomDialog {

    public void showDialog(StackPane stackPane, boolean successMessage, String message) {
        BoxBlur blur = new BoxBlur(3, 3, 3);

        JFXDialogLayout dialogLayout = new JFXDialogLayout();
        JFXButton button = new JFXButton("OK");
        JFXDialog dialog = new JFXDialog(stackPane, dialogLayout, JFXDialog.DialogTransition.TOP, true);

        dialog.getStylesheets().add(getClass().getResource("/Libraries/CssMenu.css").toExternalForm());
        button.getStyleClass().addAll("btn", "btn-primary");
        button.setPrefSize(80, 30);
        button.setOnAction((event) -> {
            dialog.close();
        });
        
        dialogLayout.setPrefSize(400, 80);

        Label label = new Label(message);
        label.setStyle("-fx-font-size: 12pt;");
        if (successMessage) {
            label.setStyle("-fx-text-fill: #dc3545");
        }
        dialogLayout.setHeading(label);
        dialogLayout.setActions(button);
        
       
        dialog.setOnDialogClosed((JFXDialogEvent event) -> {
            Share.mainPane.setEffect(null);
        });
        dialog.show();
        Share.mainPane.setEffect(blur);

    }

    public void confirmDialog(String message, IConfirmationDialog confirm) {
        BoxBlur blur = new BoxBlur(3, 3, 3);

        JFXDialogLayout dialogLayout = new JFXDialogLayout();
        JFXButton yesButton = new JFXButton("Xác nhận");
        JFXButton cancelButton = new JFXButton("Hủy");
        
        JFXDialog dialog = new JFXDialog(Share.stackPane, dialogLayout, JFXDialog.DialogTransition.TOP, false);
        dialog.getStylesheets().add(getClass().getResource("/Libraries/CssMenu.css").toExternalForm());
        yesButton.getStyleClass().addAll("btn", "btn-primary");
        yesButton.setPrefSize(110, 30);
        yesButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                dialog.close();
                confirm.onConfirm();
            }
        });
        
        cancelButton.getStyleClass().addAll("btn", "btn-danger");
        cancelButton.setPrefSize(80, 30);
        cancelButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                dialog.close();
                confirm.onCancel();
            }
        });
        
        dialogLayout.setPrefSize(400, 80);
        dialogLayout.setHeading(new Label(message));
        dialogLayout.setActions(yesButton, cancelButton);
        
        dialog.setOnDialogClosed((JFXDialogEvent event) -> {
            Share.mainPane.setEffect(null);
        });
        
        dialog.show();
        Share.mainPane.setEffect(blur);
    }
   
}
