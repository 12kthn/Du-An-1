package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
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
                int i = 0;
                while (rs.next()) {
                    onwork[i] = rs.getBoolean(2);
                    i++;
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
