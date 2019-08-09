package Home.DAO;

import Home.helper.Share;
import Home.helper.CustomDialog;
import Home.helper.FormatNumber;
import Home.helper.JDBC;
import Home.model.table.TableChucVu;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TableChucVuDAO {

    ChucVuDAO cvdao = new ChucVuDAO();

    public ObservableList<TableChucVu> getData() {
        ObservableList<TableChucVu> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_FindChucVuByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()) {
                TableChucVu tblcv = new TableChucVu(rs.getString(1), rs.getString(2), FormatNumber.formatDouble(rs.getDouble(3)) + "%");

                data.add(tblcv);
                tblcv.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        if (CustomDialog.confirm("Bạn chắc chắn muốn xóa Chức vụ " + tblcv.getTenCV())) {
                            Share.tcController.deleteCV(cvdao.findByCode(tblcv.getMaCV()).get(0));
                        }
                    }
                });
                tblcv.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Share.tcController.setModel(cvdao.findByCode(tblcv.getMaCV()).get(0));
                        Share.tcController.setStatusPB(false);
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            JDBC.closeConnection();
        }
        return data;
    }
}
