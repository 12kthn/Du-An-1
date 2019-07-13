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
public class ChamCong {
    private String MaNV;
    private Date Ngay;
    private boolean TinhTrang;
    private int TangCa;
    
    public ChamCong(){
    }
    
    public ChamCong(String MaNV, Date Ngay, boolean TinhTrang,int TangCa){
        this.MaNV = MaNV;
        this.Ngay = Ngay;
        this.TinhTrang = TinhTrang;
        this.TangCa = TangCa;
    }
    
    /*
    *Getter
    */

    public String getMaNV() {
        return MaNV;
    }

    public Date getNgay() {
        return Ngay;
    }

    public boolean isTinhTrang() {
        return TinhTrang;
    }

    public int getTangCa() {
        return TangCa;
    }
    
    /*
    *Setter
    */

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public void setNgay(Date Ngay) {
        this.Ngay = Ngay;
    }

    public void setTinhTrang(boolean TinhTrang) {
        this.TinhTrang = TinhTrang;
    }

    public void setTangCa(int TangCa) {
        this.TangCa = TangCa;
    }
    
    
}
