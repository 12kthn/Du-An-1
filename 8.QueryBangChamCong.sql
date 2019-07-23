USE QuanLyNhanSu
GO

--Tao Stored Procedure hien thi bang cham cong cua nhan vien theo thang nam
IF (OBJECT_ID('SP_ChamCongTheoThang') IS NOT NULL)
  DROP PROCEDURE SP_ChamCongTheoThang
GO
CREATE PROCEDURE SP_ChamCongTheoThang
(
	@MaNV varchar(10),
	@Nam char(4),
	@Thang varchar(2)
)
AS
	BEGIN
		DECLARE @Ngay DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
		SELECT Ngay, TinhTrang FROM ChamCong WHERE MaNV = @MaNV AND Ngay BETWEEN @Ngay AND EOMONTH(@ngay)
	END
GO

EXEC SP_ChamCongTheoThang 'IT001', '2019', '5'

--Tao Stored Procedure tinh so gio lam viec theo nam
IF (OBJECT_ID('SP_SoGioLamViecTheoNam') IS NOT NULL)
  DROP PROCEDURE SP_SoGioLamViecTheoNam
GO
CREATE PROCEDURE SP_SoGioLamViecTheoNam
(
	@Nam int
)
AS
	IF @Nam is not null
		BEGIN
			SELECT COUNT(*)*8 + SUM(TangCa) FROM ChamCong WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam
		END
	ELSE
		BEGIN
			SELECT COUNT(*)*8 + SUM(TangCa) FROM ChamCong WHERE TinhTrang = 1
		END
GO		
EXEC SP_SoGioLamViecTheoNam 2019
EXEC SP_SoGioLamViecTheoNam null

--Tao Stored Procedure tinh so luong nhan vien di lam du 26 ngay trong tháng theo phòng ban
IF (OBJECT_ID('SP_ChuyenCanTheoThang') IS NOT NULL)
  DROP PROCEDURE SP_ChuyenCanTheoThang
GO
CREATE PROCEDURE SP_ChuyenCanTheoThang
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2)
)
AS
	DECLARE @NgayDauThang DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	DECLARE @NgayCuoiThang DATETIME = EOMONTH(@NgayDauThang)
	IF @MaPB is not null
		BEGIN
			SELECT COUNT(*) FROM NhanVien WHERE MaNV IN (
				SELECT NhanVien.MaNV FROM ChamCong JOIN NhanVien ON ChamCong.MaNV = NhanVien.MaNV 
				WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam AND MONTH(Ngay) = @Thang GROUP BY NhanVien.MaNV HAVING COUNT(*) >=26) AND NhanVien.MaPB = @MaPB

		END
	ELSE
		BEGIN
		SELECT COUNT(*) FROM NhanVien WHERE MaNV IN (
			SELECT NhanVien.MaNV FROM ChamCong JOIN NhanVien ON ChamCong.MaNV = NhanVien.MaNV 
			WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam AND MONTH(Ngay) = @Thang GROUP BY NhanVien.MaNV HAVING COUNT(*) >=26)
		END
GO

EXEC SP_ChuyenCanTheoThang null, 2019, 6

