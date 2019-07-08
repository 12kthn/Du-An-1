/*
 * Document: lớp DAO cho giao diện thống kê
 * Create on: 17/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.dao;

import com.polypro.helper.JdbcHelper;
import com.polypro.helper.ShareHelper;
import com.polypro.helper.XDate;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ThongKeDAO {

    public List<Object[]> getNguoiHoc() {
        List<Object[]> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            String sql = "{call sp_ThongKeNguoiHoc}";
            rs = JdbcHelper.executeQuery(sql);
            while (rs.next()) {
                Object[] model = {
                    rs.getInt("Nam"),
                    rs.getInt("SoLuong"),
                    XDate.toString(rs.getDate("DauTien")),
                    XDate.toString(rs.getDate("CuoiCung"))
                };
                list.add(model);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Object[]> getBangDiem(Integer makh) {
        List<Object[]> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            String sql = "{call sp_BangDiem (?)}";
            rs = JdbcHelper.executeQuery(sql, makh);
            while (rs.next()) {
                double diem = rs.getDouble("Diem");
                String xepLoai = "Xuất sắc";
                if (diem < 0) {
                    xepLoai = "Chưa nhập";
                } else if (diem < 3) {
                    xepLoai = "Kém";
                } else if (diem < 5) {
                    xepLoai = "Yếu";
                } else if (diem < 6.5) {
                    xepLoai = "Trung bình";
                } else if (diem < 7.5) {
                    xepLoai = "Khá";
                } else if (diem < 9) {
                    xepLoai = "Giỏi";
                }
                Object[] model = {
                    rs.getString("MaNH"),
                    rs.getString("HoTen"),
                    diem,
                    xepLoai
                };
                list.add(model);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Object[]> getDiemTheoChuyenDe() {
        List<Object[]> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            String sql = "{call sp_ThongKeDiem}";
            rs = JdbcHelper.executeQuery(sql);
            while (rs.next()) {
                Object[] model = {
                    rs.getString("ChuyenDe"),
                    rs.getInt("SoHV"),
                    ShareHelper.formatDouble(rs.getDouble("ThapNhat")),
                    ShareHelper.formatDouble(rs.getDouble("CaoNhat")),
                    ShareHelper.formatDouble(rs.getDouble("TrungBinh"))
                };
                list.add(model);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Object[]> getDoanhThu(int nam) {
        List<Object[]> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            String sql = "{call sp_ThongKeDoanhThu (?)}";
            rs = JdbcHelper.executeQuery(sql, nam);
            while (rs.next()) {
                Object[] model = {
                    rs.getString("ChuyenDe"),
                    rs.getInt("SoKH"),
                    rs.getInt("SoHV"),
                    ShareHelper.formatDouble(rs.getDouble("DoanhThu")),
                    ShareHelper.formatDouble(rs.getDouble("ThapNhat")),
                    ShareHelper.formatDouble(rs.getDouble("CaoNhat")),
                    ShareHelper.formatDouble(rs.getDouble("TrungBinh"))
                };
                list.add(model);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
