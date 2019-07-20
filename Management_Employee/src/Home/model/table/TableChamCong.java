package Home.model.table;

import Home.model.PhongBan;

public class TableChamCong {

    private String maNV;
    private String hoTen;
    private PhongBan phongBan;
    private String nam;
    private String thang;
    private Boolean ngay1, ngay2, ngay3, ngay4, ngay5, ngay6, ngay7, ngay8, ngay9, ngay10, ngay11, ngay12, ngay13, ngay14, ngay15,
            ngay16, ngay17, ngay18, ngay19, ngay20, ngay21, ngay22, ngay23, ngay24, ngay25, ngay26, ngay27, ngay28, ngay29, ngay30, ngay31;

    public TableChamCong() {

    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public PhongBan getPhongBan() {
        return phongBan;
    }

    public void setPhongBan(PhongBan phongBan) {
        this.phongBan = phongBan;
    }

    public String getNam() {
        return nam;
    }

    public void setNam(String nam) {
        this.nam = nam;
    }

    public String getThang() {
        return thang;
    }

    public void setThang(String thang) {
        this.thang = thang;
    }

    private void setNgay(Boolean[] onWork) {
        this.ngay1 = onWork[0];
        this.ngay2 = onWork[1];
        this.ngay3 = onWork[2];
        this.ngay4 = onWork[3];
        this.ngay5 = onWork[4];
        this.ngay6 = onWork[5];
        this.ngay7 = onWork[6];
        this.ngay8 = onWork[7];
        this.ngay9 = onWork[8];
        this.ngay10 = onWork[9];
        this.ngay11 = onWork[10];
        this.ngay12 = onWork[11];
        this.ngay13 = onWork[12];
        this.ngay14 = onWork[13];
        this.ngay15 = onWork[14];
        this.ngay16 = onWork[15];
        this.ngay17 = onWork[16];
        this.ngay18 = onWork[17];
        this.ngay19 = onWork[18];
        this.ngay20 = onWork[19];
        this.ngay21 = onWork[20];
        this.ngay22 = onWork[21];
        this.ngay23 = onWork[22];
        this.ngay24 = onWork[23];
        this.ngay25 = onWork[24];
        this.ngay26 = onWork[25];
        this.ngay27 = onWork[26];
        this.ngay28 = onWork[27];
        this.ngay29 = onWork[28];
        this.ngay30 = onWork[29];
        this.ngay31 = onWork[30];
    }

    public TableChamCong(String maNV, String hoTen, PhongBan phongBan, String nam, String thang, Boolean[] onWork) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.phongBan = phongBan;
        this.nam = nam;
        this.thang = thang;
        this.setNgay(onWork);
    }

    
    
    public Boolean getNgay1() {
        return ngay1;
    }

    public void setNgay1(Boolean ngay1) {
        this.ngay1 = ngay1;
    }

    public Boolean getNgay2() {
        return ngay2;
    }

    public void setNgay2(Boolean ngay2) {
        this.ngay2 = ngay2;
    }

    public Boolean getNgay3() {
        return ngay3;
    }

    public void setNgay3(Boolean ngay3) {
        this.ngay3 = ngay3;
    }

    public Boolean getNgay4() {
        return ngay4;
    }

    public void setNgay4(Boolean ngay4) {
        this.ngay4 = ngay4;
    }

    public Boolean getNgay5() {
        return ngay5;
    }

    public void setNgay5(Boolean ngay5) {
        this.ngay5 = ngay5;
    }

    public Boolean getNgay6() {
        return ngay6;
    }

    public void setNgay6(Boolean ngay6) {
        this.ngay6 = ngay6;
    }

    public Boolean getNgay7() {
        return ngay7;
    }

    public void setNgay7(Boolean ngay7) {
        this.ngay7 = ngay7;
    }

    public Boolean getNgay8() {
        return ngay8;
    }

    public void setNgay8(Boolean ngay8) {
        this.ngay8 = ngay8;
    }

    public Boolean getNgay9() {
        return ngay9;
    }

    public void setNgay9(Boolean ngay9) {
        this.ngay9 = ngay9;
    }

    public Boolean getNgay10() {
        return ngay10;
    }

    public void setNgay10(Boolean ngay10) {
        this.ngay10 = ngay10;
    }

    public Boolean getNgay11() {
        return ngay11;
    }

    public void setNgay11(Boolean ngay11) {
        this.ngay11 = ngay11;
    }

    public Boolean getNgay12() {
        return ngay12;
    }

    public void setNgay12(Boolean ngay12) {
        this.ngay12 = ngay12;
    }

    public Boolean getNgay13() {
        return ngay13;
    }

    public void setNgay13(Boolean ngay13) {
        this.ngay13 = ngay13;
    }

    public Boolean getNgay14() {
        return ngay14;
    }

    public void setNgay14(Boolean ngay14) {
        this.ngay14 = ngay14;
    }

    public Boolean getNgay15() {
        return ngay15;
    }

    public void setNgay15(Boolean ngay15) {
        this.ngay15 = ngay15;
    }

    public Boolean getNgay16() {
        return ngay16;
    }

    public void setNgay16(Boolean ngay16) {
        this.ngay16 = ngay16;
    }

    public Boolean getNgay17() {
        return ngay17;
    }

    public void setNgay17(Boolean ngay17) {
        this.ngay17 = ngay17;
    }

    public Boolean getNgay18() {
        return ngay18;
    }

    public void setNgay18(Boolean ngay18) {
        this.ngay18 = ngay18;
    }

    public Boolean getNgay19() {
        return ngay19;
    }

    public void setNgay19(Boolean ngay19) {
        this.ngay19 = ngay19;
    }

    public Boolean getNgay20() {
        return ngay20;
    }

    public void setNgay20(Boolean ngay20) {
        this.ngay20 = ngay20;
    }

    public Boolean getNgay21() {
        return ngay21;
    }

    public void setNgay21(Boolean ngay21) {
        this.ngay21 = ngay21;
    }

    public Boolean getNgay22() {
        return ngay22;
    }

    public void setNgay22(Boolean ngay22) {
        this.ngay22 = ngay22;
    }

    public Boolean getNgay23() {
        return ngay23;
    }

    public void setNgay23(Boolean ngay23) {
        this.ngay23 = ngay23;
    }

    public Boolean getNgay24() {
        return ngay24;
    }

    public void setNgay24(Boolean ngay24) {
        this.ngay24 = ngay24;
    }

    public Boolean getNgay25() {
        return ngay25;
    }

    public void setNgay25(Boolean ngay25) {
        this.ngay25 = ngay25;
    }

    public Boolean getNgay26() {
        return ngay26;
    }

    public void setNgay26(Boolean ngay26) {
        this.ngay26 = ngay26;
    }

    public Boolean getNgay27() {
        return ngay27;
    }

    public void setNgay27(Boolean ngay27) {
        this.ngay27 = ngay27;
    }

    public Boolean getNgay28() {
        return ngay28;
    }

    public void setNgay28(Boolean ngay28) {
        this.ngay28 = ngay28;
    }

    public Boolean getNgay29() {
        return ngay29;
    }

    public void setNgay29(Boolean ngay29) {
        this.ngay29 = ngay29;
    }

    public Boolean getNgay30() {
        return ngay30;
    }

    public void setNgay30(Boolean ngay30) {
        this.ngay30 = ngay30;
    }

    public Boolean getNgay31() {
        return ngay31;
    }

    public void setNgay31(Boolean ngay31) {
        this.ngay31 = ngay31;
    }

}
