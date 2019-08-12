package Home.helper;

import javafx.animation.FadeTransition;
import javafx.animation.ParallelTransition;
import javafx.animation.TranslateTransition;
import javafx.scene.Node;
import javafx.util.Duration;

public class TransitionHelper {

    public static ParallelTransition createTransition(long delay, long duration, double transalteY, Node node) {
        TranslateTransition translate = new TranslateTransition(Duration.millis(duration));
        translate.setFromY(transalteY);
        translate.setToY(0);

        FadeTransition fade = new FadeTransition(Duration.millis(duration));
        fade.setFromValue(0);
        fade.setToValue(1);

        ParallelTransition parallelTransition = new ParallelTransition();
        parallelTransition.getChildren().addAll(translate, fade);
        parallelTransition.setNode(node);
        parallelTransition.setDelay(Duration.millis(delay));

        return parallelTransition;
    }
}
