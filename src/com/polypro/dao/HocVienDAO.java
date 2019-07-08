/*
 * Document: lớp DAO cho giao diện quản lý học viên
 * Create on: 17/05/2019
 * Author: Pham Duy Bien - PS08445
 */

package com.polypro.dao;

import com.polypro.helper.JdbcHelper;
import com.polypro.model.HocVien;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HocVienDAO {

    public int insert(HocVien model) {
        String sql = "INSERT INTO HocVien(MaKH, MaNH, Diem) VALUES(?, ?, ?)";
        return JdbcHelper.executeUpdate(sql,
                model.getMaKH(),
                model.getMaNH(),
                model.getDiem());
    }

    public int update(HocVien model) {
        String sql = "UPDATE HocVien SET MaKH=?, MaNH=?, Diem=? WHERE MaHV=?";
        return JdbcHelper.executeUpdate(sql,
                model.getMaKH(),
                model.getMaNH(),
                model.getDiem(),
                model.getMaHV());
    }

    public int delete(Integer MaHV) {
        String sql = "DELETE FROM HocVien WHERE MaHV=?";
        return JdbcHelper.executeUpdate(sql, MaHV);
    }

    public List<HocVien> select() {
        String sql = "SELECT * FROM HocVien";
        return select(sql);
    }

    public HocVien findById(Integer mahv) {
        String sql = "SELECT * FROM HocVien WHERE MaHV=?";
        List<HocVien> list = select(sql, mahv);
        return list.size() > 0 ? list.get(0) : null;
    }

    public List<HocVien> findByCourse(Integer maKH) {
        String sql = "SELECT * FROM HocVien WHERE MaKH=?";
        return select(sql, maKH);
    }

    private List<HocVien> select(String sql, Object... args) {
        List<HocVien> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = JdbcHelper.executeQuery(sql, args);
                while (rs.next()) {
                    HocVien model = readFromResultSet(rs);
                    list.add(model);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    private HocVien readFromResultSet(ResultSet rs) throws SQLException {
        HocVien model = new HocVien();
        model.setMaHV(rs.getInt("MaHV"));
        model.setMaKH(rs.getInt("MaKH"));
        model.setMaNH(rs.getString("MaNH"));
        model.setDiem(rs.getDouble("Diem"));
        return model;
    }
}
