package Home.controller;

import Home.DAO.NhanThanDAO;
import Home.DAO.TableThanNhanDAO;
import Home.model.table.TableNhanThan;
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
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTabPane;
import com.jfoenix.controls.JFXTextField;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
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
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
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
            tbl_ntdao = new TableThanNhanDAO();
            ntdao = new NhanThanDAO();

            //tab 1
            loadCharts();

            //tab 2
            setTableNVColumn();
            loadDataToTableNV();

            //tab 3
            txtMaNVNotification();
            loadComboboxs();
            //tab4 
            setTableNTcolumm();
            //định dạng ngày kiểu dd/MM/yyyy cho DatePicker
            DPickerNgaySinh.setConverter(XDate.converter);
            DPickerNgayBatDau.setConverter(XDate.converter);
            DPickerNgayKetThuc.setConverter(XDate.converter);
            newNV();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //đổ dữ liệu vào các biểu đồ
    private void loadCharts() {
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
//khai bao cot cho bang nhan than 

    private void setTableNTcolumm() {
        HotenNT = new TableColumn<>("Họ tên");
        HotenNT.setCellValueFactory(new PropertyValueFactory<>("HoTen"));
        HotenNT.setPrefWidth(210);
        NgheNghiep = new TableColumn<>("Nghề nghiệp");
        NgheNghiep.setCellValueFactory(new PropertyValueFactory<>("NgheNghiep"));
        NgheNghiep.setPrefWidth(140);
        Moiquanhe = new TableColumn<>("Mối quan hệ");
        Moiquanhe.setCellValueFactory(new PropertyValueFactory<>("MoiQuanHe"));
        Moiquanhe.setPrefWidth(120);
        giamtruphuthuoc = new TableColumn<>("Giảm trừ phụ thuộc");
        giamtruphuthuoc.setCellValueFactory(new PropertyValueFactory<>("GiamTruPhuThuoc"));
        giamtruphuthuoc.setPrefWidth(160);
        tblNhanThan.getColumns().addAll(HotenNT, NgheNghiep, Moiquanhe, giamtruphuthuoc);
    }

    //hiển thị dữ liệu lên bảng nhân viên
    public void loadDataToTableNV() {
        tblNhanVien.setItems(tbl_nvdao.getData());
    }

    // hiển thị dữ liệu table nhân thân 
    public void loadDataToTableNT() {
        tblNhanThan.setItems(tbl_ntdao.getDATA(txtMaNV.getText()));
    }

    //đổ dữ liệu vào các Combobox
    private void loadComboboxs() {
        listGioiTinh = FXCollections.observableArrayList("Nam", "Nữ");
        cboGioiTinh.setItems(listGioiTinh);

        listTrangThai = FXCollections.observableArrayList("Đang làm việc", "Đã nghỉ việc");
        cboTrangThai.setItems(listTrangThai);

        listPhongBan = pbdao.findByCode(null);
        cboPhongBan.setItems(listPhongBan);

        listChucVu = cvdao.findByCode(null);
        cboChucVu.setItems(listChucVu);

        listGiamtruphuthuoc = FXCollections.observableArrayList("Có", "Không");
        cbogiamtruphuthuoc.setItems(listGiamtruphuthuoc);
    }

    //hiển thị thông báo trên TextField mã nhân viên
    private void txtMaNVNotification() {
        txtMaNV.setText("Tự động tạo theo phòng ban");
        txtMaNV.textProperty().addListener(new ChangeListener<String>() {
            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue, String newValue) {
                if (newValue == null) {
                    txtMaNV.setText("Tự động tạo theo phòng ban");
                }
            }

        });
    }

    //Sự kiện click vào bảng nhan vien 
    @FXML
    private void selectNhanVien(MouseEvent event) {
        try {
            TableNhanVien tableNhanVien = tblNhanVien.getSelectionModel().getSelectedItem();
            if (tableNhanVien != null) {
                setStatus(false);
                NhanVien nv = nvdao.findByCode(tableNhanVien.getMaNV());
                setModelNhanVien(nv);
                loadDataToTableNT();
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

    //Chọn ảnh khi click vào ImageView Avatar
    @FXML
    private void selectImage() {
        FileChooser.ExtensionFilter imageFilter = new FileChooser.ExtensionFilter("Image files", "*.jpg", "*.jpeg", "*.png", "*.gif");
        FileChooser selectImage = new FileChooser();
        selectImage.getExtensionFilters().add(imageFilter);
        imageFile = selectImage.showOpenDialog(Common.mainStage);

        //Hiển thị ảnh lên ImageView nếu có file được chọn
        if (imageFile != null) {
            imageName = imageFile.getName();
            try {
                imgHinh.setImage(new Image(imageFile.toURI().toURL().toExternalForm()));
            } catch (MalformedURLException ex) {
                ex.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, "File ảnh không hợp lệ");
            }
        }

    }
//su kien click vao bang nhan than 

    @FXML
    private void selectNhanthan(MouseEvent event) {
        TableNhanThan tableModel = tblNhanThan.getSelectionModel().getSelectedItem();
        ThanNhan nt = ntdao.findByCode(tableModel.getMaTN()).get(0);
        setModelThanNhan(nt);
        
    }

    private boolean copyImageToAvatarFolder() {
        try {
            if (imageFile != null) {
                Picture.saveAvatar(imageFile);
            }
            return true;
        } catch (Exception e) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Lỗi khi copy file ảnh");
            return false;
        }
    }

    private NhanVien getmodelnhanvien() {
        //get model  thong tin nhanvien
        NhanVien nv = new NhanVien();
        nv.setMaNV(txtMaNV.getText());
        nv.setHoTen(txtHoTen.getText());
        nv.setGioiTinh(cboGioiTinh.getSelectionModel().getSelectedIndex() == 0);
        nv.setNgaySinh(XDate.toDate(DPickerNgaySinh.getValue()));
        nv.setHinh(imageName);
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

    //Hiển thị thông tin nhân viên
    public void setModelNhanVien(NhanVien nv) {
        imageName = nv.getHinh();
        imgHinh.setImage(Picture.readAvatar(nv.getHinh()));
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

    //setstatus
    public void setStatus(boolean insertable) {
        this.insertable = insertable;
        txtMaNV.setDisable(true);
        txtMaHD.setDisable(true);
        btnCapnhat.setDisable(insertable);
        btnXoa.setDisable(insertable);
        btnTaomoi.setDisable(insertable);
        btnThem.setDisable(!insertable);
    }

    //get model thông tin nhân thân
    private ThanNhan getModelThanThan() {
        ThanNhan TTNT = new ThanNhan();
        TTNT.setMaNV(txtMaNV.getText());
        TTNT.setHoTen(txtHoTenNT.getText());
        TTNT.setNgheNghiep(txtNgheNghiepNT.getText());
        TTNT.setMoiQuanHe(txtMoiQuanHeNT.getText());
        TTNT.setGiamTruPhuThuoc(cbogiamtruphuthuoc.getSelectionModel().getSelectedIndex() == 0);
        return TTNT;
    }

    //set model thông tin nhân thân 
    private void setModelThanNhan(ThanNhan TTNT) {
        txtHoTenNT.setText(TTNT.getHoTen());
        txtNgheNghiepNT.setText(TTNT.getNgheNghiep());
        txtMoiQuanHeNT.setText(TTNT.getMoiQuanHe());
        if ( TTNT.getGiamTruPhuThuoc()==null) {
            cbogiamtruphuthuoc.getSelectionModel().clearSelection();
        } else {
           cbogiamtruphuthuoc.getSelectionModel().select(TTNT.getGiamTruPhuThuoc()? 0 : 1);
        }
    }

    //check null form nhan vien 
    private boolean checknull() {
        if (Validate.isNull(txtMaNV, "Vui lòng nhập mã nhân viên")) {
            return false;
        }
        if (Validate.isNull(txtHoTen, "Vui lòng nhập họ tên nhân viên")) {
            return false;
        }
        if (Validate.isNotSelected(cboGioiTinh, "Vui lòng chọn giới tính")) {
            return false;
        }
        if (DPickerNgaySinh.getValue() == null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng chọn ngày sinh ");
            DPickerNgaySinh.requestFocus();
            return false;
        }
        if (Validate.isNull(txtSoCM, "Vui lòng nhập số CMND")) {
            return false;
        }
        if (Validate.isNull(txtDienThoai, "Vui lòng nhập số điện thoại")) {
            return false;
        }
        if (Validate.isNull(txtEmail, "Vui lòng nhập địa chỉ email")) {
            return false;
        }
        if (Validate.isNull(txtDiaChi, "Vui lòng nhập địa chỉ")) {
            return false;
        }
        if (Validate.isNull(txtTrinhDoHV, "Vui lòng nhập trình độ học vấn ")) {
            return false;
        }
        if (Validate.isNotSelected(cboTrangThai, "Vui lòng chọn trạng thái")) {
            return false;
        }
        if (Validate.isNull(txtMaHD, "Vui lòng nhập mã hợp đồng")) {
            return false;
        }
        if (Validate.isNotSelected(cboPhongBan, "Vui lòng chọn phòng ban")) {
            return false;
        }
        if (Validate.isNotSelected(cboChucVu, "Vui lòng chọn chức vụ")) {
            return false;
        }
        if (Validate.isNull(txtHeSoLuong, "Vui lòng nhập hệ số lương")) {
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
        if (Validate.isNull(txtHoTenNT, "Vui lòng nhập họ tên nhân thân")) {
            return false;
        }
        if (Validate.isNull(txtNgheNghiepNT, "Vui lòng nhập nghề nghiệp của nhân thân")) {
            return false;
        }
        if (Validate.isNull(txtMoiQuanHeNT, "Vui lòng nhập mối quan hệ nhân thân ")) {
            return false;
        }
        if (Validate.isNotSelected(cbogiamtruphuthuoc, "Vui lòng chọn giảm trừ phụ thuộc")) {
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
        if (Validate.isNotMatches(txtHoTenNT, regexVietnamese, "Họ tên không được chứa số và các ký tự đặc biệt")) {
            return false;
        }
        return true;
    }

    //check duplication
    private boolean checkduplication(NhanVien nv) {
        //Ki
        if (insertable && nvdao.findByCode(txtMaNV.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã nhân viên đã tồn tại");
            txtMaNV.requestFocus();
            return false;
        }

        if (nvdao.findbyCMND(txtSoCM.getText().trim()) != null && !nv.getSoCM().equals(txtSoCM.getText().trim())) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Số  CMND đã tồn tại");
            txtSoCM.requestFocus();
            return false;
        }
        if (nvdao.findbyMaHD(txtMaHD.getText().trim()) != null && !nv.getMaHD().equals(txtMaHD.getText().trim())) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã hợp đồng đã tồn tại");
            txtMaHD.requestFocus();
            return false;
        }
        return true;
    }

    //tạo nhân viên mới
    @FXML
    public void newNV() {
        setModelNhanVien(new NhanVien());
        setStatus(true);
        imageFile = null;
        imageName = "";
    }

    //insert nhân viên 
    @FXML
    private void insertNV() {
        if (checknull() && checkContent() && checkduplication(null) && copyImageToAvatarFolder()) {
            NhanVien nv = getmodelnhanvien();
            try {
                nvdao.insertnv(nv);
                loadDataToTableNV();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Thêm nhân viên thành công ");
                setStatus(false);
            } catch (Exception e) {
                e.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Thêm nhân viên thất bại! vui lòng kiểm tra lại ");
            }
        }
    }

    @FXML
    private void updateNV() {
        NhanVien nv = getmodelnhanvien();
        if (checknull() && checkContent() && checkduplication(nv) && copyImageToAvatarFolder()) {
            try {
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
    public void deleteNV() {
        NhanVien nv = getmodelnhanvien();
        if (!CustomDialog.confirm("Bạn chắc chắn muốn xóa nhân viên " + nv.getHoTen())) {
            return;
        }
        try {
            nvdao.deletenv(nv);
            loadDataToTableNV();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Xóa nhân viên thành công");
            newNV();
            tblNhanVien.getSelectionModel().clearSelection();
        } catch (Exception e) {
            e.printStackTrace();
            CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Xóa nhân viên thất bại! vui lòng kiểm tra lại ");
        }
    }

    @FXML
    private void insertNT() {
        if (checknull() && checkContent()) {
            ThanNhan nt = getModelThanThan();
            try {
                ntdao.insertNT(nt);
                loadDataToTableNT();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Thêm thông tin nhân thân thành công ");
            } catch (Exception e) {
                e.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Thêm thông tin nhân thân thất bại! vui lòng kiểm tra lại ");
            }
        }

    }

    @FXML
    private void updateNT() {
        if (checknull() && checkContent()) {
            ThanNhan nt = new ThanNhan();
            try {
                ntdao.updateNT(nt);
                loadDataToTableNT();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System", "Cập nhật thông tin nhân thân thành công ");
            } catch (Exception e) {
                e.printStackTrace();
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Management System", "Cập nhật thông tin nhân thân thất bại! vui lòng kiểm tra lại ");
            }
        }
    }
    @FXML
    private JFXButton btnThem;

    @FXML
    private JFXButton btnCapnhat;

    @FXML
    private JFXButton btnXoa;

    @FXML
    private JFXButton btnTaomoi;

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
    private JFXComboBox cbogiamtruphuthuoc;
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
    private TableView<TableNhanThan> tblNhanThan;

    @FXML
    private TableView<TableNhanVien> tblNhanVien;
    @FXML
    private JFXTabPane tabPane;
    private NhanThanDAO ntdao;
    private NhanVienDAO nvdao;
    private PhongBanDAO pbdao;
    private TableThanNhanDAO tbl_ntdao;
    private TableNhanVienDAO tbl_nvdao;
    private ChucVuDAO cvdao;
    private ObservableList listGiamtruphuthuoc;
    private ObservableList listGioiTinh;
    private ObservableList listTrangThai;
    private ObservableList<PhongBan> listPhongBan;
    private ObservableList<ChucVu> listChucVu;
    private Boolean insertable;
    private String imageName;
    private File imageFile;
    private NhanVien nv;

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
    private TableColumn<TableNhanThan, String> HotenNT;
    private TableColumn<TableNhanThan, String> NgheNghiep;
    private TableColumn<TableNhanThan, String> Moiquanhe;
    private TableColumn<TableNhanThan, String> giamtruphuthuoc;
}
