/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.model;

/**
 *
 * @author USER
 */
public class ChucVu {
    private String MaCV;
    private String TenCV;
    private float PhuCap;
    
    public ChucVu(){
    }
    
    public ChucVu(String MaCV,String TenCV,float PhuCap){
        this.MaCV = MaCV;
        this.TenCV = TenCV;
        this.PhuCap = PhuCap;
    }
    /*
    *Getter
    */

    public String getMaCV() {
        return MaCV;
    }

    public String getTenCV() {
        return TenCV;
    }

    public float getPhuCap() {
        return PhuCap;
    }
    
    /*
    *Setter
    */

    public void setMaCV(String MaCV) {
        this.MaCV = MaCV;
    }

    public void setTenCV(String TenCV) {
        this.TenCV = TenCV;
    }

    public void setPhuCap(float PhuCap) {
        this.PhuCap = PhuCap;
    }
    
    
}
