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
public class BangLuong {
    private String MaNV;
    private Date NgayNhanLuong;
    private int LuongChinh;
    private int NgayCong;
    private int PC_TrachNhiem;
    private int ThuNhap;
    private int BHXH;
    private int BHYT;
    private int BHTN;
    private int PhuThuoc;
    private int TNCN;
    private int TamUng;
    private int ThucLanh;
    private boolean TrangThai;
    
    public BangLuong(){
    }
    
    public BangLuong(String MaNV,Date NgayNhanLuong,int LuongChinh,int NgayCong,int PC_TrachNhiem,int ThuNhap,int BHXH,
            int BHYT, int BHTN, int PhuThuoc, int TNCN, int TamUng, int ThucLanh, boolean TrangThai){
        
        this.MaNV = MaNV;
        this. NgayNhanLuong = NgayNhanLuong;
        this.LuongChinh = LuongChinh;
        this.NgayCong = NgayCong;
        this.PC_TrachNhiem = PC_TrachNhiem;
        this.ThuNhap = ThuNhap;
        this.BHXH = BHXH;
        this.BHYT = BHYT;
        this.PhuThuoc = PhuThuoc;
        this.TNCN = TNCN;
        this.TamUng = TamUng;
        this.ThucLanh = ThucLanh;
        this.TrangThai = TrangThai;
    
    }
    
    /*
    *Getter
    */

    public String getMaNV() {
        return MaNV;
    }

    public Date getNgayNhanLuong() {
        return NgayNhanLuong;
    }

    public int getLuongChinh() {
        return LuongChinh;
    }

    public int getNgayCong() {
        return NgayCong;
    }

    public int getPC_TrachNhiem() {
        return PC_TrachNhiem;
    }

    public int getThuNhap() {
        return ThuNhap;
    }

    public int getBHXH() {
        return BHXH;
    }

    public int getBHYT() {
        return BHYT;
    }

    public int getBHTN() {
        return BHTN;
    }

    public int getPhuThuoc() {
        return PhuThuoc;
    }

    public int getTNCN() {
        return TNCN;
    }

    public int getTamUng() {
        return TamUng;
    }

    public int getThucLanh() {
        return ThucLanh;
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

    public void setNgayNhanLuong(Date NgayNhanLuong) {
        this.NgayNhanLuong = NgayNhanLuong;
    }

    public void setLuongChinh(int LuongChinh) {
        this.LuongChinh = LuongChinh;
    }

    public void setNgayCong(int NgayCong) {
        this.NgayCong = NgayCong;
    }

    public void setPC_TrachNhiem(int PC_TrachNhiem) {
        this.PC_TrachNhiem = PC_TrachNhiem;
    }

    public void setThuNhap(int ThuNhap) {
        this.ThuNhap = ThuNhap;
    }

    public void setBHXH(int BHXH) {
        this.BHXH = BHXH;
    }

    public void setBHYT(int BHYT) {
        this.BHYT = BHYT;
    }

    public void setBHTN(int BHTN) {
        this.BHTN = BHTN;
    }

    public void setPhuThuoc(int PhuThuoc) {
        this.PhuThuoc = PhuThuoc;
    }

    public void setTNCN(int TNCN) {
        this.TNCN = TNCN;
    }

    public void setTamUng(int TamUng) {
        this.TamUng = TamUng;
    }

    public void setThucLanh(int ThucLanh) {
        this.ThucLanh = ThucLanh;
    }

    public void setTrangThai(boolean TrangThai) {
        this.TrangThai = TrangThai;
    }
    
    
}
