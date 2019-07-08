/*
 * Document: lớp DAO cho giao diện quản lý nhân viên
 * Create on: 17/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.dao;

import com.polypro.helper.JdbcHelper;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.polypro.model.NhanVien;

public class NhanVienDAO {

    public int insert(NhanVien model) {
        String sql = "INSERT INTO NhanVien (MaNV, MatKhau, HoTen, VaiTro) VALUES (?, ?, ?, ?)";
        return JdbcHelper.executeUpdate(sql,
                model.getMaNV(),
                model.getMatKhau(),
                model.getHoTen(),
                model.getVaiTro());
    }

    public int update(NhanVien model) {
        String sql = "UPDATE NhanVien SET MatKhau=?, HoTen=?, VaiTro=? WHERE MaNV=?";
        return JdbcHelper.executeUpdate(sql,
                model.getMatKhau(),
                model.getHoTen(),
                model.getVaiTro(),
                model.getMaNV());
    }

    public int delete(String MaNV) {
        String sql = "DELETE FROM NhanVien WHERE MaNV=?";
        return JdbcHelper.executeUpdate(sql, MaNV);
    }

    public List<NhanVien> select() {
        String sql = "SELECT * FROM NhanVien";
        return select(sql);
    }

    public NhanVien findById(String manv) {
        String sql = "SELECT * FROM NhanVien WHERE MaNV=?";
        List<NhanVien> list = select(sql, manv);
        return list.size() > 0 ? list.get(0) : null;
    }

    private List<NhanVien> select(String sql, Object... args) {
        List<NhanVien> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.executeQuery(sql, args);
            while (rs.next()) {
                NhanVien model = readFromResultSet(rs);
                list.add(model);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    private NhanVien readFromResultSet(ResultSet rs) throws SQLException {
        NhanVien model = new NhanVien();
        model.setMaNV(rs.getString("MaNV"));
        model.setMatKhau(rs.getString("MatKhau"));
        model.setHoTen(rs.getString("HoTen"));
        model.setVaiTro(rs.getBoolean("VaiTro"));
        return model;
    }
}
