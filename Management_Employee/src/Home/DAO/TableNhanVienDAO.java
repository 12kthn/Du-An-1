
package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.model.table.TableNhanVien;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TableNhanVienDAO {
    public ObservableList<TableNhanVien> getData() {
        ObservableList<TableNhanVien> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_TBLNhanVien}";
            ResultSet rs = JDBC.executeQuery(sql);
            while (rs.next()) {
                TableNhanVien nv = new TableNhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3)?"Nam":"Nữ", rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), 
                        rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getInt(15), 
                        rs.getBoolean(16)?"Chính thức":"Không chính thức", rs.getBoolean(17)?"Đang làm việc":"Đã nghỉ việc");
                
                data.add(nv);
                nv.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        data.remove(nv);
                    }
                });
                nv.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Common.nvController.setModel(new NhanVienDAO().findByCode(nv.getMaNV()));
                        Common.nvController.changeTabPane(2);
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
