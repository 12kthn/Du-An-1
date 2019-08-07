package Home.DAO;

import Home.helper.Share;
import Home.helper.JDBC;
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
                    Share.USER = new TaiKhoan(rs.getString(1), rs.getString(2), rs.getString(3));
                    //set MaPB tai khoan nay quan ly
                    Share.MAPB = (Object)new NhanVienDAO().findByCode(rs.getString(3)).getMaPB();
                    if (Share.MAPB.toString().equals("GD")) {
                        Share.MAPB = null;
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
    
    public int insert(TaiKhoan tk) {
        try {
            String sql = "{call sp_taikhoan(?,?,?,?)}";
            return JDBC.executeUpdate(sql,                  
                    tk.getTaiKhoan(),
                    tk.getMatKhau(),
                    tk.getMaNV(),
                    "insert"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    public int update(TaiKhoan tk) {
        try {
            String sql = "{call sp_taikhoan(?,?,?,?)}";
            return JDBC.executeUpdate(sql,                 
                    tk.getTaiKhoan(),
                    tk.getMatKhau(),
                    tk.getMaNV(),
                    "Update"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    public int delete(TaiKhoan tk) {
        try {
            String sql = "{call sp_taikhoan(?,?,?,?)}";
            return JDBC.executeUpdate(sql,                 
                    tk.getTaiKhoan(),
                    tk.getMatKhau(),
                    tk.getMaNV(),
                    "Delete"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
}
