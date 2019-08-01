USE QuanLyNhanSu
GO

--Tao Stored Procedure tim kiem bản lưu Cham cong cua NhanVien theo ngay
IF (OBJECT_ID('SP_FindCCByPrimaryKey') IS NOT NULL)
  DROP PROCEDURE SP_FindCCByPrimaryKey
GO
CREATE PROCEDURE SP_FindCCByPrimaryKey
(
	@MaNV varchar(10),
	@Ngay datetime
)
AS
	
	IF @MaNV is not null
		BEGIN 
			SELECT * FROM ChamCong WHERE MaNV = @MaNV AND Ngay = @Ngay
		END
	ELSE
	--@MaNV bang null thi lay hêt bản lưu theo ngày
		BEGIN
			SELECT * FROM ChamCong WHERE Ngay = @Ngay
		END
GO

EXEC SP_FindCCByPrimaryKey 'it001', '2019/5/1'
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
			SELECT COUNT(*)*8 FROM ChamCong WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam
		END
	ELSE
		BEGIN
			SELECT COUNT(*)*8 FROM ChamCong WHERE TinhTrang = 1
		END
GO		
EXEC SP_SoGioLamViecTheoNam 2019
EXEC SP_SoGioLamViecTheoNam null

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
	DECLARE @NgayCuoiThang DATETIME = EOMONTH(@NgayDauThang)
	IF @MaPB is not null
		BEGIN
			SELECT COUNT(*) FROM NhanVien WHERE MaNV IN (
				SELECT NhanVien.MaNV FROM ChamCong JOIN NhanVien ON ChamCong.MaNV = NhanVien.MaNV 
				WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam AND MONTH(Ngay) = @Thang GROUP BY NhanVien.MaNV HAVING COUNT(*) >= @SoNgayLamViecThapNhat) AND NhanVien.MaPB = @MaPB

		END
	ELSE
		BEGIN
		SELECT COUNT(*) FROM NhanVien WHERE MaNV IN (
			SELECT NhanVien.MaNV FROM ChamCong JOIN NhanVien ON ChamCong.MaNV = NhanVien.MaNV 
			WHERE TinhTrang = 1 AND YEAR(Ngay) = @Nam AND MONTH(Ngay) = @Thang GROUP BY NhanVien.MaNV HAVING COUNT(*) >= @SoNgayLamViecThapNhat)
		END
GO

--Tao Stored Procedure lay danh sách năm đã chấm công
IF (OBJECT_ID('SP_ListYear') IS NOT NULL)
  DROP PROCEDURE SP_ListYear
GO
CREATE PROCEDURE SP_ListYear
AS
	SELECT DISTINCT YEAR(Ngay) FROM ChamCong
GO
	

