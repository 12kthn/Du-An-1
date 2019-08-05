package Home.DAO;

import Home.common.Common;
import Home.common.CustomDialog;
import Home.common.FormatNumber;
import Home.common.JDBC;
import Home.model.NhanVien;
import Home.model.table.TableNhanVien;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.control.Alert;

public class TableNhanVienDAO {

    public ObservableList<TableNhanVien> getData() {
        ObservableList<TableNhanVien> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_TBLNhanVien}";
            ResultSet rs = JDBC.executeQuery(sql);
            while (rs.next()) {
                TableNhanVien tblnv = new TableNhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3) ? "Nam" : "Nữ", rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), FormatNumber.formatDouble(Double.parseDouble(rs.getString(15))),
                        rs.getBoolean(16) ? "Đang làm việc" : "Đã nghỉ việc");

                data.add(tblnv);
                tblnv.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        if (!CustomDialog.confirm("Bạn chắc chắn muốn xóa nhân viên " + tblnv.getHoTen())) {
                            return;
                        }
                        if (new NhanVienDAO().delete(new NhanVien(tblnv.getMaNV())) > 0) {
                            Common.nvController.loadDataToTableNV();
                            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Xóa nhân viên thành công ");
                            Common.nvController.newNV();
                        } else {
                            CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Xóa thông tin nhân viên thất bại! vui lòng kiểm tra lại ");
                        }

                    }
                });
                tblnv.getUpdate().setOnAction((ActionEvent event) -> {
                    NhanVien nv = new NhanVienDAO().findByCode(tblnv.getMaNV());
                    Common.nvController.setModelNhanVien(nv);
                    Common.nvController.changeTabPane(2);
                    Common.nvController.loadDataToTableNT();
                    Common.nvController.setStatusNV(false);
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
