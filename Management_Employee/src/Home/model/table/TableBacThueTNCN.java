package Home.model.table;

import Home.helper.Picture;
import javafx.scene.control.Button;

public class TableBacThueTNCN {

    private Button Delete;
    private Button Update;
    private String Luong;
    private String Thue;

    public TableBacThueTNCN() {
    }

    public TableBacThueTNCN(String Luong, String Thue) {
        this.Luong = Luong;
        this.Thue = Thue;

        Picture picture = new Picture();
        this.Delete = new Button("", picture.createImageView("delete.png"));
        this.Update = new Button("", picture.createImageView("edit.png"));
    }

    public Button getDelete() {
        return Delete;
    }

    public void setDelete(Button Delete) {
        this.Delete = Delete;
    }

    public Button getUpdate() {
        return Update;
    }

    public void setUpdate(Button Update) {
        this.Update = Update;
    }

    public String getLuong() {
        return Luong;
    }

    public String getThue() {
        return Thue;
    }

    public void setLuong(String Luong) {
        this.Luong = Luong;
    }

    public void setThue(String Thue) {
        this.Thue = Thue;
    }
}
