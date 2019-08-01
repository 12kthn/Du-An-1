package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.common.XDate;
import Home.model.NhanVien;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.PieChart;
import javafx.scene.chart.XYChart;
import Home.model.ThanNhan;
import org.omg.CORBA.NVList;

public class NhanVienDAO {

    public NhanVien findByCode(String code) {
        NhanVien nhanVien = null;
        try {
            String sql = "{Call SP_FindNVByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {
                nhanVien = new NhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getDate(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getDate(14), rs.getDate(15), rs.getInt(16), rs.getBoolean(17));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return nhanVien;
    }

    public NhanVien findbyCMND(String cmnd) {
        NhanVien nhanVien = null;
        try {
            String sql = "{Call SP_FindNVByCMND(?)}";
            ResultSet rs = JDBC.executeQuery(sql, cmnd);
            while (rs.next()) {
                nhanVien = new NhanVien(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return nhanVien;
    }

    public NhanVien findbyMaHD(String MaHD) {
        NhanVien nhanVien = null;
        try {
            String sql = "{Call SP_FindNVByMaHD(?)}";
            ResultSet rs = JDBC.executeQuery(sql, MaHD);
            while (rs.next()) {
                nhanVien = new NhanVien(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return nhanVien;
    }

    public ObservableList<NhanVien> findByMaPB(String maPB) {
        ObservableList<NhanVien> list = FXCollections.observableArrayList();

        try {
            String sql = "{Call SP_FindNVTheoPB(?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB);
            while (rs.next()) {
                NhanVien nv = new NhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getDate(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getDate(14), rs.getDate(15), rs.getInt(16), rs.getBoolean(17));
                list.add(nv);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public int getSLNVTheoPhongBan(Object maPB) {
        int SLNhanVien = 0;
        try {
            String sql = "{call SP_SLNVTheoPB(?)}";
            ResultSet rs = JDBC.executeQuery(sql, maPB);
            while (rs.next()) {
                SLNhanVien += rs.getInt(2);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SLNhanVien;
    }

    public int getSLNVTheoPBVaNam(int year) {
        int SLNhanVien = 0;
        try {
            String sql = "{call SP_SLNVTheoPBVaNam(?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null, year);
            while (rs.next()) {
                SLNhanVien += rs.getInt(2);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SLNhanVien;
    }

    public ObservableList getSLNVTheoPBVaMoiThang(String MaPB, int year) {
        ObservableList data = FXCollections.observableArrayList();
        int month = XDate.monthOfYear(year);
        for (int i = 1; i <= month; i++) {
            try {
                String sql = "{call SP_SLNVTheoPBVaThang(?,?,?)}";
                ResultSet rs = JDBC.executeQuery(sql, MaPB, i + "", year + "");
                while (rs.next()) {
                    data.add(new XYChart.Data("Tháng " + i, rs.getInt(1)));
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return data;
    }

    public int getSLNVTheoPBVaThang(Object MaPB, int year, int month) {
        try {
            String sql = "{call SP_SLNVTheoPBVaThang(?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, MaPB, month, year);
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return 0;
    }

    public ObservableList<NhanVien> findByMonth(int year, int month) {
        ObservableList<NhanVien> list = FXCollections.observableArrayList();

        try {
            String sql = "{Call SP_FindByMonth(?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB, year, month);
            while (rs.next()) {
                NhanVien nv = new NhanVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getDate(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getDate(14), rs.getDate(15), rs.getInt(16), rs.getBoolean(17));
                list.add(nv);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public ObservableList<PieChart.Data> getDataForPieChart() {
        ObservableList<PieChart.Data> data = FXCollections.observableArrayList();
        try {
            String sql = "{call SP_SLNamNu(?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB);
            while (rs.next()) {
                data.add(new PieChart.Data(rs.getBoolean(1) ? "Nam" : "Nữ", rs.getInt(2)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }

    public XYChart.Series getDataForBarChart() {
        XYChart.Series data = new XYChart.Series<>();
        double SLNV = 0; //tong so luong nhan vien
        int count = 0; //So luong phong ban
        try {
            String sql = "{call SP_SLNVTheoPB(?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB);
            while (rs.next()) {
                data.getData().add(new XYChart.Data(rs.getString(1), rs.getDouble(2)));
                SLNV += rs.getDouble(2);
                count++;
            }
            data.getData().add(new XYChart.Data("Trung bình", SLNV / count));

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }

    public int insertnv(NhanVien nv) {
        try {
            String sql = "{call sp_nhanvien(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    nv.getMaNV(),
                    nv.getHoTen(),
                    nv.getGioiTinh(),
                    nv.getNgaySinh(),
                    nv.getSoCM(),
                    nv.getDienThoai(),
                    nv.getEmail(),
                    nv.getDiaChi(),
                    nv.getHinh(),
                    nv.getTrinhDoHV(),
                    nv.getMaHD(),
                    nv.getMaCV(),
                    nv.getMaPB(),
                    nv.getNgayVaoLam(),
                    nv.getNgayKetThuc(),
                    nv.getHeSoLuong(),
                    nv.getTrangThai(), "insert");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updatenv(NhanVien nv) {
        try {
            String sql = "{call sp_nhanvien(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql, nv.getMaNV(),
                    nv.getHoTen(),
                    nv.getGioiTinh(),
                    nv.getNgaySinh(),
                    nv.getSoCM(),
                    nv.getDienThoai(),
                    nv.getEmail(),
                    nv.getDiaChi(),
                    nv.getHinh(),
                    nv.getTrinhDoHV(),
                    nv.getMaHD(),
                    nv.getMaCV(),
                    nv.getMaPB(),
                    nv.getNgayVaoLam(),
                    nv.getNgayKetThuc(),
                    nv.getHeSoLuong(),
                    nv.getTrangThai(),
                    "update");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int deletenv(NhanVien nv) {
        try {
            String sql = "{call sp_nhanvien(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    nv.getMaNV(),
                    nv.getHoTen(),
                    nv.getGioiTinh(),
                    nv.getNgaySinh(),
                    nv.getSoCM(),
                    nv.getDienThoai(),
                    nv.getEmail(),
                    nv.getDiaChi(),
                    nv.getHinh(),
                    nv.getTrinhDoHV(),
                    nv.getMaHD(),
                    nv.getMaCV(),
                    nv.getMaPB(),
                    nv.getNgayVaoLam(),
                    nv.getNgayKetThuc(),
                    nv.getHeSoLuong(),
                    nv.getTrangThai(), "delete");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int insertNT(ThanNhan NT) {
        try {
            String sql = "{ call SP_ThanNhan(?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    NT.getMaTN(),
                    NT.getHoTen(),
                    NT.getNgheNghiep(),
                    NT.getMoiQuanHe(),
                    NT.getMaNV(),
                    NT.getGiamTruPhuThuoc(), "insert");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateNT(ThanNhan NT) {
        try {
            String sql = "{ call SP_ThanNhan(?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    NT.getMaTN(),
                    NT.getHoTen(),
                    NT.getNgheNghiep(),
                    NT.getMoiQuanHe(),
                    NT.getMaNV(),
                    NT.getGiamTruPhuThuoc(), "update");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
