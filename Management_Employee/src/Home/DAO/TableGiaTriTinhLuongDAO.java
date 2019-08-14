package Home.DAO;

import Home.helper.FormatNumber;
import Home.helper.JDBC;
import Home.helper.Share;
import Home.model.table.TableGiaTriTinhLuong;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TableGiaTriTinhLuongDAO {

    GiaTriTinhLuongDAO gttldao = new GiaTriTinhLuongDAO();

    public ObservableList<TableGiaTriTinhLuong> getData() {
        ObservableList<TableGiaTriTinhLuong> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_FindGiaTriTinhLuongByName(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()) {
                TableGiaTriTinhLuong tblgttl;
                if (rs.getDouble(2) < 1) {
                    tblgttl = new TableGiaTriTinhLuong(rs.getString(1), FormatNumber.formatDouble(rs.getDouble(2)*100, "###,###.###") + "%");
                } else {
                    tblgttl = new TableGiaTriTinhLuong(rs.getString(1), FormatNumber.formatDouble(rs.getDouble(2), "###,###.###"));
                }

                data.add(tblgttl);
                tblgttl.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Share.blController.deleteGTTL(gttldao.findByCode(tblgttl.getTenGiaTri()).get(0));
                    }
                });
                tblgttl.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Share.blController.gttl = gttldao.findByCode(tblgttl.getTenGiaTri()).get(0);
                        Share.blController.setModelGTTL(Share.blController.gttl);
                        Share.blController.setStatusGTTL(false);
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
