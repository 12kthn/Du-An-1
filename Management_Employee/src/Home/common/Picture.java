package Home.common;

import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class Picture {

    public ImageView createIcon(String iconName) {
        ImageView imageView = new ImageView(this.getClass().getResource("/Libraries/icon/" + iconName).toString());
        return imageView;
    }
    
    public ImageView createImage(String iconName) {
        Image image = new Image(this.getClass().getResource("/Libraries/images/" + iconName).toString());
        ImageView imageView = new ImageView(image);
        return imageView;
    }
    
    public Image createImageInIconFolder(String imageName) {
        Image image = new Image(this.getClass().getResource("/Libraries/icon/" + imageName).toString());
        return image;
    }
    
    public Image createImageInImagesFolder(String imageName) {
        Image image = new Image(this.getClass().getResource("/Libraries/images/" + imageName).toString());
        return image;
    }
}
