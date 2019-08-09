package Home.model;

import java.util.Date;

public class ChamCong {
    private String MaNV;
    private Date Ngay;
    private boolean TinhTrang;
    
    public ChamCong(){
    }
    
    public ChamCong(String MaNV, Date Ngay, boolean TinhTrang){
        this.MaNV = MaNV;
        this.Ngay = Ngay;
        this.TinhTrang = TinhTrang;
    }

    public String getMaNV() {
        return MaNV;
    }

    public Date getNgay() {
        return Ngay;
    }

    public boolean getTinhTrang() {
        return TinhTrang;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setNgay(Date Ngay) {
        this.Ngay = Ngay;
    }

    public void setTinhTrang(boolean TinhTrang) {
        this.TinhTrang = TinhTrang;
    }

    @Override
    public String toString() {
        return "ChamCong{" + "MaNV=" + MaNV + ", Ngay=" + Ngay + ", TinhTrang=" + TinhTrang + '}';
    }
  
}
