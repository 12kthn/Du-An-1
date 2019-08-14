package Home.controller;

import Home.DAO.BacThueTNCNDAO;
import Home.DAO.BangLuongDAO;
import Home.DAO.GiaTriTinhLuongDAO;
import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableBacThueTNCNDAO;
import Home.DAO.TableBangLuongDAO;
import Home.DAO.TableGiaTriTinhLuongDAO;
import Home.helper.Share;
import Home.helper.CustomDialog;
import Home.helper.FormatNumber;
import Home.helper.IConfirmationDialog;
import Home.helper.TransitionHelper;
import Home.helper.Validate;
import Home.helper.XDate;
import Home.model.BacThueTNCN;
import Home.model.BangLuong;
import Home.model.GiaTriTinhLuong;
import Home.model.NhanVien;
import Home.model.table.TableBacThueTNCN;
import Home.model.table.TableBangLuong;
import Home.model.table.TableGiaTriTinhLuong;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTextField;
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
import javafx.scene.chart.BarChart;
import javafx.scene.control.Button;
import javafx.scene.control.Tab;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableColumn.CellDataFeatures;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.CheckBoxTableCell;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.util.Callback;

public class BangLuongController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            TransitionHelper.createTransition(300, 1000, -1 * anchorPane.getPrefWidth() / 2, anchorPane).play();
            Share.blController = this;
            
            bldao = new BangLuongDAO();
            tbl_bldao = new TableBangLuongDAO();
            tbl_gttldao = new TableGiaTriTinhLuongDAO();
            gttldao = new GiaTriTinhLuongDAO();
            tbl_btTNCNdao = new TableBacThueTNCNDAO();
            btTNCNdao = new BacThueTNCNDAO();
            listUpdate = new ArrayList<>();
            customDialog = new CustomDialog();

            //TabPane1
            loadCboNam1();
            year1 = cboNam1.getSelectionModel().getSelectedItem();
            loadCboThang1();
            month1 = Integer.valueOf(cboThang1.getSelectionModel().getSelectedItem());

            loadChart();

            //TabPane2
            loadCboNam2();
            year2 = cboNam2.getSelectionModel().getSelectedItem();
            loadCboThang2();
            month2 = Integer.valueOf(cboThang2.getSelectionModel().getSelectedItem());
            setColumnModel();
            loadTable(year2, month2);
            setBtnNewStatus();

            //Them su kien
            addListener();

            accessPermission();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void accessPermission() {
        if (Share.MAPB != null) {
            chartPhanHoaTienLuong.setTitle(chartPhanHoaTienLuong.getTitle() + "\nphòng "
                    + new PhongBanDAO().findByCode(Share.MAPB + "").get(0).getTenPB());
        }
        if (Share.MAPB != null && !Share.MAPB.equals("KT")) {
            btnNew.setDisable(true);
            btnUpdate.setDisable(true);
            tab3.setDisable(true);
        } else {
            //TabPane 3
            setColumnTableGTTL();
            setColumnTableBTTNCN();
            
            loadTableGTTL();
            loadTableBTTNCN();
            
            newGTTL();
            newBTTNCN();
        }
    }

    private void loadCboNam1() {
        cboNam1.getItems().clear();

        cboNam1.setItems(bldao.getListYear());
        cboNam1.getSelectionModel().select(0);
    }

    private void loadCboThang1() {
        cboThang1.getItems().clear();
        int monthOfYear = XDate.monthOfYear(year1);
        if (year1 == LocalDate.now().getYear()) {
            if (LocalDate.now().getDayOfMonth() < 5) {
                monthOfYear = monthOfYear - 2;
            } else {
                monthOfYear = monthOfYear - 1;
            }
        }
        for (int i = 1; i <= monthOfYear; i++) {
            cboThang1.getItems().add(String.format("%02d", i));
        }

        //mặc định cboThang1 chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year1 == LocalDate.now().getYear()) {
            cboThang1.getSelectionModel().select(monthOfYear - 1);
        } else {
            cboThang1.getSelectionModel().select(0);
        }
    }

    private void loadCboNam2() {
        cboNam2.getItems().clear();
        cboNam2.setItems(bldao.getListYear());
        cboNam2.getSelectionModel().select(0);

    }

    private void loadCboThang2() {
        cboThang2.getItems().clear();
        int monthOfYear = XDate.monthOfYear(year2);
        if (year2 == LocalDate.now().getYear()) {
            if (LocalDate.now().getDayOfMonth() < 5) {
                monthOfYear = monthOfYear - 2;
            } else {
                monthOfYear = monthOfYear - 1;
            }
        }
        for (int i = 1; i <= monthOfYear; i++) {
            cboThang2.getItems().add(String.format("%02d", i));
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year2 == LocalDate.now().getYear()) {
            cboThang2.getSelectionModel().select(monthOfYear - 1);
        } else {
            cboThang2.getSelectionModel().select(0);
        }
    }

    private void addListener() {

        cboNam1.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year1 = newValue;
                loadCboThang1();
            }
        });

        cboThang1.valueProperty().addListener(new ChangeListener<String>() {
            @Override
            public void changed(ObservableValue ov, String oldValue, String newValue) {
                try {
                    month1 = Integer.parseInt(newValue);
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

        cboThang2.valueProperty().addListener(new ChangeListener<String>() {
            @Override
            public void changed(ObservableValue ov, String oldValue, String newValue) {
                try {
                    month2 = Integer.parseInt(newValue);
                } catch (Exception e) {
                }

                loadTable(year2, month2);
                setBtnNewStatus();
            }
        });
        
        txtTimKiem.textProperty().addListener(new ChangeListener<String>(){
            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue, String newValue) {
                loadTable(year2, month2);
            }
            
        });
    }

    private void loadChart() {
        chartPhanHoaTienLuong.getData().clear();
        chartPhanHoaTienLuong.getData().add(bldao.getDataForChartPhanHoaTienLuong(year1, month1));

        chartTienLuongTheoPhongBan.getData().clear();
        chartTienLuongTheoPhongBan.getData().add(bldao.getDataForChartTienLuongTheoPhongBan(year1, month1));
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
                return cell;
            }
        });
        col16.setStyle("-fx-alignment: CENTER;");

        tblBangLuong.getColumns().addAll(col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13,
                col14, col15, col16);
    }

    private void setColumnTableGTTL() {
        //Tạo và định dạng cột
        deleteColumn_GTTL = new TableColumn<>("");
        deleteColumn_GTTL.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn_GTTL.setStyle("-fx-alignment: CENTER-RIGHT; "
                + "-fx-border-width: 1 0 1 1; "
                + "-fx-border-color: transparent");

        updateColumn_GTTL = new TableColumn<>("");
        updateColumn_GTTL.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn_GTTL.setStyle("-fx-alignment: CENTER-LEFT;");

        col1_GTTL = new TableColumn<>("Tên giá trị");
        col1_GTTL.setCellValueFactory(new PropertyValueFactory<>("TenGiaTri"));
        col1_GTTL.setPrefWidth(190);

        col2_GTTL = new TableColumn<>("Giá trị");
        col2_GTTL.setCellValueFactory(new PropertyValueFactory<>("GiaTri"));
        col2_GTTL.setPrefWidth(190);

        //thêm các cột vào table
        tblGTTL.getColumns().addAll(deleteColumn_GTTL, updateColumn_GTTL, col1_GTTL, col2_GTTL);
    }

    private void setColumnTableBTTNCN() {
        //Tạo và định dạng cột
        deleteColumn_BTTNCN = new TableColumn<>("");
        deleteColumn_BTTNCN.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn_BTTNCN.setStyle("-fx-alignment: CENTER-RIGHT; "
                + "-fx-border-width: 1 0 1 1; "
                + "-fx-border-color: transparent");

        updateColumn_BTTNCN = new TableColumn<>("");
        updateColumn_BTTNCN.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn_BTTNCN.setStyle("-fx-alignment: CENTER-LEFT;");

        col1_BTTNCN = new TableColumn<>("Thu nhập chịu thuế");
        col1_BTTNCN.setCellValueFactory(new PropertyValueFactory<>("Luong"));
        col1_BTTNCN.setPrefWidth(190);

        col2_BTTNCN = new TableColumn<>("Thuế suất");
        col2_BTTNCN.setCellValueFactory(new PropertyValueFactory<>("Thue"));
        col2_BTTNCN.setPrefWidth(190);

        //thêm các cột vào table
        tblBTTNCN.getColumns().addAll(deleteColumn_BTTNCN, updateColumn_BTTNCN, col1_BTTNCN, col2_BTTNCN);
    }

    private void loadTable(int year, int month) {
        tblBangLuong.getItems().clear();
        tblBangLuong.setItems(tbl_bldao.getData(year, month, txtTimKiem.getText()));
    }

    private void loadTableGTTL() {
        tblGTTL.setItems(tbl_gttldao.getData());
    }

    private void loadTableBTTNCN() {
        tblBTTNCN.setItems(tbl_btTNCNdao.getData());
    }

    @FXML
    private void selectGTTL(MouseEvent event) {
        TableGiaTriTinhLuong tableModel = tblGTTL.getSelectionModel().getSelectedItem();
        if (tableModel != null) {
            gttl = gttldao.findByCode(tableModel.getTenGiaTri()).get(0);
            setModelGTTL(gttl);
            setStatusGTTL(false);
        }
    }

    @FXML
    private void selectBTTNCN(MouseEvent event) {
        TableBacThueTNCN tableModel = tblBTTNCN.getSelectionModel().getSelectedItem();
        if (tableModel != null) {
            btTNCN = btTNCNdao.findByCode(tableModel.getLuong()).get(0);
            setModelBTTNCN(btTNCN);
            setStatusBTTNCN(false);
        }

    }

    public void setModelGTTL(GiaTriTinhLuong gttl) {
        txtTenGiaTri.setText(gttl.getTenGiaTri());
        txtGiaTri.setText(FormatNumber.formatDouble(gttl.getGiaTri(), "###,###.###"));
    }

    private GiaTriTinhLuong getModelGTTL() {
        GiaTriTinhLuong gttl = new GiaTriTinhLuong();
        gttl.setTenGiaTri(txtTenGiaTri.getText());
        gttl.setGiaTri(Double.parseDouble(txtGiaTri.getText()));
        return gttl;

    }

    public void setModelBTTNCN(BacThueTNCN btTNCN) {
        txtThuNhapTinhThue.setText(btTNCN.getLuong() + "");
        txtThueSuat.setText(FormatNumber.formatDouble(btTNCN.getThue(), "###,###.###"));
    }

    private BacThueTNCN getModelBTTNCN() {
        BacThueTNCN btTNCN = new BacThueTNCN();
        btTNCN.setLuong(Integer.parseInt(txtThuNhapTinhThue.getText()));
        btTNCN.setThue(Double.parseDouble(txtThueSuat.getText()));
        return btTNCN;

    }

    public void setStatusGTTL(boolean insertableGTTL) {
        txtTenGiaTri.setDisable(!insertableGTTL);
        btnInsertGTTL.setDisable(!insertableGTTL);
        btnUpdateGTTL.setDisable(insertableGTTL);
        btnNewGTTL.setDisable(insertableGTTL);
    }

    public void setStatusBTTNCN(boolean insertableBTTNCN) {
        txtThuNhapTinhThue.setDisable(!insertableBTTNCN);
        btnInsertBTTNCN.setDisable(!insertableBTTNCN);
        btnUpdateBTTNCN.setDisable(insertableBTTNCN);
        btnNewBTTNCN.setDisable(insertableBTTNCN);
    }

    private boolean checkNullGTTL() {
        if (Validate.isNull(txtTenGiaTri, "Vui lòng nhập tên giá trị")) {
            return false;
        }
        if (Validate.isNull(txtGiaTri, "Vui lòng nhập tên giá trị")) {
            return false;
        }
        return true;
    }

    private boolean checkNullBTTNCN() {
        if (Validate.isNull(txtThuNhapTinhThue, "Vui lòng nhập thu nhập tính thuế")) {
            return false;
        }
        if (Validate.isNull(txtThueSuat, "Vui lòng nhập tên thuế suất")) {
            return false;
        }
        return true;
    }

    private boolean checkDuplicationGTTL() {
        if (gttldao.findByCode(txtTenGiaTri.getText().trim()).size() > 0) {
            customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Tên giá trị đã tồn tại");
            txtTenGiaTri.requestFocus();
            return false;
        }
        return true;
    }

    private boolean checkDuplicationBTTNCN() {
        if (btTNCNdao.findByCode(txtThuNhapTinhThue.getText().trim()).size() > 0) {
            customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Thu nhập tính thuế đã tồn tại");
            txtThuNhapTinhThue.requestFocus();
            return false;
        }
        return true;
    }

    private boolean checkContentGTTL() {
        String regexVietnamese = "[\\p{L}\\p{M} ]+";
        if (Validate.isNotMatches(txtTenGiaTri, regexVietnamese, "Tên giá trị không được chứa số và các ký tự đặc biệt")) {
            return false;
        }

        if (Validate.isNotMatches(txtGiaTri, "[0-9]+(\\.[0-9]+)?", "Giá trị phải là số thực")) {
            return false;
        }
        return true;
    }

    private boolean checkContentBTTNCN() {
        if (Validate.isNotMatches(txtThuNhapTinhThue, "[0-9]+", "Thu nhập tính thuế phải là số nguyên")) {
            return false;
        }

        if (Validate.isNotMatches(txtThueSuat, "[0-9]+(\\.[0-9]+)?", "Thuế suất phải là số thực")) {
            return false;
        }
        return true;
    }

    private void setBtnNewStatus() {
        if (tblBangLuong.getItems().isEmpty()) {
            btnNew.setDisable(false);
        } else {
            btnNew.setDisable(true);
        }
    }

    @FXML
    private void insert() {
        ObservableList<NhanVien> data = new NhanVienDAO().findByMonth(year2, month2, null);
        try {
            Date ngayNhanLuong;
            if (month2 == 12) {
                ngayNhanLuong = XDate.toDate("5/1/" + (year2 + 1));
            } else {
                ngayNhanLuong = XDate.toDate("5/" + (month2 + 1) + "/" + year2);
            }
            for (NhanVien nv : data) {
                BangLuong bl = new BangLuong(nv.getMaNV(), ngayNhanLuong, true);
                if (bldao.insert(bl) == 0) {
                    throw new Exception();
                }
            }
            loadTable(year2, month2);
            setBtnNewStatus();
            customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Tạo mới thành công");
        } catch (Exception ex) {
            ex.printStackTrace();
            customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Tạo mới thất bại");
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
            customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Cập nhật thành công");
        } catch (Exception ex) {
            ex.printStackTrace();
            customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Cập nhật thất bại");
        }
    }

    @FXML
    private void newGTTL() {
        gttl = null;
        setModelGTTL(new GiaTriTinhLuong());
        setStatusGTTL(true);
    }

    @FXML
    private void newBTTNCN() {
        btTNCN = null;
        setModelBTTNCN(new BacThueTNCN());
        setStatusBTTNCN(true);
    }

    @FXML
    private void insertGTTL() {
        if (checkNullGTTL() && checkDuplicationGTTL() && checkContentGTTL()) {
            gttl = getModelGTTL();
            try {
                if (gttldao.insert(gttl) > 0) {
                    loadTableGTTL();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Thêm mới giá trị thành công ");
                    newGTTL();
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Thêm mới giá trị thất bại! vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }
    }

    @FXML
    private void insertBTTNCN() {
        if (checkNullBTTNCN() && checkDuplicationBTTNCN() && checkContentBTTNCN()) {
            btTNCN = getModelBTTNCN();
            try {
                if (gttldao.insert(gttl) > 0) {
                    loadTableBTTNCN();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Thêm mới thu nhập tính thuế thành công ");
                    newBTTNCN();
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Thêm mới thu nhập tính thuế thất bại! vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }
    }

    @FXML
    private void updateGTTL() {
        if (checkNullGTTL() && checkDuplicationGTTL() && checkContentGTTL()) {
            gttl = getModelGTTL();
            try {
                if (gttldao.update(gttl) > 0) {
                    loadTableGTTL();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Cập nhật giá trị thành công ");
                    newGTTL();
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Cập nhật giá trị thất bại! Vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }
    }

    @FXML
    private void updateBTTNCN() {
        if (checkNullBTTNCN() && checkDuplicationBTTNCN() && checkContentBTTNCN()) {
            btTNCN = getModelBTTNCN();
            try {
                if (gttldao.update(gttl) > 0) {
                    loadTableBTTNCN();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Cập nhật thu nhập tính thuế thành công ");
                    newBTTNCN();
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Cập nhật thu nhập tính thuế thất bại! Vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }
    }

    public void deleteGTTL(GiaTriTinhLuong gttl) {
        this.gttl = gttl;
        customDialog.confirmDialog(Share.mainPane, Share.blurPane, "Bạn chắc chắn muốn xóa giá trị " + gttl.getTenGiaTri(), new deleteGTTLHandler());
    }
    
    public void deleteBTTNCN(BacThueTNCN btTNCN) {
        this.btTNCN = btTNCN;
        customDialog.confirmDialog(Share.mainPane, Share.blurPane, "Bạn chắc chắn muốn xóa thu nhập tính thuế " + btTNCN.getLuong(), new deleteGTTLHandler());
    }
    

    private BangLuongDAO bldao;
    private TableBangLuongDAO tbl_bldao;
    private GiaTriTinhLuongDAO gttldao;
    private BacThueTNCNDAO btTNCNdao;
    private TableGiaTriTinhLuongDAO tbl_gttldao;
    private TableBacThueTNCNDAO tbl_btTNCNdao;
    public GiaTriTinhLuong gttl;
    public BacThueTNCN btTNCN;

    private CustomDialog customDialog;
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

    //Khai báo  các cột cho bảng Giá trị tính lương
    private TableColumn<TableGiaTriTinhLuong, Button> deleteColumn_GTTL;
    private TableColumn<TableGiaTriTinhLuong, Button> updateColumn_GTTL;
    private TableColumn<TableGiaTriTinhLuong, String> col1_GTTL;
    private TableColumn<TableGiaTriTinhLuong, String> col2_GTTL;

    //Khai báo các cột cho bảng Bậc thuế TNCN
    private TableColumn<TableBacThueTNCN, Button> deleteColumn_BTTNCN;
    private TableColumn<TableBacThueTNCN, Button> updateColumn_BTTNCN;
    private TableColumn<TableBacThueTNCN, String> col1_BTTNCN;
    private TableColumn<TableBacThueTNCN, String> col2_BTTNCN;

    @FXML
    private AnchorPane anchorPane;

    @FXML
    private Tab tab3;
    
    @FXML
    private JFXComboBox<Integer> cboNam1;

    @FXML
    private JFXComboBox<String> cboThang1;

    @FXML
    private JFXComboBox<Integer> cboNam2;

    @FXML
    private JFXComboBox<String> cboThang2;

    @FXML
    private BarChart<?, ?> chartPhanHoaTienLuong;

    @FXML
    private BarChart<?, ?> chartTienLuongTheoPhongBan;

    @FXML
    private TableView<TableBangLuong> tblBangLuong;

    @FXML
    private JFXButton btnNew;

    @FXML
    private JFXButton btnUpdate;

    @FXML
    private TextField txtTimKiem;
    
    @FXML
    private JFXTextField txtTenGiaTri;

    @FXML
    private JFXTextField txtGiaTri;

    @FXML
    private JFXTextField txtThuNhapTinhThue;

    @FXML
    private JFXTextField txtThueSuat;

    @FXML
    private JFXButton btnInsertGTTL;

    @FXML
    private JFXButton btnUpdateGTTL;

    @FXML
    private JFXButton btnNewGTTL;

    @FXML
    private JFXButton btnInsertBTTNCN;

    @FXML
    private JFXButton btnUpdateBTTNCN;

    @FXML
    private JFXButton btnNewBTTNCN;

    @FXML
    private TableView<TableGiaTriTinhLuong> tblGTTL;

    @FXML
    private TableView<TableBacThueTNCN> tblBTTNCN;

    class deleteGTTLHandler implements IConfirmationDialog {

        @Override
        public void onConfirm() {
            try {
                if (gttldao.delete(gttl) > 0) {
                    loadTableGTTL();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Xóa giá trị thành công ");
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Xóa giá trị thất bại! Vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }

        @Override
        public void onCancel() {

        }

    }

    class deleteBTTNCNHandler implements IConfirmationDialog {

        @Override
        public void onConfirm() {
            try {
                if (gttldao.delete(gttl) > 0) {
                    loadTableBTTNCN();
                    customDialog.showDialog(Share.mainPane, Share.blurPane, true, "Xóa thu nhập tính thuế thành công ");
                    newBTTNCN();
                } else {
                    throw new Exception();
                }
            } catch (Exception e) {
                customDialog.showDialog(Share.mainPane, Share.blurPane, false, "Xóa thu nhập tính thuế thất bại! Vui lòng kiểm tra lại ");
                e.printStackTrace();
            }
        }

        @Override
        public void onCancel() {

        }

    }
}
