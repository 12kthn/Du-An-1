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
public class GiaTriTinhLuong {
    private String TenGiaTri;
    private float GiaTri;
    
    public GiaTriTinhLuong(){
    }
    
    public GiaTriTinhLuong(String TenGiaTri, float GiaTri){
        this.TenGiaTri = TenGiaTri;
        this.GiaTri = GiaTri;
    
    }
    /*
    *Getter
    */

    public String getTenGiaTri() {
        return TenGiaTri;
    }

    public float getGiaTri() {
        return GiaTri;
    }
    /*
    *Setter
    */

    public void setTenGiaTri(String TenGiaTri) {
        this.TenGiaTri = TenGiaTri;
    }

    public void setGiaTri(float GiaTri) {
        this.GiaTri = GiaTri;
    }
    
}
