--Tao Stored Procedure tim kiem nhan vien theo MaNV
IF (OBJECT_ID('SP_FindNVByCode') IS NOT NULL)
  DROP PROCEDURE SP_FindNVByCode
GO
CREATE PROCEDURE SP_FindNVByCode
(
	@MaNV varchar(10)
)
AS
	--@MaNV bang null thi lay hêt danh sach nhan vien
	IF @MaNV is not null
		BEGIN
			SELECT * FROM NhanVien WHERE MaNV = @MaNV
		END
	ELSE
		BEGIN
			SELECT * FROM NhanVien
		END
GO

--Tao Stored Procedure tim kiem nhan vien theo PhongBan
IF (OBJECT_ID('SP_FindNVTheoPB') IS NOT NULL)
  DROP PROCEDURE SP_FindNVTheoPB
GO
CREATE PROCEDURE SP_FindNVTheoPB
(
	@MaPB varchar(10)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT * FROM NhanVien WHERE MaPB = @MaPB
		END
	ELSE
		BEGIN
			SELECT * FROM NhanVien
		END
GO

EXEC SP_FindNVTheoPB 'it'

--Tao Stored Procedure đếm so luong nhan vien theo phong ban
IF (OBJECT_ID('SP_SLNVTheoPB') IS NOT NULL)
	DROP PROCEDURE SP_SLNVTheoPB
GO
CREATE PROCEDURE SP_SLNVTheoPB
(
	@MaPB varchar(5)
)
AS
	--@MaPB bang null thi đếm SLNV cả công ty
	IF @MaPB is not null
		BEGIN
			SELECT PhongBan.TenPB, COUNT(*) FROM NhanVien JOIN PhongBan on NhanVien.MaPB = PhongBan.MaPB
			WHERE PhongBan.MaPB = @MaPB
			GROUP BY PhongBan.MaPB, PhongBan.TenPB
		END
	ELSE
		BEGIN
			SELECT PhongBan.TenPB, COUNT(*) FROM NhanVien JOIN PhongBan on NhanVien.MaPB = PhongBan.MaPB
			GROUP BY PhongBan.MaPB, PhongBan.TenPB
		END
GO		
SP_SLNVTheoPB null

--Tao Stored Procedure đếm so luong nam nu theo Phong Ban
IF (OBJECT_ID('SP_SLNamNu') IS NOT NULL)
  DROP PROCEDURE SP_SLNamNu
GO
CREATE PROCEDURE SP_SLNamNu
(
	@MaPB varchar(5)
)
AS
	--@MaPB bang null thi lay hêt danh sach nhan vien
	IF @MaPB is not null
		BEGIN
			SELECT GioiTinh, count(*) FROM NhanVien  WHERE MaPB = @MaPB GROUP BY GioiTinh ORDER BY GioiTinh DESC
		END
	ELSE
		BEGIN
			SELECT GioiTinh, count(*) FROM NhanVien GROUP BY GioiTinh ORDER BY GioiTinh DESC
		END
	
GO


--Tao Stored Procedure đếm so luong nhan vien chinh thuc theo PhongBan
IF (OBJECT_ID('SP_NVChinhThucTheoPB') IS NOT NULL)
  DROP PROCEDURE SP_NVChinhThucTheoPB
GO
CREATE PROCEDURE SP_NVChinhThucTheoPB
(
	@MaPB varchar(5)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT LoaiNhanVien, count(*) FROM NhanVien  WHERE MaPB = @MaPB GROUP BY LoaiNhanVien ORDER BY LoaiNhanVien DESC
		END
	ELSE
		BEGIN
			SELECT LoaiNhanVien, count(*) FROM NhanVien GROUP BY LoaiNhanVien ORDER BY LoaiNhanVien DESC
		END
	
GO

--Tao Stored Procedure đếm so luong nhan vien theo phong ban va nam
IF (OBJECT_ID('SP_SLNVTheoPBVaNam') IS NOT NULL)
	DROP PROCEDURE SP_SLNVTheoPBVaNam
GO
CREATE PROCEDURE SP_SLNVTheoPBVaNam
(
	@MaPB varchar(5),
	@nam int
)
AS
	--@MaPB bang null thi đếm SLNV cả công ty
	IF @MaPB is not null
		BEGIN
			SELECT PhongBan.TenPB, COUNT(*) FROM NhanVien JOIN PhongBan on NhanVien.MaPB = PhongBan.MaPB
			WHERE PhongBan.MaPB = @MaPB AND YEAR(NgayVaoLam) <= @nam
			GROUP BY PhongBan.MaPB, PhongBan.TenPB
		END
	ELSE
		BEGIN
			SELECT PhongBan.TenPB, COUNT(*) FROM NhanVien JOIN PhongBan on NhanVien.MaPB = PhongBan.MaPB
			WHERE YEAR(NgayVaoLam) <= @nam
			GROUP BY PhongBan.MaPB, PhongBan.TenPB
		END
GO		

SP_SLNVTheoPBVaNam null, 2017

--Tao Stored Procedure tinh so luong nhan vien theo thoi gian va phong ban
IF (OBJECT_ID('SP_SLNVTheoThoiGianVaPB') IS NOT NULL)
  DROP PROCEDURE SP_SLNVTheoThoiGianVaPB
GO
CREATE PROCEDURE SP_SLNVTheoThoiGianVaPB
(
	@MaPB varchar(5),
	@Thang varchar(2),
	@Nam char(4)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT COUNT(*) FROM NhanVien WHERE MaPB = @MaPB AND NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
		END
	ELSE
		BEGIN
			SELECT COUNT(*) FROM NhanVien WHERE NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
		END
	
GO		

SP_SLNVTheoThoiGianVaPB 'MK', '6', '2019'
GO
SP_SLNVTheoThoiGianVaPB null, '6', '2018'