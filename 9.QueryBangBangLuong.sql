USE QuanLyNhanSu
GO

--Tao Stored Procedure tinh tong thu nhap trong nam
IF (OBJECT_ID('SP_TongTienLuongTrongNam') IS NOT NULL)
  DROP PROCEDURE SP_TongTienLuongTrongNam
GO
CREATE PROCEDURE SP_TongTienLuongTrongNam
(
	@Nam int
)
AS
	IF @Nam is not null
		BEGIN
			SELECT SUM(CAST(ThuNhap AS bigint)) FROM BangLuong 
			WHERE (YEAR(NgayPhatLuong) = @Nam AND MONTH(NgayPhatLuong) > 1) OR (YEAR(NgayPhatLuong) = @Nam + 1 AND MONTH(NgayPhatLuong) = 1)
		END
	ELSE
		BEGIN
			SELECT SUM(CAST(ThuNhap AS bigint)) FROM BangLuong
		END
GO		
EXEC SP_TongTienLuongTrongNam 2019
EXEC SP_TongTienLuongTrongNam null
DECLARE @NAM int
SET @NAM = 2019
SELECT * FROM BangLuong WHERE (YEAR(NgayPhatLuong) = @Nam AND MONTH(NgayPhatLuong) > 1) 
OR (YEAR(NgayPhatLuong) = @Nam + 1 AND MONTH(NgayPhatLuong) = 1)
GO

--Tao Stored Procedure hien thi tien lương cao nhat, thap nhat, trung binh theo tháng năm
IF (OBJECT_ID('SP_PhanHoaTienLuong') IS NOT NULL)
  DROP PROCEDURE SP_PhanHoaTienLuong
GO
CREATE PROCEDURE SP_PhanHoaTienLuong
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2)
)
AS
	IF @Thang = 12
		BEGIN
			SET @Thang = 1
			SET @Nam = @Nam + 1
		END
	ELSE
		SET @Thang = @Thang + 1
	DECLARE @NgayDauThang DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	IF @MaPB is not null
		BEGIN
			SELECT MAX(ThucLanh) AS 'LuongCaoNhat', MIN(ThucLanh) AS 'LuongThapNhat', AVG(ThucLanh) AS 'TrungBinh' 
			FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV
			WHERE MaPB = @MaPB AND NgayVaoLam NOT BETWEEN DATEADD(DAY,1,EOMONTH(@NgayDauThang, -2)) AND EOMONTH(@NgayDauThang, -1)
								AND NgayPhatLuong BETWEEN @NgayDauThang AND EOMONTH(@NgayDauThang)
		END
	ELSE
		BEGIN
			SELECT MAX(ThucLanh) AS 'LuongCaoNhat', MIN(ThucLanh) AS 'LuongThapNhat', AVG(ThucLanh) AS 'TrungBinh' 
			FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV
			WHERE NgayVaoLam NOT BETWEEN DATEADD(DAY,1,EOMONTH(@NgayDauThang, -2)) AND EOMONTH(@NgayDauThang, -1)
				AND NgayPhatLuong BETWEEN @NgayDauThang AND EOMONTH(@NgayDauThang)
		END
GO
EXEC SP_PhanHoaTienLuong null, 2019, 1

GO
--Tao Stored Procedure hien thi tong tien lương va ten phong ban theo thang
IF (OBJECT_ID('SP_TongTienLuongVaPBTheoThang') IS NOT NULL)
  DROP PROCEDURE SP_TongTienLuongVaPBTheoThang
GO
CREATE PROCEDURE SP_TongTienLuongVaPBTheoThang
(
	@Nam char(4),
	@Thang varchar(2)
)
AS
	IF @Thang = 12
		BEGIN
			SET @Thang = 1
			SET @Nam = @Nam + 1
		END
	ELSE
		SET @Thang = @Thang + 1
	DECLARE @NgayDauThang DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	SELECT PhongBan.TenPB, SUM(ThucLanh)  
	FROM NhanVien JOIN BangLuong ON NhanVien.MaNV = BangLuong.MaNV JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
	WHERE NgayPhatLuong BETWEEN @NgayDauThang AND EOMONTH(@NgayDauThang)
	GROUP BY PhongBan.TenPB
	ORDER BY SUM(ThucLanh)
GO

EXEC SP_TongTienLuongVaPBTheoThang 2018, 12

--Tao Stored Procedure lay danh sách năm có trong BangLuong
IF (OBJECT_ID('SP_ListYearBL') IS NOT NULL)
  DROP PROCEDURE SP_ListYearBL
GO
CREATE PROCEDURE SP_ListYearBL
AS
	SELECT DISTINCT YEAR(NgayPhatLuong) FROM BangLuong
	ORDER BY 1 DESC
GO