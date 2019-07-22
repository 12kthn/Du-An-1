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
			SELECT SUM(ThuNhap) FROM BangLuong WHERE YEAR(NgayPhatLuong) = @Nam
		END
	ELSE
		BEGIN
			SELECT SUM(ThuNhap) FROM BangLuong
		END
GO		
EXEC SP_TongTienLuongTrongNam 2019
EXEC SP_TongTienLuongTrongNam null
GO

--Tao Stored Procedure hien thi tien lương cao nhat, thap nhat, trung binh
IF (OBJECT_ID('SP_PhanHoaTienLuong') IS NOT NULL)
  DROP PROCEDURE SP_PhanHoaTienLuong
GO
CREATE PROCEDURE SP_PhanHoaTienLuong
(
	@MaPB varchar(5)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT MAX(ThucLanh) AS 'LuongCaoNhat', MIN(ThucLanh) AS 'LuongThapNhat', AVG(ThucLanh) AS 'TrungBinh' FROM BangLuong 
			WHERE SUBSTRING(MaNV, 1, 2) = @MaPB
		END
	ELSE
		BEGIN
			SELECT MAX(ThucLanh) AS 'LuongCaoNhat', MIN(ThucLanh) AS 'LuongThapNhat', AVG(ThucLanh) AS 'TrungBinh' FROM BangLuong
		END
GO
EXEC SP_PhanHoaTienLuong null
GO

--Tao Stored Procedure hien thi tong tien lương va ten phong ban
IF (OBJECT_ID('SP_TongTienLuongVaPB') IS NOT NULL)
  DROP PROCEDURE SP_TongTienLuongVaPB
GO
CREATE PROCEDURE SP_TongTienLuongVaPB
AS
	SELECT PhongBan.TenPB, SUM(ThucLanh)  
	FROM NhanVien JOIN BangLuong ON NhanVien.MaNV = BangLuong.MaNV JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
	GROUP BY PhongBan.TenPB
	ORDER BY SUM(ThucLanh)
GO