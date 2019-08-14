USE QuanLyNhanSu
GO

--Tao Stored Procedure tinh so gio lam viec trong nam
IF (OBJECT_ID('SP_SoGioLamViecTrongNam') IS NOT NULL)
  DROP PROCEDURE SP_SoGioLamViecTrongNam
GO
CREATE PROCEDURE SP_SoGioLamViecTrongNam
(
	@Nam int
)
AS
	IF @Nam is not null
		BEGIN
			SELECT 8*SUM(1*Ngay1 + 1*Ngay2 + 1*Ngay3 + 1*Ngay4 + 1*Ngay5 + 1*Ngay6 + 1*Ngay7 + 1*Ngay8 + 1*Ngay9 + 1*Ngay10 + 1*Ngay11
					+ 1*Ngay12 + 1*Ngay13 + 1*Ngay14 + 1*Ngay15 + 1*Ngay16 + 1*Ngay17 + 1*Ngay18 + 1*Ngay19 + 1*Ngay20 + 1*Ngay21
					+ 1*Ngay22 + 1*Ngay23 + 1*Ngay24 + 1*Ngay25 + 1*Ngay26 + 1*Ngay27 + 1*Ngay28 + 1*Ngay29 + 1*Ngay30 + 1*Ngay31)
			FROM ChamCong WHERE YEAR(NgayDauThang) = @Nam
		END
	ELSE
		BEGIN
			SELECT 8*SUM(1*Ngay1 + 1*Ngay2 + 1*Ngay3 + 1*Ngay4 + 1*Ngay5 + 1*Ngay6 + 1*Ngay7 + 1*Ngay8 + 1*Ngay9 + 1*Ngay10 + 1*Ngay11
					+ 1*Ngay12 + 1*Ngay13 + 1*Ngay14 + 1*Ngay15 + 1*Ngay16 + 1*Ngay17 + 1*Ngay18 + 1*Ngay19 + 1*Ngay20 + 1*Ngay21
					+ 1*Ngay22 + 1*Ngay23 + 1*Ngay24 + 1*Ngay25 + 1*Ngay26 + 1*Ngay27 + 1*Ngay28 + 1*Ngay29 + 1*Ngay30 + 1*Ngay31)
			FROM ChamCong
		END
GO		
EXEC SP_SoGioLamViecTrongNam 2019
EXEC SP_SoGioLamViecTrongNam null

--Tao Stored Procedure tinh so luong nhan vien di lam đầy đủ trong tháng theo phòng ban
IF (OBJECT_ID('SP_ChuyenCanTheoThang') IS NOT NULL)
  DROP PROCEDURE SP_ChuyenCanTheoThang
GO
CREATE PROCEDURE SP_ChuyenCanTheoThang
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2),
	@SoNgayLamViecThapNhat int
)
AS
	DECLARE @NgayDauThang DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	IF @MaPB is not null
		BEGIN
			SELECT COUNT(*)
			FROM ChamCong JOIN NhanVien ON NhanVien.MaNV = ChamCong.MaNV
			WHERE NhanVien.MaPB = @MaPB AND NgayDauThang = @NgayDauThang
			AND (1*Ngay1 + 1*Ngay2 + 1*Ngay3 + 1*Ngay4 + 1*Ngay5 + 1*Ngay6 + 1*Ngay7 + 1*Ngay8 + 1*Ngay9 + 1*Ngay10 + 1*Ngay11
					+ 1*Ngay12 + 1*Ngay13 + 1*Ngay14 + 1*Ngay15 + 1*Ngay16 + 1*Ngay17 + 1*Ngay18 + 1*Ngay19 + 1*Ngay20 + 1*Ngay21
					+ 1*Ngay22 + 1*Ngay23 + 1*Ngay24 + 1*Ngay25 + 1*Ngay26 + 1*Ngay27 + 1*Ngay28 + 1*Ngay29 + 1*Ngay30 + 1*Ngay31)
					>= @SoNgayLamViecThapNhat
		END
	ELSE
		BEGIN
			SELECT COUNT(*)
			FROM ChamCong JOIN NhanVien ON NhanVien.MaNV = ChamCong.MaNV
			WHERE NgayDauThang = @NgayDauThang
			AND (1*Ngay1 + 1*Ngay2 + 1*Ngay3 + 1*Ngay4 + 1*Ngay5 + 1*Ngay6 + 1*Ngay7 + 1*Ngay8 + 1*Ngay9 + 1*Ngay10 + 1*Ngay11
					+ 1*Ngay12 + 1*Ngay13 + 1*Ngay14 + 1*Ngay15 + 1*Ngay16 + 1*Ngay17 + 1*Ngay18 + 1*Ngay19 + 1*Ngay20 + 1*Ngay21
					+ 1*Ngay22 + 1*Ngay23 + 1*Ngay24 + 1*Ngay25 + 1*Ngay26 + 1*Ngay27 + 1*Ngay28 + 1*Ngay29 + 1*Ngay30 + 1*Ngay31)
					>= @SoNgayLamViecThapNhat
		END
GO
EXEC SP_ChuyenCanTheoThang 'IT', '2018', '8', 24

--Tao Stored Procedure lay danh sách năm đã chấm công
IF (OBJECT_ID('SP_ListYearCC') IS NOT NULL)
  DROP PROCEDURE SP_ListYearCC
GO
CREATE PROCEDURE SP_ListYearCC
AS
	SELECT DISTINCT YEAR(NgayDauThang) FROM ChamCong
	ORDER BY 1 DESC
GO
	
--Tao Stored Procedure lay danh sách chấm công trong tháng
IF (OBJECT_ID('SP_FindCCByMonth') IS NOT NULL)
  DROP PROCEDURE SP_FindCCByMonth
GO
CREATE PROCEDURE SP_FindCCByMonth
(
	@Nam char(4),
	@Thang varchar(2)
)
AS
	DECLARE @NgayDauThang DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	SELECT * FROM ChamCong WHERE NgayDauThang = @NgayDauThang
GO
