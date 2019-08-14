package Home.DAO;

import Home.helper.JDBC;
import Home.model.GiaTriTinhLuong;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class GiaTriTinhLuongDAO {

    public ObservableList<GiaTriTinhLuong> findByCode(String code) {
        ObservableList<GiaTriTinhLuong> list = FXCollections.observableArrayList();
        GiaTriTinhLuong giaTriTinhLuong;
        try {
            String sql = "{Call SP_FindGiaTriTinhLuongByName(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {
                giaTriTinhLuong = new GiaTriTinhLuong(rs.getString(1), rs.getDouble(2));
                list.add(giaTriTinhLuong);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public int insert(GiaTriTinhLuong gttl) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    gttl.getTenGiaTri(),
                    gttl.getGiaTri(),
                    "insert"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public int update(GiaTriTinhLuong gttl) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    gttl.getTenGiaTri(),
                    gttl.getGiaTri(),
                    "update"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public int delete(GiaTriTinhLuong gttl) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    gttl.getTenGiaTri(),
                    gttl.getGiaTri(),
                    "delete"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
