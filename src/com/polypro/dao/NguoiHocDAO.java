/*
 * Document: lớp DAO cho giao diện quản lý người học
 * Create on: 17/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.dao;

import com.polypro.helper.JdbcHelper;
import com.polypro.model.NguoiHoc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NguoiHocDAO {

    public int insert(NguoiHoc model) {
        String sql = "INSERT INTO NguoiHoc (MaNH, HoTen, NgaySinh, GioiTinh, DienThoai, Email, GhiChu, MaNV) "
                + "VALUES( ?,  ?,  ?,  ?,  ?,  ?,  ?,  ?)";
        return JdbcHelper.executeUpdate(sql,
            model.getMaNH(),
            model.getHoTen(),
            model.getNgaySinh(),
            model.getGioiTinh(),
            model.getDienThoai(),
            model.getEmail(),
            model.getGhiChu(),
            model.getMaNV());
    }

    public int update(NguoiHoc model) {
        String sql = "UPDATE NguoiHoc SET HoTen = ?, NgaySinh = ?, GioiTinh = ?, DienThoai = ?, "
                + "Email = ?, GhiChu = ?, MaNV = ? WHERE MaNH =  ?";
         return JdbcHelper.executeUpdate(sql,
            model.getHoTen(),
            model.getNgaySinh(),
            model.getGioiTinh(),
            model.getDienThoai(),
            model.getEmail(),
            model.getGhiChu(),
            model.getMaNV(),
            model.getMaNH());
    }

    public int delete(String id) {
        String sql = "DELETE FROM NguoiHoc WHERE MaNH = ?";
        return JdbcHelper.executeUpdate(sql, id);
    }

    public List<NguoiHoc> select() {
        String sql = "SELECT * FROM NguoiHoc";
        return select(sql);
    }

    public List<NguoiHoc> findByName(String name) {
        String sql = "SELECT * FROM NguoiHoc WHERE HoTen LIKE ?";
        return select(sql, "%" + name + "%");
    }

    public List<NguoiHoc> findStudentsNotInCourseByName(Integer maKH, String name) {
        String sql = "SELECT * FROM NguoiHoc WHERE MaNH NOT IN (SELECT MaNH FROM HocVien WHERE MaKH=?) AND HoTen like ?";
        return select(sql, maKH, "%" + name + "%");
    }

    public NguoiHoc findById(String manh) {
        String sql = "SELECT * FROM NguoiHoc WHERE MaNH = ?";
        List<NguoiHoc> list = select(sql, manh);
        return list.size() > 0 ? list.get(0) : null;
    }

    private List<NguoiHoc> select(String sql, Object... args) {
        List<NguoiHoc> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = JdbcHelper.executeQuery(sql, args);
                while (rs.next()) {
                    NguoiHoc model = readFromResultSet(rs);
                    list.add(model);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        return list;
    }

    private NguoiHoc readFromResultSet(ResultSet rs) throws SQLException {
        NguoiHoc model = new NguoiHoc();
        model.setMaNH(rs.getString("MaNH"));
        model.setHoTen(rs.getString("HoTen"));
        model.setNgaySinh(rs.getDate("NgaySinh"));
        model.setGioiTinh(rs.getBoolean("GioiTinh"));
        model.setDienThoai(rs.getString("DienThoai"));
        model.setEmail(rs.getString("Email"));
        model.setGhiChu(rs.getString("GhiChu"));
        model.setMaNV(rs.getString("MaNV"));
        model.setNgayDK(rs.getDate("NgayDK"));
        return model;
    }
}
