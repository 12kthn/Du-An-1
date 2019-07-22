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
IF (OBJECT_ID('SP_SoGioLamViec') IS NOT NULL)
  DROP PROCEDURE SP_SoGioLamViec
GO
CREATE PROCEDURE SP_SoGioLamViec
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
EXEC SP_SoGioLamViec 2019
EXEC SP_SoGioLamViec null