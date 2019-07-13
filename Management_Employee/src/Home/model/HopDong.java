/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.model;

import java.util.Date;

/**
 *
 * @author USER
 */
public class HopDong {
    private String MaNV;
    private String MaCV;
    private String MaPB;
    private Date NgayVaoLam;
    private Date NgayKetThuc;
    private int HeSoLuong;
    
    public HopDong(){
    
    }
    
    public HopDong(String MaNV,String MaCV,String MaPB,Date NgayVaoLam,Date NgayKetThuc,int HeSoLuong){
        this.MaNV = MaNV;
        this.MaCV = MaCV;
        this.MaPB = MaPB;
        this.NgayVaoLam = NgayVaoLam;
        this.NgayKetThuc = NgayKetThuc;
        this.HeSoLuong = HeSoLuong;
    }

    /*
    *Getter
    */
    public String getMaNV() {
        return MaNV;
    }

    public String getMaCV() {
        return MaCV;
    }

    public String getMaPB() {
        return MaPB;
    }

    public Date getNgayVaoLam() {
        return NgayVaoLam;
    }

    public Date getNgayKetThuc() {
        return NgayKetThuc;
    }

    public int getHeSoLuong() {
        return HeSoLuong;
    }
    
    /*
    *Setter
    */

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setMaCV(String MaCV) {
        this.MaCV = MaCV;
    }

    public void setMaPB(String MaPB) {
        this.MaPB = MaPB;
    }

    public void setNgayVaoLam(Date NgayVaoLam) {
        this.NgayVaoLam = NgayVaoLam;
    }

    public void setNgayKetThuc(Date NgayKetThuc) {
        this.NgayKetThuc = NgayKetThuc;
    }

    public void setHeSoLuong(int HeSoLuong) {
        this.HeSoLuong = HeSoLuong;
    }
    
    
}
