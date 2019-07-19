
package Home.model;

public class PhongBan {
    private String MaPB;
    private String TenPB;
    private String MaTruongPhong;
    
    public PhongBan(){
    
    }
    
    public PhongBan(String MaPB,String TenPB,String MaTruongPhong){
        this.MaPB = MaPB;
        this.TenPB = TenPB;
        this.MaTruongPhong = MaTruongPhong;
    }
    
    /*
    *Getter
    */

    public String getMaPB() {
        return MaPB;
    }

    public String getTenPB() {
        return TenPB;
    }

    public String getMaTruongPhong() {
        return MaTruongPhong;
    }
    
    /*
    *Setter
    */

    public void setMaPB(String MaPB) {
        this.MaPB = MaPB;
    }

    public void setTenPB(String TenPB) {
        this.TenPB = TenPB;
    }

    public void setMaTruongPhong(String MaTruongPhong) {
        this.MaTruongPhong = MaTruongPhong;
    }

    @Override
    public String toString() {
        return TenPB;
    }

}
