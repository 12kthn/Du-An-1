package Home.controller;

import Home.common.CustomDialog;
import Home.DAO.ChucVuDAO;
import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableNhanVienDAO;
import Home.common.Common;
import Home.common.Picture;
import Home.common.Validate;
import Home.common.XDate;
import Home.model.ChucVu;
import Home.model.NhanVien;
import Home.model.PhongBan;
import Home.model.ThanNhan;
import Home.model.table.TableNhanVien;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTabPane;
import com.jfoenix.controls.JFXTextField;
import java.io.File;
import java.net.URL;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.FileChooser;

public class NhanVienController implements Initializable {

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            Common.nvController = this;
            nvdao = new NhanVienDAO();
            pbdao = new PhongBanDAO();
            cvdao = new ChucVuDAO();
            tbl_nvdao = new TableNhanVienDAO();

            loadChart();
            setTableNVColumn();
            loadDataToTableNV();
            DPickerNgaySinh.setConverter(XDate.converter);
            DPickerNgayBatDau.setConverter(XDate.converter);
            DPickerNgayKetThuc.setConverter(XDate.converter);
            loadCbo();
            clearNV();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void loadChart() {
        chartTyLeNamNu.setData(nvdao.getDataForPieChart());

        chartSLNhanVien.getData().add(nvdao.getDataForBarChart());
    }

    //định dạng cột cho bảng nhân viên
    private void setTableNVColumn() {
        //Khai bao cot
        deleteColumn = new TableColumn<>("");
        deleteColumn.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn.setStyle("-fx-alignment: CENTER-RIGHT; -fx-border-width: 1 0 1 1;");
        updateColumn = new TableColumn<>("");
        updateColumn.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn.setStyle("-fx-alignment: CENTER-LEFT;");
        col1 = new TableColumn<>("Mã nhân viên");
        col1.setCellValueFactory(new PropertyValueFactory<>("MaNV"));
        col2 = new TableColumn<>("Họ tên");
        col2.setCellValueFactory(new PropertyValueFactory<>("HoTen"));
        col3 = new TableColumn<>("Giới tính");
        col3.setCellValueFactory(new PropertyValueFactory<>("GioiTinh"));
        col4 = new TableColumn<>("Ngày sinh");
        col4.setCellValueFactory(new PropertyValueFactory<>("NgaySinh"));
        col5 = new TableColumn<>("Số CMND");
        col5.setCellValueFactory(new PropertyValueFactory<>("SoCM"));
        col6 = new TableColumn<>("Điện thoại");
        col6.setCellValueFactory(new PropertyValueFactory<>("DienThoai"));
        col7 = new TableColumn<>("Email");
        col7.setCellValueFactory(new PropertyValueFactory<>("Email"));
        col8 = new TableColumn<>("Địa chỉ");
        col8.setCellValueFactory(new PropertyValueFactory<>("DiaChi"));
        col9 = new TableColumn<>("Trình độ học vấn");
        col9.setCellValueFactory(new PropertyValueFactory<>("TrinhDoHV"));
        col10 = new TableColumn<>("Mã hợp đồng");
        col10.setCellValueFactory(new PropertyValueFactory<>("MaHD"));
        col11 = new TableColumn<>("Phòng ban");
        col11.setCellValueFactory(new PropertyValueFactory<>("PhongBan"));
        col12 = new TableColumn<>("Chức vụ");
        col12.setCellValueFactory(new PropertyValueFactory<>("ChucVu"));
        col13 = new TableColumn<>("Ngày vào làm");
        col13.setCellValueFactory(new PropertyValueFactory<>("NgayVaoLam"));
        col14 = new TableColumn<>("Ngày kết thúc");
        col14.setCellValueFactory(new PropertyValueFactory<>("NgayKetThuc"));
        col15 = new TableColumn<>("Hệ số lương");
        col15.setCellValueFactory(new PropertyValueFactory<>("HeSoLuong"));
        col16 = new TableColumn<>("Loại nhân viên");
        col16.setCellValueFactory(new PropertyValueFactory<>("LoaiNhanVien"));
        col17 = new TableColumn<>("Trạng thái");
        col17.setCellValueFactory(new PropertyValueFactory<>("TrangThai"));

        tblNhanVien.getColumns().addAll(deleteColumn, updateColumn, col1, col2, col3, col4, col5, col6, col7, col8, col9, col10,
                col11, col12, col13, col14, col15, col16, col17);
    }

    //hiển thị dữ liệu lên bảng nhân viên
    public void loadDataToTableNV() {
        data = tbl_nvdao.getData();
        tblNhanVien.setItems(data);
    }

    private void loadCbo() {
        listGioiTinh = FXCollections.observableArrayList("Nam", "Nữ");
        cboGioiTinh.setItems(listGioiTinh);

        listTrangThai = FXCollections.observableArrayList("Đang làm việc", "Đã nghỉ việc");
        cboTrangThai.setItems(listTrangThai);

        listPhongBan = pbdao.findByCode(null);
        cboPhongBan.setItems(listPhongBan);

        listChucVu = cvdao.findByCode(null);
        cboChucVu.setItems(listChucVu);
    }

    @FXML
    private void selectNhanVien(MouseEvent event) {
        try {
            TableNhanVien tableNhanVien = tblNhanVien.getSelectionModel().getSelectedItem();
            if (tableNhanVien != null) {
                NhanVien nv = nvdao.findByCode(tableNhanVien.getMaNV());
                setModelnhanvien(nv);
                if (event.getClickCount() == 2 && nv != null) {
                    changeTabPane(2);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void changeTabPane(int tabIndex) {
        tabPane.getSelectionModel().select(tabIndex);
    }

    @FXML
    public void chooserimage() {
        FileChooser selectimage = new FileChooser();
        selectimage.setTitle("select image");
        File file = selectimage.showOpenDialog(Common.mainStage);
        if (file != null) {
            Picture.saveAvatar(file.getAbsoluteFile());
            imagename = file.getName();
            imgHinh.setImage(Picture.readAvatar(imagename));
        }

    }

    NhanVien getmodelnhanvien() {
        //get model  thong tin nhanvien
        NhanVien nv = new NhanVien();
        nv.setMaNV(txtMaNV.getText());
        nv.setHoTen(txtHoTen.getText());
        nv.setGioiTinh(cboGioiTinh.getSelectionModel().getSelectedIndex() == 0);
        nv.setNgaySinh(XDate.toDate(DPickerNgaySinh.getValue()));
        nv.setHinh(imagename);
        nv.setSoCM(txtSoCM.getText());
        nv.setDienThoai(txtDienThoai.getText());
        nv.setEmail(txtEmail.getText());
        nv.setDiaChi(txtDiaChi.getText());
        nv.setTrinhDoHV(txtTrinhDoHV.getText());
        nv.setTrangThai(cboTrangThai.getSelectionModel().getSelectedIndex() == 0);
        nv.setMaHD(txtMaHD.getText());
        nv.setMaPB(cboPhongBan.getSelectionModel().getSelectedItem().getMaPB());
        nv.setMaCV(cboChucVu.getSelectionModel().getSelectedItem().getMaCV());
        nv.setHeSoLuong(Double.parseDouble(txtHeSoLuong.getText()));
        nv.setNgayVaoLam(XDate.toDate(DPickerNgayBatDau.getValue()));
        nv.setNgayKetThuc(XDate.toDate(DPickerNgayKetThuc.getValue()));
        return nv;
    }

    public void setModelnhanvien(NhanVien nv) {

        //set  model thong tin nhan vien
        txtMaNV.setText(nv.getMaNV());
        txtHoTen.setText(nv.getHoTen());

        if (nv.getGioiTinh() == null) {
            cboGioiTinh.getSelectionModel().clearSelection();
        } else {
            cboGioiTinh.getSelectionModel().select(nv.getGioiTinh() ? 0 : 1);
        }

        DPickerNgaySinh.setValue(XDate.toLocalDate(nv.getNgaySinh()));

        txtSoCM.setText(nv.getSoCM());
        txtDienThoai.setText(nv.getDienThoai());
        txtEmail.setText(nv.getEmail());
        txtDiaChi.setText(nv.getDiaChi());
        txtTrinhDoHV.setText(nv.getTrinhDoHV());

        if (nv.getTrangThai() == null) {
            cboTrangThai.getSelectionModel().clearSelection();
        } else {
            cboTrangThai.getSelectionModel().select(nv.getTrangThai() ? 0 : 1);
        }

        imagename = nv.getHinh();
        imgHinh.setImage(Picture.readAvatar(nv.getHinh()));
        txtMaHD.setText(nv.getMaHD());

        if (nv.getMaPB() == null) {
            cboPhongBan.getSelectionModel().clearSelection();
        } else {
            for (PhongBan phongBan : listPhongBan) {
                if (phongBan.getMaPB().equals(nv.getMaPB())) {
                    cboPhongBan.getSelectionModel().select(phongBan);
                }
            }
        }

        if (nv.getMaCV() == null) {
            cboChucVu.getSelectionModel().clearSelection();
        } else {
            for (ChucVu chucvu : listChucVu) {
                if (chucvu.getMaCV().equals(nv.getMaCV())) {
                    cboChucVu.getSelectionModel().select(chucvu);
                }
            }
        }

        txtHeSoLuong.setText(nv.getHeSoLuong() + "");

        DPickerNgayBatDau.setValue(XDate.toLocalDate(nv.getNgayVaoLam()));
        DPickerNgayKetThuc.setValue(XDate.toLocalDate(nv.getNgayKetThuc()));
    }

    //get model thông tin nhân thân
    private void getmodelthanthan(ThanNhan TTNT) {
        TTNT.setHoTen(txtHoTenNT.getText());
        TTNT.setNgheNghiep(txtNgheNghiepNT.getText());
        TTNT.setMoiQuanHe(txtMoiQuanHeNT.getText());
        TTNT.setGiamTruPhuThuoc(Boolean.parseBoolean(txtGTPTNT.getText()));
    }

    //set model thông tin nhân thân 
    private void setmodelthannhan(ThanNhan TTNT) {
        txtHoTenNT.setText(TTNT.getHoTen());
        txtNgheNghiepNT.setText(TTNT.getNgheNghiep());
        txtMoiQuanHeNT.setText(TTNT.getMoiQuanHe());
        txtGTPTNT.setText(String.valueOf(TTNT.getGiamTruPhuThuoc()));
    }
//check null form nhan vien 

    private boolean checknull() {
        if (Validate.isNull(txtMaNV, "mã nhân viên")) {
            return false;
        }
        if (Validate.isNull(txtHoTen, "họ tên nhân viên")) {
            return false;
        }
        if (Validate.isNotSelected(cboGioiTinh, "giới tính")) {
            return false;
        }
        if (DPickerNgaySinh.getValue() == null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng chọn ngày sinh ");
            DPickerNgaySinh.requestFocus();
            return false;
        }
        if (Validate.isNull(txtSoCM, "SCMND")) {
            return false;
        }
        if (Validate.isNull(txtDienThoai, "số điện thoại")) {
            return false;
        }
        if (Validate.isNull(txtEmail, " địa chỉ email")) {
            return false;
        }
        if (Validate.isNull(txtDiaChi, "địa chỉ")) {
            return false;
        }
        if (Validate.isNull(txtTrinhDoHV, "trình độ học vấn ")) {
            return false;
        }
        if (Validate.isNotSelected(cboTrangThai, "giới tính")) {
            return false;
        }
        if (Validate.isNull(txtMaHD, "mã hợp đồng")) {
            return false;
        }
        if (Validate.isNotSelected(cboPhongBan, "phòng ban")) {
            return false;
        }
        if (Validate.isNotSelected(cboChucVu, "Chức vụ")) {
            return false;
        }
        if (Validate.isNull(txtHeSoLuong, "hệ số lương")) {
            return false;
        }
        if (DPickerNgayBatDau.getValue() == null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng chọn ngày bắt đầu ");
            DPickerNgaySinh.requestFocus();
            return false;
        }
        if (DPickerNgayKetThuc.getValue() == null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng chọn ngày kết thúc");
            DPickerNgaySinh.requestFocus();
            return false;
        }
        return true;
    }

    //check content
    private boolean checkContent() {
        //kiểm tra họ và tên
        String regexVietnamese = "[\\p{L}\\p{M} ]+";
        // \\p{L} matches any kind of letter from any language
        // \\p{M} matches a character intended to be combined with another character (e.g. accents, umlauts, enclosing boxes, etc.)
        if (Validate.isNotMatches(txtHoTen, regexVietnamese, "Họ tên không được chứa số và các ký tự đặc biệt")) {
            return false;
        }
        
        //Kiểm tra số CMND
        if (Validate.isNotMatches(txtSoCM, "[0-9]{9,10}", "Số CMND chỉ có 9 hoặc 10 chữ số")) {
            return false;
        }
        
        //Kiểm tra ngày sinh
        if (ChronoUnit.YEARS.between(DPickerNgaySinh.getValue(), LocalDate.now()) < 18) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Nhân viên phải lớn hơn 18 tuổi");
            DPickerNgaySinh.requestFocus();
            return false;
        }
        
        //Kiểm tra số điện thoại
        if (Validate.isNotMatches(txtDienThoai, "[0-9]{10}", "Số điện thoại chỉ có 10 chữ số")) {
            return false;
        }
        
        //Kiểm tra email
        if (Validate.isNotMatches(txtEmail, "\\w+@\\w+(\\.\\w+){1,2}", "Email không đúng định dạng")) {
            return false;
        }
        
        
        //Kiểm tra hệ số lương
        if (Validate.isNotMatches(txtHeSoLuong, "[0-9]+(\\.[0-9]+)?", "Hệ số lương không hợp lệ")) {
            return false;
        }
        
        //Kiểm tra ngày kết thúc hợp đồng lao động
        if (DPickerNgayKetThuc.getValue().isBefore(DPickerNgayBatDau.getValue())) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Ngày kết thúc hợp đồng không được sớm hơn ngày bắt đầu hợp đồng");
            DPickerNgayKetThuc.requestFocus();
            return false;
        }
        
        return true;
    }

    //check duplication
    private boolean checkduplication() {
        if (nvdao.findByCode(txtMaNV.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã nhân viên đã tồn tại");
            txtMaNV.requestFocus();
            return false;
        }
        if (nvdao.findbyCMND(txtSoCM.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Số  CMND đã tồn tại");
            txtSoCM.requestFocus();
            return false;
        }
        if (nvdao.findbyMaHD(txtMaHD.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã hợp đồng đã tồn tại");
            txtMaHD.requestFocus();
            return false;
        }
        return true;
    }

    @FXML
    private void clearNV() {
        setModelnhanvien(new NhanVien());
    }

    //insert nhân viên 
    @FXML
    private void insertnv() {
        if (checknull() && checkContent()&& checkduplication()) {
            NhanVien nv = getmodelnhanvien();
            try {
                nvdao.insertnv(nv);
                loadDataToTableNV();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Thêm nhân viên thành công ");
            } catch (Exception e) {
                e.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Thêm nhân viên thất bại! vui lòng kiểm tra lại ");
            }
        }
    }

    @FXML
    private void updatenv() {
        if (checknull() && checkContent()&& checkduplication()) {
            try {
                NhanVien nv = getmodelnhanvien();
                if (nvdao.updatenv(nv) > 0) {
                    loadDataToTableNV();
                    CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Cập nhật thông tin nhân viên thành công ");
                } else {
                    throw new Exception();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Cập nhật thông tin nhân viên thất bại! vui lòng kiểm tra lại ");
            }
        }
    }

    @FXML
    public void deletenv() {
        NhanVien nv = getmodelnhanvien();
        try {
            nvdao.deletenv(nv);
            loadDataToTableNV();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Xóa nhân viên thành công ");
        } catch (Exception e) {
            e.printStackTrace();
            CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Xóa thông tin nhân viên thất bại! vui lòng kiểm tra lại ");
        }
    }
    @FXML
    private AnchorPane anchorpane;
    @FXML
    private JFXTextField txtMoiQuanHeNT;

    @FXML
    private DatePicker DPickerNgayBatDau;

    @FXML
    private JFXComboBox<PhongBan> cboPhongBan;

    @FXML
    private JFXTextField txtSoCM;

    @FXML
    private DatePicker DPickerNgayKetThuc;

    @FXML
    private JFXComboBox cboGioiTinh;

    @FXML
    private JFXTextField txtHoTenNT;

    @FXML
    private DatePicker DPickerNgaySinh;

    @FXML
    private JFXTextField txtHoTen;

    @FXML
    private JFXTextField txtMaHD;

    @FXML
    private ImageView imgHinh;

    @FXML
    private JFXTextField txtDienThoai;

    @FXML
    private JFXComboBox<?> cboTrangThai;

    @FXML
    private JFXComboBox<ChucVu> cboChucVu;

    @FXML
    private JFXTextField txtGTPTNT;

    @FXML
    private JFXTextField txtEmail;

    @FXML
    private BarChart<?, ?> chartSLNhanVien;

    @FXML
    private JFXTextField txtTrinhDoHV;

    @FXML
    private JFXTextField txtHeSoLuong;

    @FXML
    private JFXTextField txtMaNV;

    @FXML
    private JFXTextField txtDiaChi;

    @FXML
    private PieChart chartTyLeNamNu;

    @FXML
    private JFXTextField txtNgheNghiepNT;

    @FXML
    private TableView<?> tblNhanThan;

    @FXML
    private TableView<TableNhanVien> tblNhanVien;

    @FXML
    private JFXTabPane tabPane;

    private String imagename;
    private NhanVienDAO nvdao;
    private PhongBanDAO pbdao;
    private TableNhanVienDAO tbl_nvdao;
    private ChucVuDAO cvdao;

    private TableColumn<TableNhanVien, Button> deleteColumn;
    private TableColumn<TableNhanVien, Button> updateColumn;
    private TableColumn<TableNhanVien, String> col1;
    private TableColumn<TableNhanVien, String> col2;
    private TableColumn<TableNhanVien, String> col3;
    private TableColumn<TableNhanVien, Date> col4;
    private TableColumn<TableNhanVien, String> col5;
    private TableColumn<TableNhanVien, String> col6;
    private TableColumn<TableNhanVien, String> col7;
    private TableColumn<TableNhanVien, String> col8;
    private TableColumn<TableNhanVien, String> col9;
    private TableColumn<TableNhanVien, String> col10;
    private TableColumn<TableNhanVien, String> col11;
    private TableColumn<TableNhanVien, String> col12;
    private TableColumn<TableNhanVien, Date> col13;
    private TableColumn<TableNhanVien, Date> col14;
    private TableColumn<TableNhanVien, Integer> col15;
    private TableColumn<TableNhanVien, String> col16;
    private TableColumn<TableNhanVien, String> col17;
    private ObservableList<TableNhanVien> data;
    private ObservableList listGioiTinh;
    private ObservableList listTrangThai;
    private ObservableList<PhongBan> listPhongBan;
    private ObservableList<ChucVu> listChucVu;
}
