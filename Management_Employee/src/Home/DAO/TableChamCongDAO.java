package Home.DAO;

import Home.helper.JDBC;
import Home.model.NhanVien;
import Home.model.table.TableChamCong;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class TableChamCongDAO {

    public ObservableList<TableChamCong> getData(int year, int month) {
        ObservableList<TableChamCong> data = FXCollections.observableArrayList();
        ObservableList<NhanVien> listNhanVien = new NhanVienDAO().findByMonth(year, month);

        for (NhanVien nv : listNhanVien) {
            try {
                Boolean[] onwork = new Boolean[31];
                Arrays.fill(onwork, Boolean.FALSE);
                String sql = "{Call SP_ChamCongTheoThang(?,?,?)}";
                ResultSet rs = JDBC.executeQuery(sql, nv.getMaNV(), year, month);
                while (rs.next()) {
                    String dayOfMonth = rs.getString(1).substring(8,10);
                    onwork[Integer.parseInt(dayOfMonth)-1] = rs.getBoolean(2);
                }
                TableChamCong tableChamCong = new TableChamCong(nv.getMaNV(), nv.getHoTen(),
                        new PhongBanDAO().findByCode(nv.getMaPB()).get(0), year + "", month + "", onwork);
                data.add(tableChamCong);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return data;
    }
}
