package Home.controller;

import Home.DAO.ChamCongDAO;
import Home.DAO.TableChamCongDAO;
import Home.common.XDate;
import Home.model.table.TableChamCong;
import com.jfoenix.controls.JFXComboBox;
import java.net.URL;
import java.time.LocalDate;
import java.util.ResourceBundle;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Pos;
import javafx.scene.chart.PieChart;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableColumn.CellDataFeatures;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.CheckBoxTableCell;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.util.Callback;

public class ChamCongController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {

            //load Tabpane1
            loadCboNam1();
            year1 = cboNam1.getSelectionModel().getSelectedItem();
            loadCboThang1();
            month1 = cboThang1.getSelectionModel().getSelectedItem();
            loadChart();

            //Loadtabpanel2
            loadCboNam2();
            year2 = cboNam2.getSelectionModel().getSelectedItem();
            loadCboThang2();
            month2 = cboThang2.getSelectionModel().getSelectedItem();
            setColumnModel();
            loadTable();

            //load chung 2 Tab
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
        cboNam1.getItems().add(LocalDate.now().getYear() - 2);
        cboNam1.getItems().add(LocalDate.now().getYear() - 3);
        cboNam1.getSelectionModel().select(0);

    }

    //Them du lieu vao cboThang1
    private void loadCboThang1() {
        cboThang1.getItems().clear();
        for (int i = 1; i <= XDate.monthOfYear(year1); i++) {
            cboThang1.getItems().add(i);
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year1 == LocalDate.now().getYear()) {
            cboThang1.getSelectionModel().select(XDate.monthOfYear(year1) - 1);
        } else {
            cboThang1.getSelectionModel().select(0);
        }
    }

    //Them du lieu vao cboNam2
    private void loadCboNam2() {
        cboNam2.getItems().clear();

        cboNam2.getItems().add(LocalDate.now().getYear());//năm hiện tại
        cboNam2.getItems().add(LocalDate.now().getYear() - 1);
        cboNam2.getItems().add(LocalDate.now().getYear() - 2);
        cboNam2.getItems().add(LocalDate.now().getYear() - 3);
        cboNam2.getSelectionModel().select(0);

    }

    //Them du lieu vao cboThang2
    private void loadCboThang2() {
        cboThang2.getItems().clear();
        for (int i = 1; i <= XDate.monthOfYear(year2); i++) {
            cboThang2.getItems().add(i);
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year2 == LocalDate.now().getYear()) {
            cboThang2.getSelectionModel().select(XDate.monthOfYear(year2) - 1);
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

                loadTable();
            }
        });
    }

    private void loadChart() {
        chuyenCanChart.setData(ccdao.getDataForChuyenCanChart(year1, month1));
        soNgayLamViecChart.setData(ccdao.getDataForSoNgayLamViecChart(year1, month1));
    }

    private void loadTable() {
        tblChamCong.setItems(tbl_ccdao.getData(year2, month2));
    }

    private void setColumnModel() {
        //Khai bao cot
        col1 = new TableColumn<>("Mã nhân viên");
        col1.setCellValueFactory(new PropertyValueFactory<>("maNV"));
        col2 = new TableColumn<>("Họ tên");
        col2.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
        col3 = new TableColumn<>("Phòng ban");
        col3.setCellValueFactory(new PropertyValueFactory<>("phongBan"));
        dateCol = new TableColumn<>("Tháng " + month2 + " năm " + year2);
        col4 = new TableColumn<>("Ngày1");
        col5 = new TableColumn<>("Ngày2");
        col6 = new TableColumn<>("Ngày3");
        col7 = new TableColumn<>("Ngày4");
        col8 = new TableColumn<>("Ngày5");
        col9 = new TableColumn<>("Ngày6");
        col10 = new TableColumn<>("Ngày7");
        col11 = new TableColumn<>("Ngày8");
        col12 = new TableColumn<>("Ngày9");
        col13 = new TableColumn<>("Ngày10");
        col14 = new TableColumn<>("Ngày11");
        col15 = new TableColumn<>("Ngày12");
        col16 = new TableColumn<>("Ngày13");
        col17 = new TableColumn<>("Ngày14");
        col18 = new TableColumn<>("Ngày15");
        col19 = new TableColumn<>("Ngày16");
        col20 = new TableColumn<>("Ngày17");
        col21 = new TableColumn<>("Ngày18");
        col22 = new TableColumn<>("Ngày19");
        col23 = new TableColumn<>("Ngày20");
        col24 = new TableColumn<>("Ngày21");
        col25 = new TableColumn<>("Ngày22");
        col26 = new TableColumn<>("Ngày23");
        col27 = new TableColumn<>("Ngày24");
        col28 = new TableColumn<>("Ngày25");
        col29 = new TableColumn<>("Ngày26");
        col30 = new TableColumn<>("Ngày27");
        col31 = new TableColumn<>("Ngày28");
        col32 = new TableColumn<>("Ngày29");
        col33 = new TableColumn<>("Ngày30");
        col34 = new TableColumn<>("Ngày31");
        //them cot 35 de cot 34 ko bi thieu do dai
        col35 = new TableColumn<>("  ");

        //dinh dang CheckBox cho cac cot
        col4.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay1());
                return booleanProp;
            }
        });
        col4.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col5.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay2());
                return booleanProp;
            }
        });
        col5.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col6.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay3());
                return booleanProp;
            }
        });
        col6.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col7.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay4());
                return booleanProp;
            }
        });
        col7.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col8.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay5());
                return booleanProp;
            }
        });
        col8.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col9.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay6());
                return booleanProp;
            }
        });
        col9.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col10.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay7());
                return booleanProp;
            }
        });
        col10.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col11.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay8());
                return booleanProp;
            }
        });
        col11.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col12.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay9());
                return booleanProp;
            }
        });
        col12.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col13.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay10());
                return booleanProp;
            }
        });
        col13.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col14.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay11());
                return booleanProp;
            }
        });
        col14.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col15.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay12());
                return booleanProp;
            }
        });
        col15.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col16.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay13());
                return booleanProp;
            }
        });
        col16.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col17.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay14());
                return booleanProp;
            }
        });
        col17.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col18.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay15());
                return booleanProp;
            }
        });
        col18.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col19.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay16());
                return booleanProp;
            }
        });
        col19.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col20.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay17());
                return booleanProp;
            }
        });
        col20.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col21.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay18());
                return booleanProp;
            }
        });
        col21.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col22.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay19());
                return booleanProp;
            }
        });
        col22.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col23.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay20());
                return booleanProp;
            }
        });
        col23.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col24.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay21());
                return booleanProp;
            }
        });
        col24.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col25.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay22());
                return booleanProp;
            }
        });
        col25.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col26.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay23());
                return booleanProp;
            }
        });
        col26.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col27.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay24());
                return booleanProp;
            }
        });
        col27.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col28.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay25());
                return booleanProp;
            }
        });
        col28.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col29.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay26());
                return booleanProp;
            }
        });
        col29.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col30.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay27());
                return booleanProp;
            }
        });
        col30.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col31.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay28());
                return booleanProp;
            }
        });
        col31.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col32.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay29());
                return booleanProp;
            }
        });
        col32.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col33.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay30());
                return booleanProp;
            }
        });
        col33.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col34.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay31());
                return booleanProp;
            }
        });
        col34.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });

        dateCol.getColumns().addAll(col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14, col15, col16, col17,
                col18, col19, col20, col21, col22, col23, col24, col25, col26, col27, col28, col29, col30, col31, col32, col33, col34, col35);

        tblChamCong.getColumns().addAll(col1, col2, col3, dateCol);
    }

    TableChamCongDAO tbl_ccdao = new TableChamCongDAO();
    ChamCongDAO ccdao = new ChamCongDAO();

    private int year1;//bien cua tab1
    private int month1;
    private int year2;//bien cua tab2
    private int month2;

    private TableColumn<TableChamCong, String> col1;
    private TableColumn<TableChamCong, String> col2;
    private TableColumn<TableChamCong, String> col3;
    private TableColumn<TableChamCong, String> dateCol;
    private TableColumn<TableChamCong, Boolean> col4;
    private TableColumn<TableChamCong, Boolean> col5;
    private TableColumn<TableChamCong, Boolean> col6;
    private TableColumn<TableChamCong, Boolean> col7;
    private TableColumn<TableChamCong, Boolean> col8;
    private TableColumn<TableChamCong, Boolean> col9;
    private TableColumn<TableChamCong, Boolean> col10;
    private TableColumn<TableChamCong, Boolean> col11;
    private TableColumn<TableChamCong, Boolean> col12;
    private TableColumn<TableChamCong, Boolean> col13;
    private TableColumn<TableChamCong, Boolean> col14;
    private TableColumn<TableChamCong, Boolean> col15;
    private TableColumn<TableChamCong, Boolean> col16;
    private TableColumn<TableChamCong, Boolean> col17;
    private TableColumn<TableChamCong, Boolean> col18;
    private TableColumn<TableChamCong, Boolean> col19;
    private TableColumn<TableChamCong, Boolean> col20;
    private TableColumn<TableChamCong, Boolean> col21;
    private TableColumn<TableChamCong, Boolean> col22;
    private TableColumn<TableChamCong, Boolean> col23;
    private TableColumn<TableChamCong, Boolean> col24;
    private TableColumn<TableChamCong, Boolean> col25;
    private TableColumn<TableChamCong, Boolean> col26;
    private TableColumn<TableChamCong, Boolean> col27;
    private TableColumn<TableChamCong, Boolean> col28;
    private TableColumn<TableChamCong, Boolean> col29;
    private TableColumn<TableChamCong, Boolean> col30;
    private TableColumn<TableChamCong, Boolean> col31;
    private TableColumn<TableChamCong, Boolean> col32;
    private TableColumn<TableChamCong, Boolean> col33;
    private TableColumn<TableChamCong, Boolean> col34;
    private TableColumn<TableChamCong, String> col35;

    @FXML
    private JFXComboBox<Integer> cboNam1;

    @FXML
    private JFXComboBox<Integer> cboThang1;

    @FXML
    private JFXComboBox<Integer> cboNam2;

    @FXML
    private JFXComboBox<Integer> cboThang2;

    @FXML
    private TableView<TableChamCong> tblChamCong;

    @FXML
    private PieChart soNgayLamViecChart;

    @FXML
    private PieChart chuyenCanChart;

}
