
package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.model.NhanVien;
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
                TableNhanVien tblnv = new TableNhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3)?"Nam":"Nữ", rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), 
                        rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getInt(15), 
                        rs.getBoolean(16)?"Đang làm việc":"Đã nghỉ việc");
                
                data.add(tblnv);
                tblnv.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        new NhanVienDAO().deletenv(new NhanVien(tblnv.getMaNV()));
                        Common.nvController.loadDataToTable();
                    }
                });
                tblnv.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Common.nvController.setModelnhanvien(new NhanVienDAO().findByCode(tblnv.getMaNV()));
                        Common.nvController.changeTabPane(2);
                        Common.nvController.setstatus(false);
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
