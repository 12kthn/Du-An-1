package Home.common;

import java.io.InputStream;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class Picture {

    public ImageView createIcone(String iconName) {
        InputStream input = this.getClass().getResourceAsStream("/Libraries/icone/" + iconName);
        Image image = new Image(input);
        ImageView imageView = new ImageView(image);
        return imageView;
    }
    
    public ImageView createImage(String iconName) {
        InputStream input = this.getClass().getResourceAsStream("/Libraries/images/" + iconName);
        Image image = new Image(input);
        ImageView imageView = new ImageView(image);
        return imageView;
    }
}
