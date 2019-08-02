package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.model.TaiKhoan;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TaiKhoanDAO {
    
    public TaiKhoan findByCode(String taiKhoan) {
        TaiKhoan tk = null;
        try {
            String sql = "{Call SP_FindTaiKhoanByName(?)}";
            ResultSet rs = JDBC.executeQuery(sql, taiKhoan);
            while (rs.next()) {                
                tk = new TaiKhoan(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return tk;
    }

    public int checkAccount(String taiKhoan, String matKhau) {
        try {
            String sql = "{Call SP_FindTaiKhoanByName(?)}";
            ResultSet rs = JDBC.executeQuery(sql, taiKhoan);
            while (rs.next()) {                
                if (rs.getString(2).equals(matKhau)) {
                    //Tai khoan va mat khau chinh xac
                    //set thong tin tai khoan
                    Common.USER = new TaiKhoan(rs.getString(1), rs.getString(2), rs.getString(3));
                    //set MaPB tai khoan nay quan ly
                    Common.MAPB = (Object)new NhanVienDAO().findByCode(rs.getString(3)).getMaPB();
                    if (Common.MAPB.toString().equals("GD")) {
                        Common.MAPB = null;
                    }
                    //Tra ve ket qua
                    return 2;      
                }else {
                    //Tai khoan dung nhung sai mat khau
                    return 1;
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        //Tai khoan khong chinh xac
        return 0;
    }
    
}
