package Home.model;

public class GiaTriTinhLuong {

    private String TenGiaTri;
    private float GiaTri;

    public GiaTriTinhLuong() {
    }

    public GiaTriTinhLuong(String TenGiaTri, float GiaTri) {
        this.TenGiaTri = TenGiaTri;
        this.GiaTri = GiaTri;

    }

    public String getTenGiaTri() {
        return TenGiaTri;
    }

    public float getGiaTri() {
        return GiaTri;
    }

    public void setTenGiaTri(String TenGiaTri) {
        this.TenGiaTri = TenGiaTri;
    }

    public void setGiaTri(float GiaTri) {
        this.GiaTri = GiaTri;
    }

}
