package Home.controller;

import Home.DAO.ChamCongDAO;
import Home.DAO.TableChamCongDAO;
import Home.common.Common;
import Home.common.CustomDialog;
import Home.common.XDate;
import Home.model.ChamCong;
import Home.model.table.TableChamCong;
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
import javafx.scene.chart.PieChart;
import javafx.scene.control.Alert;
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
            tbl_ccdao = new TableChamCongDAO();
            ccdao = new ChamCongDAO();
            listUpdate = new ArrayList<>();

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

            //load sự kiện
            addListener();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void loadCboNam1() {
        cboNam1.getItems().clear();

        cboNam1.setItems(ccdao.getListYear());
        cboNam1.getSelectionModel().select(0);

    }

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

    private void loadCboNam2() {
        cboNam2.getItems().clear();

        cboNam2.setItems(ccdao.getListYear());
        cboNam2.getSelectionModel().select(0);

    }

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

        //load lại cboThang1 khi thay đổi cboNam1
        cboNam1.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year1 = newValue;
                loadCboThang1();
            }
        });
        //load lại chart khi thay đổi cboThang1
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
        //load lại cboThang2 khi thay đổi cboNam2
        cboNam2.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year2 = newValue;
                loadCboThang2();
            }
        });
        //load lại table khi thay đổi cboThang1
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
        setAllColumnsEditable();
        setColumnsNotEditable();
        tblChamCong.setItems(tbl_ccdao.getData(year2, month2));
    }

    private void setColumnModel() {
        //Khai bao cot
        colMaNV = new TableColumn<>("Mã nhân viên");
        colMaNV.setCellValueFactory(new PropertyValueFactory<>("maNV"));
        colHoTen = new TableColumn<>("Họ tên");
        colHoTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
        colPhongBan = new TableColumn<>("Phòng ban");
        colPhongBan.setCellValueFactory(new PropertyValueFactory<>("phongBan"));
        col1 = new TableColumn<>("Ngày 1");
        col2 = new TableColumn<>("Ngày 2");
        col3 = new TableColumn<>("Ngày 3");
        col4 = new TableColumn<>("Ngày 4");
        col5 = new TableColumn<>("Ngày 5");
        col6 = new TableColumn<>("Ngày 6");
        col7 = new TableColumn<>("Ngày 7");
        col8 = new TableColumn<>("Ngày 8");
        col9 = new TableColumn<>("Ngày 9");
        col10 = new TableColumn<>("Ngày 10");
        col11 = new TableColumn<>("Ngày 11");
        col12 = new TableColumn<>("Ngày 12");
        col13 = new TableColumn<>("Ngày 13");
        col14 = new TableColumn<>("Ngày 14");
        col15 = new TableColumn<>("Ngày 15");
        col16 = new TableColumn<>("Ngày 16");
        col17 = new TableColumn<>("Ngày 17");
        col18 = new TableColumn<>("Ngày 18");
        col19 = new TableColumn<>("Ngày 19");
        col20 = new TableColumn<>("Ngày 20");
        col21 = new TableColumn<>("Ngày 21");
        col22 = new TableColumn<>("Ngày 22");
        col23 = new TableColumn<>("Ngày 23");
        col24 = new TableColumn<>("Ngày 24");
        col25 = new TableColumn<>("Ngày 25");
        col26 = new TableColumn<>("Ngày 26");
        col27 = new TableColumn<>("Ngày 27");
        col28 = new TableColumn<>("Ngày 28");
        col29 = new TableColumn<>("Ngày 29");
        col30 = new TableColumn<>("Ngày 30");
        col31 = new TableColumn<>("Ngày 31");
        //them cot 32 de cot 31 ko bi thieu do dai
        col32 = new TableColumn<>("  ");

        //dinh dang CheckBox cho cac cot
        col1.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay1());

                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("1/" + month2 + "/" + year2), newValue));
                    }
                });
                return booleanProp;
            }
        });
        col1.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col2.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay2());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("2/" + month2 + "/" + year2), newValue));
                    }
                });
                return booleanProp;
            }
        });
        col2.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col3.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay3());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("3/" + month2 + "/" + year2), newValue));
                    }
                });
                return booleanProp;
            }
        });
        col3.setCellFactory(new Callback<TableColumn<TableChamCong, Boolean>, TableCell<TableChamCong, Boolean>>() {
            @Override
            public TableCell<TableChamCong, Boolean> call(TableColumn<TableChamCong, Boolean> p) {
                CheckBoxTableCell<TableChamCong, Boolean> cell = new CheckBoxTableCell<>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        col4.setCellValueFactory(new Callback<CellDataFeatures<TableChamCong, Boolean>, ObservableValue<Boolean>>() {
            @Override
            public ObservableValue<Boolean> call(CellDataFeatures<TableChamCong, Boolean> param) {
                TableChamCong obj = param.getValue();
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay4());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("4/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay5());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("5/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay6());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("6/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay7());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("7/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay8());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("8/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay9());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("9/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay10());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("10/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay11());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("11/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay12());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("12/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay13());//khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("13/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay14());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("14/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay15());//khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("15/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay16());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("16/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay17());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("17/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay18());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("18/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay19());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("19/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay20());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("20/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay21());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("21/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay22());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("22/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay23());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("23/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay24());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("24/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay25());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("25/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay26());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("26/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay27());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("27/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay28());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("28/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay29());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("29/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay30());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("30/" + month2 + "/" + year2), newValue));
                    }
                });
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
                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(obj.getNgay31());
                //khi thay đổi
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue,
                            Boolean newValue) {
                        listUpdate.add(new ChamCong(obj.getMaNV(), XDate.toDate("31/" + month2 + "/" + year2), newValue));
                    }
                });
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

        tblChamCong.getColumns().addAll(colMaNV, colHoTen, colPhongBan, col1, col2, col3, col4, col5, col6, col7, col8, col9,
                col10, col11, col12, col13, col14, col15, col16, col17, col18, col19, col20, col21, col22, col23, col24,
                col25, col26, col27, col28, col29, col30, col31, col32);

    }

    private void setAllColumnsEditable() {
        for (TableColumn<TableChamCong, ?> tableColumn : tblChamCong.getColumns()) {
            tableColumn.setEditable(true);
        }
    }

    private void setColumnsNotEditable() {
        ObservableList<TableColumn<TableChamCong, ?>> colList = tblChamCong.getColumns();
        int maxDay = XDate.maxDaysInMonth(year2, month2);
        //Tao vong lap kiem tra từng ngày
        for (int dayInMonth = 1; dayInMonth <= 31; dayInMonth++) {
            Date date = XDate.toDate(dayInMonth + "/" + month2 + "/" + year2);
            if (dayInMonth <= maxDay) {
                if (XDate.isHoliday(date)) {
                    colList.get(dayInMonth + 2).setEditable(false);//ngày bắt đầu từ cột thứ 3
                }
            } else {
                colList.get(dayInMonth + 2).setEditable(false);
            }
        }
    }

    private TableChamCongDAO tbl_ccdao;
    private ChamCongDAO ccdao;

    private int year1;//bien cua tab1
    private int month1;
    private int year2;//bien cua tab2
    private int month2;

    private ArrayList<ChamCong> listUpdate;

    private TableColumn<TableChamCong, String> colMaNV;
    private TableColumn<TableChamCong, String> colHoTen;
    private TableColumn<TableChamCong, String> colPhongBan;
    private TableColumn<TableChamCong, Boolean> col1;
    private TableColumn<TableChamCong, Boolean> col2;
    private TableColumn<TableChamCong, Boolean> col3;
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
    private TableColumn<TableChamCong, String> col32;

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

    @FXML
    private void update() {
        ArrayList<ChamCong> list = listUpdate;

        for (TableChamCong tableChamCong : tblChamCong.getItems()) {
            for (int i = 0; i < 31; i++) {
                Date ngay = XDate.toDate((i + 1) + "/" + month2 + "/" + year2);
                ChamCong cc;
                if (!XDate.isHoliday(ngay)) {
                    cc = new ChamCong(tableChamCong.getMaNV(), ngay, true);
                } else {
                    cc = new ChamCong(tableChamCong.getMaNV(), ngay, false);
                }
                ccdao.insert(cc);
            }
        }
        loadTable();
//        for (ChamCong cc : list) {
//            //kiểm tra bản ghi có tồn tại hay không
//            if (ccdao.findByCode(cc.getMaNV(), cc.getNgay()) == null) {
//                //Bản ghi không tồn tại -> insert
//                ccdao.insert(cc);
//            } else {
//                //Bản ghi đã tồn tại -> update
//                ccdao.update(cc);
//            }
//        }
        CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "", "Cập nhật thành công");
    }
}
