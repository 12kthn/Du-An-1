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
public class ThanNhan {
    private int MaTN;
    private String HoTen;
    private String NgheNghiep;
    private String MoiQuanHe;
    private String MaNV;
    private boolean GiamTruPhuThuoc;
    
    public ThanNhan(){
    }
    
    public ThanNhan(int MaTN,String HoTen,String NgheNghiep,
            String MoiQuanHe,String MaNV,boolean GiamTruPhuThuoc){
        this.MaTN = MaTN;
        this.HoTen = HoTen;
        this.NgheNghiep = NgheNghiep;
        this.MoiQuanHe = MoiQuanHe;
        this.MaNV = MaNV;
        this.GiamTruPhuThuoc = GiamTruPhuThuoc;
    
    }
    /*
    *Getter
    */

    public int getMaTN() {
        return MaTN;
    }

    public String getHoTen() {
        return HoTen;
    }

    public String getNgheNghiep() {
        return NgheNghiep;
    }

    public String getMoiQuanHe() {
        return MoiQuanHe;
    }

    public String getMaNV() {
        return MaNV;
    }

    public boolean getGiamTruPhuThuoc() {
        return GiamTruPhuThuoc;
    }
    
    /*
    *Setter
    */

    public void setMaTN(int MaTN) {
        this.MaTN = MaTN;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public void setNgheNghiep(String NgheNghiep) {
        this.NgheNghiep = NgheNghiep;
    }

    public void setMoiQuanHe(String MoiQuanHe) {
        this.MoiQuanHe = MoiQuanHe;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setGiamTruPhuThuoc(boolean GiamTruPhuThuoc) {
        this.GiamTruPhuThuoc = GiamTruPhuThuoc;
    }
    
    
    
}
