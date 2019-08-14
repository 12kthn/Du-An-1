package Home.DAO;

import Home.helper.FormatNumber;
import Home.helper.JDBC;
import Home.helper.Share;
import Home.model.table.TableBacThueTNCN;
import Home.model.table.TableGiaTriTinhLuong;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TableBacThueTNCNDAO {

    BacThueTNCNDAO btTNCNdao = new BacThueTNCNDAO();

    public ObservableList<TableBacThueTNCN> getData() {
        ObservableList<TableBacThueTNCN> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_FindBacThueTNCNByThuNhap(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()) {
                TableBacThueTNCN tblBTTNCN = new TableBacThueTNCN(rs.getString(1), FormatNumber.formatDouble(rs.getDouble(2)*100, "###,###.###") + "%");

                data.add(tblBTTNCN);
                tblBTTNCN.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Share.blController.deleteBTTNCN(btTNCNdao.findByCode(tblBTTNCN.getLuong()).get(0));
                    }
                });
                tblBTTNCN.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Share.blController.btTNCN = btTNCNdao.findByCode(tblBTTNCN.getLuong()).get(0);
                        Share.blController.setModelBTTNCN(Share.blController.btTNCN);
                        Share.blController.setStatusBTTNCN(false);
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
