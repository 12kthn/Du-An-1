package Home.controller;

import Home.DAO.BangLuongDAO;
import Home.DAO.NhanVienDAO;
import Home.DAO.TableBangLuongDAO;
import Home.common.Common;
import Home.common.CustomDialog;
import Home.common.XDate;
import Home.model.BangLuong;
import Home.model.NhanVien;
import Home.model.table.TableBangLuong;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXComboBox;
import java.net.URL;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Pos;
import javafx.scene.chart.BarChart;
import javafx.scene.control.Alert;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableColumn.CellDataFeatures;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.CheckBoxTableCell;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.util.Callback;

public class BangLuongController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            bldao = new BangLuongDAO();
            tbl_bldao = new TableBangLuongDAO();
            listUpdate = new ArrayList<>();

            //TabPane1
            loadCboNam1();
            year1 = cboNam1.getSelectionModel().getSelectedItem();
            loadCboThang1();
            month1 = cboThang1.getSelectionModel().getSelectedItem();

            loadChart();

            //TabPane2
            loadCboNam2();
            year2 = cboNam2.getSelectionModel().getSelectedItem();
            loadCboThang2();
            month2 = cboThang2.getSelectionModel().getSelectedItem();
            setColumnModel();
            loadTable(year2, month2);
            setBtnNewStatus();

            //Them su kien
            addListener();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //Them du lieu vao cboNam1
    private void loadCboNam1() {
        cboNam1.getItems().clear();

        cboNam1.getItems().add(LocalDate.now().getYear());//năm hiện tại
        cboNam1.getItems().add(LocalDate.now().getYear() - 1);
        cboNam1.getSelectionModel().select(0);

    }

    //Them du lieu vao cboThang1
    private void loadCboThang1() {
        cboThang1.getItems().clear();
        int monthOfYear = XDate.monthOfYear(year1);
        if (LocalDate.now().getDayOfMonth() >= 5) {
            monthOfYear = monthOfYear - 1;
        } else {
            monthOfYear = monthOfYear - 2;
        }
        for (int i = 1; i <= monthOfYear; i++) {
            cboThang1.getItems().add(i);
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year1 == LocalDate.now().getYear()) {
            cboThang1.getSelectionModel().select(XDate.monthOfYear(year1) - 2);
        } else {
            cboThang1.getSelectionModel().select(0);
        }
    }

    //Them du lieu vao cboNam
    private void loadCboNam2() {
        cboNam2.getItems().clear();

        cboNam2.getItems().add(LocalDate.now().getYear());//năm hiện tại
        cboNam2.getItems().add(LocalDate.now().getYear() - 1);
        cboNam2.getSelectionModel().select(0);

    }

    //Them du lieu vao cboThang2
    private void loadCboThang2() {
        cboThang2.getItems().clear();
        int monthOfYear = XDate.monthOfYear(year2);
        if (LocalDate.now().getDayOfMonth() >= 5) {
            monthOfYear = monthOfYear - 1;
        } else {
            monthOfYear = monthOfYear - 2;
        }
        for (int i = 1; i <= monthOfYear; i++) {
            cboThang2.getItems().add(i);
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year2 == LocalDate.now().getYear()) {
            cboThang2.getSelectionModel().select(XDate.monthOfYear(year2) - 2);
        } else {
            cboThang2.getSelectionModel().select(0);
        }
    }

    //Them su kien cho Combobox
    private void addListener() {

        cboNam1.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year1 = newValue;
                loadCboThang1();
            }
        });

        cboThang1.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                try {
                    month1 = newValue;
                } catch (Exception e) {
                }
                loadChart();
            }
        });

        cboNam2.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year2 = newValue;
                loadCboThang2();
            }
        });

        cboThang2.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                try {
                    month2 = newValue;
                } catch (Exception e) {
                }

                loadTable(year2, month2);
                setBtnNewStatus();
            }
        });
    }

    private void loadChart() {
        chartPhanHoaTienLuong.getData().clear();
        chartPhanHoaTienLuong.getData().add(bldao.getDataForChartPhanHoaTienLuong(year1, month1));

        chartTienLuongTheoPhongBan.getData().clear();
        chartTienLuongTheoPhongBan.getData().add(bldao.getDataForChartTienLuongTheoPhongBan(year1, month1));
    }

    private void setBtnNewStatus() {
        if (tblBangLuong.getItems().isEmpty()) {
            btnNew.setDisable(false);
        } else {
            btnNew.setDisable(true);
        }
    }

    private void setColumnModel() {
        //Khai bao cot
        col1 = new TableColumn<>("Mã nhân viên");
        col1.setCellValueFactory(new PropertyValueFactory<>("MaNV"));
        col2 = new TableColumn<>("Họ tên");
        col2.setCellValueFactory(new PropertyValueFactory<>("HoTen"));
        col3 = new TableColumn<>("Phòng ban");
        col3.setCellValueFactory(new PropertyValueFactory<>("TenPB"));
        col4 = new TableColumn<>("Chức vụ");
        col4.setCellValueFactory(new PropertyValueFactory<>("TenCV"));
        col5 = new TableColumn<>("Ngày phát lương");
        col5.setCellValueFactory(new PropertyValueFactory<>("NgayPhatLuong"));
        col6 = new TableColumn<>("Lương chính");
        col6.setCellValueFactory(new PropertyValueFactory<>("LuongChinh"));
        col7 = new TableColumn<>("Ngày công");
        col7.setCellValueFactory(new PropertyValueFactory<>("NgayCong"));
        col8 = new TableColumn<>("Phụ cấp trách nhiệm");
        col8.setCellValueFactory(new PropertyValueFactory<>("PC_TrachNhiem"));
        col9 = new TableColumn<>("Thu nhập");
        col9.setCellValueFactory(new PropertyValueFactory<>("ThuNhap"));
        col10 = new TableColumn<>("BHXH");
        col10.setCellValueFactory(new PropertyValueFactory<>("BHXH"));
        col11 = new TableColumn<>("BHYT");
        col11.setCellValueFactory(new PropertyValueFactory<>("BHYT"));
        col12 = new TableColumn<>("BHTN");
        col12.setCellValueFactory(new PropertyValueFactory<>("BHTN"));
        col13 = new TableColumn<>("Phụ thuộc");
        col13.setCellValueFactory(new PropertyValueFactory<>("PhuThuoc"));
        col14 = new TableColumn<>("Thuế TNCN");
        col14.setCellValueFactory(new PropertyValueFactory<>("TNCN"));
        col15 = new TableColumn<>("Thực lãnh");
        col15.setCellValueFactory(new PropertyValueFactory<>("ThucLanh"));
        col16 = new TableColumn<>("Trạng thái");
        //dinh dang CheckBox
        col16.setCellValueFactory(new Callback<CellDataFeatures<TableBangLuong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableBangLuong, Boolean> param) {
                TableBangLuong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getTrangThai());

                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new BangLuong(obj.getMaNV(), obj.getNgayPhatLuong(), newValue));
                    }
                });
                return booleanProp;
            }
        });
        col16.setCellFactory(new Callback<TableColumn<TableBangLuong, Boolean>, TableCell<TableBangLuong, Boolean>>() {
            @Override
            public TableCell<TableBangLuong, Boolean> call(TableColumn<TableBangLuong, Boolean> p) {
                CheckBoxTableCell<TableBangLuong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });

        tblBangLuong.getColumns().addAll(col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13,
                col14, col15, col16);
    }

    private void loadTable(int year, int month) {
        tblBangLuong.setItems(tbl_bldao.getData(year, month));
    }

    private BangLuongDAO bldao;
    private TableBangLuongDAO tbl_bldao;
    private int year1;
    private int month1;
    private int year2;
    private int month2;
    private ArrayList<BangLuong> listUpdate;

    private TableColumn<TableBangLuong, String> col1;
    private TableColumn<TableBangLuong, String> col2;
    private TableColumn<TableBangLuong, String> col3;
    private TableColumn<TableBangLuong, String> col4;
    private TableColumn<TableBangLuong, Date> col5;
    private TableColumn<TableBangLuong, Integer> col6;
    private TableColumn<TableBangLuong, Integer> col7;
    private TableColumn<TableBangLuong, Integer> col8;
    private TableColumn<TableBangLuong, Integer> col9;
    private TableColumn<TableBangLuong, Integer> col10;
    private TableColumn<TableBangLuong, Integer> col11;
    private TableColumn<TableBangLuong, Integer> col12;
    private TableColumn<TableBangLuong, Integer> col13;
    private TableColumn<TableBangLuong, Integer> col14;
    private TableColumn<TableBangLuong, Integer> col15;
    private TableColumn<TableBangLuong, Boolean> col16;

    @FXML
    private JFXComboBox<Integer> cboNam1;

    @FXML
    private JFXComboBox<Integer> cboThang1;

    @FXML
    private JFXComboBox<Integer> cboNam2;

    @FXML
    private JFXComboBox<Integer> cboThang2;

    @FXML
    private BarChart<?, ?> chartPhanHoaTienLuong;

    @FXML
    private BarChart<?, ?> chartTienLuongTheoPhongBan;

    @FXML
    private TableView<TableBangLuong> tblBangLuong;

    @FXML
    private JFXButton btnNew;

    @FXML
    private void insert() {
        ObservableList<NhanVien> data = new NhanVienDAO().findByMaPB(null);
        try {
            for (NhanVien nv : data) {
                BangLuong bl = new BangLuong(nv.getMaNV(), XDate.toDate("5/" + (month2 + 1) + "/" + year2), false);
                if (bldao.insert(bl) == 0) {
                    throw new Exception();
                }
            }
            loadTable(year2, month2);
            setBtnNewStatus();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "", "Tạo mới thành công");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    private void update() {
        try {
            for (BangLuong bangLuong : listUpdate) {
                if (bldao.update(bangLuong) == 0) {
                    throw new Exception();
                }
            }
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "", "Cập nhật thành công");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
