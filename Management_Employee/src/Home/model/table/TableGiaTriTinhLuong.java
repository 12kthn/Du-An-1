package Home.model.table;

import Home.helper.Picture;
import javafx.scene.control.Button;

public class TableGiaTriTinhLuong {

    private Button Delete;
    private Button Update;
    private String TenGiaTri;
    private String GiaTri;

    public TableGiaTriTinhLuong() {
    }

    public TableGiaTriTinhLuong(String TenGiaTri, String GiaTri) {
        this.TenGiaTri = TenGiaTri;
        this.GiaTri = GiaTri;
        
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

    public String getTenGiaTri() {
        return TenGiaTri;
    }

    public String getGiaTri() {
        return GiaTri;
    }

    public void setTenGiaTri(String TenGiaTri) {
        this.TenGiaTri = TenGiaTri;
    }

    public void setGiaTri(String GiaTri) {
        this.GiaTri = GiaTri;
    }

}
