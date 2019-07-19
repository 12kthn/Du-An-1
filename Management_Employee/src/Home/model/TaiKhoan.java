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
    private String TaiKhoan;
    private String MatKhau;
    private String MaNV;

    public TaiKhoan() {
    }

    public TaiKhoan(String TaiKhoan, String MatKhau, String MaNV) {
        this.TaiKhoan = TaiKhoan;
        this.MatKhau = MatKhau;
        this.MaNV = MaNV;
    }

    public String getTaiKhoan() {
        return TaiKhoan;
    }

    public void setTaiKhoan(String TaiKhoan) {
        this.TaiKhoan = TaiKhoan;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }
    
    
}
