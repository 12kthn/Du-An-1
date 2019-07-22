--Tao Stored Procedure in ra table nhan vien
IF (OBJECT_ID('SP_TBLNhanVien') IS NOT NULL)
  DROP PROCEDURE SP_TBLNhanVien
GO
CREATE PROCEDURE SP_TBLNhanVien
AS
	SELECT MaNV, HoTen, GioiTinh, FORMAT(NgaySinh, 'dd/MM/yyyy') AS NgaySinh, SoCM, DienThoai, Email, DiaChi, TrinhDoHV, MaHD, PhongBan.TenPB, ChucVu.TenCV, 
		FORMAT(NgayVaoLam, 'dd/MM/yyyy') AS NgayVaoLam, FORMAT(NgayKetThuc, 'dd/MM/yyyy') AS NgayKetThuc, HeSoLuong, LoaiNhanVien, TrangThai
	FROM NhanVien JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
GO

--Tao Stored Procedure hien thi du lieu cho table BangLuong
IF (OBJECT_ID('SP_TBLBangLuong') IS NOT NULL)
  DROP PROCEDURE SP_TBLBangLuong
GO
CREATE PROCEDURE SP_TBLBangLuong
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2)
)
AS
	DECLARE @Ngay DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	IF @MaPB is not null
		BEGIN
			
			SELECT NhanVien.MaNV, NhanVien.HoTen, PhongBan.TenPB, ChucVu.TenCV, BangLuong.* FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV 
																			JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
																			JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
			WHERE NgayPhatLuong BETWEEN @Ngay AND EOMONTH(@ngay) AND SUBSTRING(NhanVien.MaNV, 1, 2) = @MaPB
		END
	ELSE
		BEGIN
			SELECT NhanVien.MaNV, NhanVien.HoTen, PhongBan.TenPB, ChucVu.TenCV, BangLuong.* FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV 
																			JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
																			JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
			WHERE NgayPhatLuong BETWEEN @Ngay AND EOMONTH(@ngay)
		END
GO