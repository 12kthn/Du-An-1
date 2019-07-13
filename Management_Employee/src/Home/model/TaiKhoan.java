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
public class TaiKhoan {
    private String MaNV;
    private String MatKhau;
    private boolean TrangThai = false;
    
    public TaiKhoan(){
        
}
    public TaiKhoan(String MaNV, String MatKhau, Boolean TrangThai){
        this.MaNV = MaNV;
        this.MatKhau = MatKhau;
        this.TrangThai = TrangThai;
    }
    
    /*
    *Getter
    */

    public String getMaNV() {
        return MaNV;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public boolean isTrangThai() {
        return TrangThai;
    }
    
        /*
    *Setter
    */

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public void setTrangThai(boolean TrangThai) {
        this.TrangThai = TrangThai;
    }
    
    
}
