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
public class NhanVien {
    private String MaNV;
    private String TenNV;
    private boolean GioiTinh;
    private Date NgaySinh;
    private String SoCM;
    private String DienThoai;
    private String Email;
    private String DiaChi;
    private String Hinh;
    private String TrinhDoHV;

    @Override
    public String toString() {
        return this.TenNV;
    }
    
    public NhanVien(){
    
    }
    
    public NhanVien(String MaNV,String TenNV,Boolean GioiTinh,Date NgaySinh,String SoCM,
            String DienThoai,String Email,String DiaChi,String Hinh,String TrinhDoHV){
    
        this.MaNV = MaNV;
        this.TenNV = TenNV;
        this.GioiTinh = GioiTinh;
        this.NgaySinh = NgaySinh;
        this.SoCM = SoCM;
        this.DienThoai = DienThoai;
        this.Email = Email;
        this.DiaChi = DiaChi;
        this.Hinh = Hinh;
        this.TrinhDoHV = TrinhDoHV;
    }
    
    /*
    *Getter
    */

    public String getMaNV() {
        return MaNV;
    }

    public String getTenNV() {
        return TenNV;
    }

    public boolean isGioiTinh() {
        return GioiTinh;
    }

    public Date getNgaySinh() {
        return NgaySinh;
    }

    public String getSoCM() {
        return SoCM;
    }

    public String getDienThoai() {
        return DienThoai;
    }

    public String getEmail() {
        return Email;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getHinh() {
        return Hinh;
    }

    public String getTrinhDoHV() {
        return TrinhDoHV;
    }
    
     /*
    *Setter
    */

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setTenNV(String TenNV) {
        this.TenNV = TenNV;
    }

    public void setGioiTinh(boolean GioiTinh) {
        this.GioiTinh = GioiTinh;
    }

    public void setNgaySinh(Date NgaySinh) {
        this.NgaySinh = NgaySinh;
    }

    public void setSoCM(String SoCM) {
        this.SoCM = SoCM;
    }

    public void setDienThoai(String DienThoai) {
        this.DienThoai = DienThoai;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public void setHinh(String Hinh) {
        this.Hinh = Hinh;
    }

    public void setTrinhDoHV(String TrinhDoHV) {
        this.TrinhDoHV = TrinhDoHV;
    }
    
    
    
    
    
}
