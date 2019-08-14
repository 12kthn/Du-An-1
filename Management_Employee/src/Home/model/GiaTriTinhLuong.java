package Home.model;

public class GiaTriTinhLuong {

    private String TenGiaTri;
    private double GiaTri;

    public GiaTriTinhLuong() {
    }

    public GiaTriTinhLuong(String TenGiaTri, double GiaTri) {
        this.TenGiaTri = TenGiaTri;
        this.GiaTri = GiaTri;

    }

    public String getTenGiaTri() {
        return TenGiaTri;
    }

    public double getGiaTri() {
        return GiaTri;
    }

    public void setTenGiaTri(String TenGiaTri) {
        this.TenGiaTri = TenGiaTri;
    }

    public void setGiaTri(double GiaTri) {
        this.GiaTri = GiaTri;
    }

}
