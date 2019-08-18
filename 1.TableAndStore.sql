/*
	create db and table
*/
USE master
GO
IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
DROP DATABASE QuanLyNhanSu
GO

CREATE DATABASE QuanLyNhanSu
GO

USE QuanLyNhanSu
GO

CREATE TABLE PhongBan
(
	MaPB varchar(5) PRIMARY KEY,
	TenPB nvarchar(50) not null,
)
GO

CREATE TABLE ChucVu
(
	MaCV varchar(5) PRIMARY KEY,
	TenCV nvarchar(20) not null,
	PhuCap real not null
)
GO

CREATE TABLE NhanVien
(
	MaNV varchar(10) PRIMARY KEY,
	HoTen nvarchar(50) not null,
	GioiTinh bit not null,
	NgaySinh date not null,
	SoCM varchar(10) not null,
	DienThoai varchar(10) not null,
	Email varchar(50) not null,
	DiaChi nvarchar(max) not null,
	Hinh varchar(max),
	TrinhDoHV nvarchar(30) not null,
	MaHD varchar(10) not null,
	MaCV varchar(5) not null,
	MaPB varchar(5),
	NgayVaoLam date not null,
	NgayKetThuc date,
	HeSoLuong real not null,
	TrangThai bit not null,

	UNIQUE(SoCM, MaHD),
	FOREIGN KEY (MaCV) REFERENCES ChucVu(MaCV),
	FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
)
GO


CREATE TABLE TaiKhoan
(
	TaiKhoan varchar(20) PRIMARY KEY,
	MatKhau varchar(20) not null,
	MaNV varchar(10) UNIQUE,
	

	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON DELETE CASCADE
)
GO
CREATE TABLE ThanNhan
(
	MaTN int identity(1,1) PRIMARY KEY,
	HoTen nvarchar(50),
	NgheNghiep nvarchar(50),
	MoiQuanHe nvarchar(20),
	MaNV varchar(10),
	GiamTruPhuThuoc bit
	
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON DELETE CASCADE
)
GO

CREATE TABLE ChamCong
(
	MaNV varchar(10) not null,
	NgayDauThang date not null,
	Ngay1 bit, Ngay2 bit, Ngay3 bit, Ngay4 bit, Ngay5 bit, Ngay6 bit, Ngay7 bit, Ngay8 bit, Ngay9 bit, Ngay10 bit, 
	Ngay11 bit, Ngay12 bit, Ngay13 bit, Ngay14 bit, Ngay15 bit, Ngay16 bit, Ngay17 bit, Ngay18 bit, Ngay19 bit, Ngay20 bit,
	Ngay21 bit, Ngay22 bit, Ngay23 bit, Ngay24 bit, Ngay25 bit, Ngay26 bit, Ngay27 bit, Ngay28 bit, Ngay29 bit, Ngay30 bit, Ngay31 bit,

	PRIMARY KEY (MaNV, NgayDauThang),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

CREATE TABLE BangLuong
(
	MaNV varchar(10),
	NgayPhatLuong date not null,
	LuongChinh int not null,
	NgayCong int not null,
	PC_TrachNhiem int not null,
	ThuNhap int not null,
	BHXH int not null,
	BHYT int not null,
	BHTN int not null,
	PhuThuoc int not null,
	ThueTNCN int not null,
	ThucLanh int not null,
	TrangThai bit not null

	PRIMARY KEY (MaNV, NgayPhatLuong),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON DELETE CASCADE ON UPDATE CASCADE
)
GO
CREATE TABLE GiaTriTinhLuong
(
	TenGiaTri nvarchar(50) PRIMARY KEY,
	GiaTri real not null
)
GO

CREATE TABLE BacThueTNCN
(
	Luong int PRIMARY KEY,
	Thue real not null
)
GO

/*
	Create Stored procedure
*/
USE QuanLyNhanSu
GO

--Tao Stored Procedure Insert, Update, Delete cho bang PhongBan
IF (OBJECT_ID('SP_PhongBan') IS NOT NULL)
  DROP PROCEDURE SP_PhongBan
GO
CREATE PROCEDURE SP_PhongBan
(
	@MaPB varchar(5),
	@TenPB nvarchar(50),
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO PhongBan VALUES(@MaPB, @TenPB)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE PhongBan 
			SET TenPB = @TenPB
			WHERE MaPB = @MaPB
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM PhongBan WHERE MaPB = @MaPB
		END
GO

exec SP_PhongBan 'GD', null, 'delete'

--Tao Stored Procedure Insert, Update, Delete cho bang ChucVu
IF (OBJECT_ID('SP_ChucVu') IS NOT NULL)
  DROP PROCEDURE SP_ChucVu
GO
CREATE PROCEDURE SP_ChucVu
(
	@MaCV varchar(5),
	@TenCV nvarchar(50),
	@PhuCap real,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO ChucVu VALUES(@MaCV, @TenCV, @PhuCap)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE ChucVu 
			SET TenCV = @TenCV, PhuCap = @PhuCap
			WHERE MaCV = @MaCV
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM ChucVu WHERE MaCV = @MaCV
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang NhanVien
IF (OBJECT_ID('SP_NhanVien') IS NOT NULL)
  DROP PROCEDURE SP_NhanVien
GO

CREATE PROCEDURE SP_NhanVien
(
	@MaNVCu varchar(10),
	@MaNV varchar(10),
	@HoTen nvarchar(50),
	@GioiTinh bit,
	@NgaySinh date,
	@SoCM varchar(10),
	@DienThoai varchar(10),
	@Email varchar(50),
	@DiaChi nvarchar(max),
	@Hinh varchar(max),
	@TrinhDoHV nvarchar(30),
	@MaHD varchar(10),
	@MaCV varchar(5),
	@MaPB varchar(5),
	@NgayVaoLam date,
	@NgayKetThuc date,
	@HeSoLuong real,
	@TrangThai bit,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO NhanVien VALUES(@MaNV, @HoTen, @GioiTinh, @NgaySinh, @SoCM, 
				@DienThoai, @MaNV + '@cty.com.vn', @DiaChi, @Hinh, @TrinhDoHV, @MaHD, @MaCV, @MaPB, 
				@NgayVaoLam, @NgayKetThuc, @HeSoLuong, @TrangThai)
		END
	IF @StatementType = 'Update'
		BEGIN
			IF @MaNVCu is null
				SET @MaNVCu = @MaNV
			UPDATE NhanVien
			SET MaNV = @MaNV, HoTen = @HoTen, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh, SoCM = @SoCM,
				DienThoai = @DienThoai, Email = @Email, DiaChi = @DiaChi, Hinh = @Hinh, TrinhDoHV = @TrinhDoHV,
				MaHD = @MaHD, MaCV = @MaCV, MaPB = @MaPB, NgayVaoLam = @NgayVaoLam, 
				NgayKetThuc = @NgayKetThuc, HeSoLuong = @HeSoLuong, TrangThai = @TrangThai
			WHERE MaNV = @MaNVCu
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM NhanVien WHERE MaNV = @MaNV
		END
GO


--Tao Stored Procedure Insert, Update, Delete cho bang TaiKhoan
IF (OBJECT_ID('SP_TaiKhoan') IS NOT NULL)
  DROP PROCEDURE SP_TaiKhoan
GO
CREATE PROCEDURE SP_TaiKhoan
(
	@TaiKhoan varchar(20),
	@MatKhau varchar(20),
	@MaNV varchar(10),
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO TaiKhoan VALUES(@TaiKhoan, @MatKhau, @MaNV)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE TaiKhoan 
			SET MatKhau = @MatKhau, MaNV = @MaNV
			WHERE TaiKhoan = @TaiKhoan
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM TaiKhoan WHERE TaiKhoan = @TaiKhoan
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang ThanNhan
IF (OBJECT_ID('SP_ThanNhan') IS NOT NULL)
  DROP PROCEDURE SP_ThanNhan
GO
CREATE PROCEDURE SP_ThanNhan
(
	@MaTN int,
	@HoTen nvarchar(50),
	@NgheNghiep nvarchar(50),
	@MoiQuanHe nvarchar(20),
	@MaNV varchar(10),
	@GiamTruPhuThuoc bit,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO ThanNhan VALUES(@HoTen, @NgheNghiep, @MoiQuanHe, @MaNV, @GiamTruPhuThuoc)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE ThanNhan 
			SET HoTen = @HoTen, NgheNghiep = @NgheNghiep, MoiQuanHe = @MoiQuanHe, MaNV = @MaNV, GiamTruPhuThuoc = @GiamTruPhuThuoc
			WHERE MaTN = @MaTN
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM ThanNhan WHERE MaTN = @MaTN
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang ChamCong
IF (OBJECT_ID('SP_ChamCong') IS NOT NULL)
  DROP PROCEDURE SP_ChamCong
GO

CREATE PROCEDURE SP_ChamCong
(
	@MaNV varchar(10),
	@NgayDauThang date,
	@Ngay1 bit, @Ngay2 bit, @Ngay3 bit, @Ngay4 bit, @Ngay5 bit, @Ngay6 bit, @Ngay7 bit, @Ngay8 bit, @Ngay9 bit, @Ngay10 bit, 
	@Ngay11 bit, @Ngay12 bit, @Ngay13 bit, @Ngay14 bit, @Ngay15 bit, @Ngay16 bit, @Ngay17 bit, @Ngay18 bit, @Ngay19 bit, @Ngay20 bit,
	@Ngay21 bit, @Ngay22 bit, @Ngay23 bit, @Ngay24 bit, @Ngay25 bit, @Ngay26 bit, @Ngay27 bit, @Ngay28 bit, @Ngay29 bit, @Ngay30 bit, @Ngay31 bit,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO ChamCong VALUES(@MaNV, @NgayDauThang, 
				@Ngay1, @Ngay2, @Ngay3, @Ngay4, @Ngay5, @Ngay6, @Ngay7, @Ngay8, @Ngay9, @Ngay10, 
				@Ngay11, @Ngay12, @Ngay13, @Ngay14, @Ngay15, @Ngay16, @Ngay17, @Ngay18, @Ngay19, @Ngay20,
				@Ngay21, @Ngay22, @Ngay23, @Ngay24, @Ngay25, @Ngay26, @Ngay27, @Ngay28, @Ngay29, @Ngay30, @Ngay31)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE ChamCong 
			SET Ngay1 = @Ngay1, Ngay2 = @Ngay2, Ngay3 = @Ngay3, Ngay4 = @Ngay4, Ngay5 = @Ngay5, Ngay6 = @Ngay6, Ngay7 = @Ngay7, Ngay8 = @Ngay8, 
				Ngay9 = @Ngay9, Ngay10 = @Ngay10, Ngay11 = @Ngay11, Ngay12 = @Ngay12, Ngay13 = @Ngay13, Ngay14 = @Ngay14, Ngay15 = @Ngay15, 
				Ngay16 = @Ngay16, Ngay17 = @Ngay17, Ngay18 = @Ngay18, Ngay19 = @Ngay19, Ngay20 = @Ngay20, Ngay21 = @Ngay21, Ngay22 = @Ngay22, 
				Ngay23 = @Ngay23, Ngay24 = @Ngay24, Ngay25 = @Ngay25, Ngay26 = @Ngay26, Ngay27 = @Ngay27, Ngay28 = @Ngay28, 
				Ngay29 = @Ngay29, Ngay30 = @Ngay30, Ngay31 = @Ngay31
			WHERE MaNV = @MaNV AND NgayDauThang = @NgayDauThang
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM ChamCong WHERE MaNV = @MaNV AND NgayDauThang = @NgayDauThang
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang GiaTriTinhLuong
IF (OBJECT_ID('SP_GiaTriTinhLuong') IS NOT NULL)
  DROP PROCEDURE SP_GiaTriTinhLuong
GO

CREATE PROCEDURE SP_GiaTriTinhLuong
(
	@TenGiaTri nvarchar(50),
	@GiaTri real,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO GiaTriTinhLuong VALUES(@TenGiaTri, @GiaTri)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE GiaTriTinhLuong 
			SET GiaTri = @GiaTri
			WHERE TenGiaTri = @TenGiaTri
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM GiaTriTinhLuong WHERE TenGiaTri = @TenGiaTri
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang ThueTNCN
IF (OBJECT_ID('SP_BacThueTNCN') IS NOT NULL)
  DROP PROCEDURE SP_BacThueTNCN
GO

CREATE PROCEDURE SP_BacThueTNCN
(
	@Luong int,
	@Thue real,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO BacThueTNCN VALUES(@Luong, @Thue)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE BacThueTNCN 
			SET Thue = @Thue
			WHERE Luong = @Luong
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM BacThueTNCN WHERE Luong = @Luong
		END
GO

--Tao cac Function lay Gia tri de Insert cho BangLuong

--Tao Function lay Gia tri tu bang GiaTriTinhLuong
IF (OBJECT_ID('FN_SelectGiaTri') IS NOT NULL)
  DROP FUNCTION FN_SelectGiaTri
GO
CREATE FUNCTION FN_SelectGiaTri
(
	@TenGiaTri nvarchar(50)
)
RETURNS real
AS
	BEGIN
		DECLARE @GiaTri real
		SET @GiaTri = (SELECT GiaTri FROM GiaTriTinhLuong WHERE TenGiaTri = @TenGiaTri)
		RETURN @GiaTri
	END
GO

--Tao Function tinh luong chinh
IF (OBJECT_ID('FN_LuongChinh') IS NOT NULL)
  DROP FUNCTION FN_LuongChinh
GO
CREATE FUNCTION FN_LuongChinh
(
	@MaNV varchar(10)
)
RETURNS int
AS
	BEGIN
		DECLARE @LuongChinh int
		SET @LuongChinh = (SELECT HeSoLuong FROM NhanVien WHERE MaNV = @MaNV)*[dbo].[FN_SelectGiaTri]('LuongCB')
		RETURN @LuongChinh
	END
GO

--Tao Function tinh so ngay cong theo thang/nam
IF (OBJECT_ID('FN_SoNgayCong') IS NOT NULL)
  DROP FUNCTION FN_SoNgayCong
GO
CREATE FUNCTION FN_SoNgayCong
(
	@MaNV varchar(10),
	@NgayDauThang date
)
RETURNS int
AS
	BEGIN
		DECLARE @NgayCong int
		SET @NgayCong = (SELECT (1*Ngay1 + 1*Ngay2 + 1*Ngay3 + 1*Ngay4 + 1*Ngay5 + 1*Ngay6 + 1*Ngay7 + 1*Ngay8 + 1*Ngay9 + 1*Ngay10 + 1*Ngay11
								 + 1*Ngay12 + 1*Ngay13 + 1*Ngay14 + 1*Ngay15 + 1*Ngay16 + 1*Ngay17 + 1*Ngay18 + 1*Ngay19 + 1*Ngay20 + 1*Ngay21
								  + 1*Ngay22 + 1*Ngay23 + 1*Ngay24 + 1*Ngay25 + 1*Ngay26 + 1*Ngay27 + 1*Ngay28 + 1*Ngay29 + 1*Ngay30 + 1*Ngay31)

						FROM ChamCong WHERE MaNV = @MaNV AND NgayDauThang = @NgayDauThang)

		RETURN @NgayCong
	END
GO

select [dbo].[FN_SoNgayCong]('IT001', '2018-8-1')
--Tao Function tinh thue TNCN
IF (OBJECT_ID('FN_TinhThueTNCN') IS NOT NULL)
  DROP FUNCTION FN_TinhThueTNCN
GO
CREATE FUNCTION FN_TinhThueTNCN
(
	@ThuNhapChiuThue int
)
RETURNS int
AS
	BEGIN
		DECLARE @ThueTNCN int
		SET @ThueTNCN = @ThuNhapChiuThue*(SELECT TOP 1 Thue FROM BacThueTNCN WHERE Luong < 16000000 ORDER BY Luong DESC)
		IF @ThueTNCN < 0 SET @ThueTNCN = 0
		RETURN @ThueTNCN
	END
GO

--Tao Stored Procedure Insert cho bang BangLuong
IF (OBJECT_ID('SP_Insert_BangLuong') IS NOT NULL)
  DROP PROCEDURE SP_Insert_BangLuong
GO

CREATE PROCEDURE SP_Insert_BangLuong
(
	@MaNV varchar(10),
	@NgayPhatLuong date,
	@TrangThai bit
)
AS
	DECLARE	@Nam char(4),
			@Thang varchar(2),
			@NgayVaoLam datetime,
			@LuongChinh int,
			@NgayCong int,
			@PC_TrachNhiem int,
			@ThuNhap int,
			@BHXH int,
			@BHYT int,
			@BHTN int,
			@GiamTruPhuThuoc int,
			@ThueTNCN int,			
			@ThucLanh int		
	SET @Nam = YEAR(@NgayPhatLuong)
	IF MONTH(@NgayPhatLuong) = 1
		BEGIN
			SET @Thang = 12
			SET @Nam = @Nam - 1
		END
	ELSE
		SET @Thang = MONTH(@NgayPhatLuong)-1
	SET @LuongChinh = [dbo].[FN_LuongChinh](@MaNV)
	SET @NgayCong = [dbo].[FN_SoNgayCong](@MaNV, CAST(@Nam + '-' + @Thang + '-' + '1' AS datetime))
	SET @PC_TrachNhiem = @LuongChinh*(SELECT PhuCap FROM ChucVu WHERE MaCV = (Select MaCV FROM NhanVien WHERE MaNV = @MaNV))
	SET @ThuNhap = @LuongChinh*@NgayCong/26 + @PC_TrachNhiem
	SET @NgayVaoLam = (SELECT NgayVaoLam FROM NhanVien WHERE MaNV = @MaNV)
	IF Year(@NgayVaoLam) = @Nam AND MONTH(@NgayVaoLam) = @Thang
		BEGIN
			SET @BHXH = 0
			SET @BHYT = 0
			SET @BHTN = 0
		END
	ELSE
		BEGIN
			SET @BHXH = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHXH')
			SET @BHYT = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHYT')
			SET @BHTN = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHTN')
		END
	SET @GiamTruPhuThuoc = 3600000*(SELECT COUNT(MaTN) FROM ThanNhan WHERE MaNV = @MaNV AND GiamTruPhuThuoc = 1)
	SET @ThueTNCN = [dbo].[FN_TinhThueTNCN](@ThuNhap - @BHXH - @BHYT - @BHTN - @GiamTruPhuThuoc)
	SET @ThucLanh = @ThuNhap - @BHXH - @BHYT - @BHTN - @ThueTNCN

	INSERT INTO BangLuong VALUES(@MaNV, @NgayPhatLuong, @LuongChinh, @NgayCong, @PC_TrachNhiem,
					@ThuNhap, @BHXH, @BHYT, @BHTN, @GiamTruPhuThuoc, @ThueTNCN, @ThucLanh, @TrangThai)
GO


--Tao Stored Procedure update cho bang BangLuong
IF (OBJECT_ID('SP_Update_BangLuong') IS NOT NULL)
  DROP PROCEDURE SP_Update_BangLuong
GO

CREATE PROCEDURE SP_Update_BangLuong
(
	@MaNV varchar(10),
	@NgayPhatLuong date,
	@TrangThai bit
)
AS
	UPDATE BangLuong
	SET TrangThai = @TrangThai
	WHERE MaNV = @MaNV AND NgayPhatLuong = @NgayPhatLuong
GO

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

--tao Stored procedure check trung lap so chung minh nhan dan 
IF (OBJECT_ID('SP_FindNVByCMND') is not null)
   DROP PROCEDURE SP_FindNVByCMND
GO
CREATE PROCEDURE SP_FindNVByCMND
(
     @CMND varchar(10)
)
AS
  IF @CMND IS NOT NULL
     BEGIN 
          SELECT @CMND FROM NhanVien WHERE SoCM = @CMND
	 END
 ELSE 
	 BEGIN 
	      SELECT * FROM NhanVien
	    END
GO


--tao procedure check trung lap ma hop dong 
 IF(OBJECT_ID('SP_FindNVByMaHD') is not null)
    DROP PROCEDURE SP_FindNVByMaHD
go
    CREATE PROCEDURE SP_FindNVByMaHD
    (
       @MaHD varchar(10)
     )
 AS 
        IF @MaHD is not null 
    BEGIN 
         SELECT @MaHD FROM NhanVien WHERE MaHD = @MaHD
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

--Tao Stored Procedure tinh so luong nhan vien theo phong ban va thang
IF (OBJECT_ID('SP_SLNVTheoPBVaThang') IS NOT NULL)
  DROP PROCEDURE SP_SLNVTheoPBVaThang
GO
CREATE PROCEDURE SP_SLNVTheoPBVaThang
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

--Tao Stored Procedure lấy danh sách nhân viên theo phòng ban có ngày vào làm trước hoặc trong tháng - năm
IF (OBJECT_ID('SP_FindNVByMonth') IS NOT NULL)
  DROP PROCEDURE SP_FindNVByMonth
GO
CREATE PROCEDURE SP_FindNVByMonth
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2),
	@TimKiem nvarchar(50)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT * FROM NhanVien WHERE MaPB = @MaPB AND NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
														AND (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
		END
	ELSE
		BEGIN
			SELECT * FROM NhanVien WHERE NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
										AND (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
		END
	
GO

--Tao Stored Procedure lấy danh sách nhân viên theo phòng ban bắt đầu làm việc trong tháng - năm
IF (OBJECT_ID('SP_FindNVStartWorkingInMonth') IS NOT NULL)
  DROP PROCEDURE SP_FindNVStartWorkingInMonth
GO
CREATE PROCEDURE SP_FindNVStartWorkingInMonth
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
			SELECT * FROM NhanVien WHERE MaPB = @MaPB AND NgayVaoLam BETWEEN @NgayDauThang AND @NgayCuoiThang
		END
	ELSE
		BEGIN
			SELECT * FROM NhanVien WHERE NgayVaoLam BETWEEN @NgayDauThang AND @NgayCuoiThang
		END
	
GO

--Tao Stored Procedure lấy mã nhân viên lớn nhất theo Phòng ban
IF (OBJECT_ID('SP_MaxNaNVByPhongBan') IS NOT NULL)
  DROP PROCEDURE SP_MaxNaNVByPhongBan
GO
CREATE PROCEDURE SP_MaxNaNVByPhongBan
(
	@MaPB varchar(5)
)
AS
	SELECT MAX(MaNV) FROM NhanVien WHERE MaPB = @MaPB
GO

--Tao Stored Procedure lấy mã hợp đồng lớn nhất trong năm
IF (OBJECT_ID('SP_MaxMaHDOfYear') IS NOT NULL)
  DROP PROCEDURE SP_MaxMaHDOfYear
GO
CREATE PROCEDURE SP_MaxMaHDOfYear
(
	@Nam int
)
AS
	SELECT MAX(MaHD) FROM NhanVien WHERE YEAR(NgayVaoLam) = @Nam
GO

--tao stored procedure tim kiem nhan than theo ma nhan than 
 if(OBJECT_ID('FindNTByCode') is not null)
     DROP PROCEDURE FindNTByCode
go
CREATE PROCEDURE FindNTByCode 
(
       @MaNT int
)
AS
    IF @MaNT is not null
	BEGIN 
       SELECT * FROM ThanNhan WHERE MaTN = @MaNT
	END 
	ELSE 
	BEGIN
       SELECT * FROM ThanNhan
	END 
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

--Tao Stored Procedure lay danh sách năm có trong BangLuong
IF (OBJECT_ID('SP_ListYearBL') IS NOT NULL)
  DROP PROCEDURE SP_ListYearBL
GO
CREATE PROCEDURE SP_ListYearBL
AS
	SELECT DISTINCT YEAR(NgayPhatLuong) FROM BangLuong
	ORDER BY 1 DESC
GO

--Tao Stored Procedure tim kiem phong ban theo ma
IF (OBJECT_ID('SP_FindPhongBanByCode') IS NOT NULL)
  DROP PROCEDURE SP_FindPhongBanByCode
GO
CREATE PROCEDURE SP_FindPhongBanByCode
(
	@MaPB varchar(5)
)
AS
	IF @MaPB is not null
		BEGIN
			SELECT * FROM PhongBan WHERE MaPB = @MaPB
		END
	ELSE
		BEGIN
			SELECT * FROM PhongBan
		END
GO


--Tao Stored Procedure tim kiem Chuc vu theo ma
IF (OBJECT_ID('SP_FindChucVuByCode') IS NOT NULL)
  DROP PROCEDURE SP_FindChucVuByCode
GO
CREATE PROCEDURE SP_FindChucVuByCode
(
	@MaCV varchar(5)
)
AS
	IF @MaCV is not null
		BEGIN
			SELECT * FROM ChucVu WHERE MaCV = @MaCV
		END
	ELSE
		BEGIN
			SELECT * FROM ChucVu
		END
GO


--Tao Stored Procedure tim kiem Tai khoan theo ten Tai khoan
IF (OBJECT_ID('SP_FindTaiKhoanByName') IS NOT NULL)
  DROP PROCEDURE SP_FindTaiKhoanByName
GO
CREATE PROCEDURE SP_FindTaiKhoanByName
(
	@TaiKhoan varchar(20)
)
AS
	BEGIN
		SELECT * FROM TaiKhoan WHERE TaiKhoan = @TaiKhoan
	END
GO

--Tao Stored Procedure tim kiem giá trị theo tên
IF (OBJECT_ID('SP_FindGiaTriTinhLuongByName') IS NOT NULL)
  DROP PROCEDURE SP_FindGiaTriTinhLuongByName
GO
CREATE PROCEDURE SP_FindGiaTriTinhLuongByName
(
	@TenGiaTri varchar(50)
)
AS
	IF @TenGiaTri is not null
		BEGIN
			SELECT * FROM GiaTriTinhLuong WHERE TenGiaTri = @TenGiaTri
		END
	ELSE
		BEGIN
			SELECT * FROM GiaTriTinhLuong
		END
GO


--Tao Stored Procedure tim kiem bậc thuế TNCN theo thu nhap
IF (OBJECT_ID('SP_FindBacThueTNCNByThuNhap') IS NOT NULL)
  DROP PROCEDURE SP_FindBacThueTNCNByThuNhap
GO
CREATE PROCEDURE SP_FindBacThueTNCNByThuNhap
(
	@Luong varchar(50)
)
AS
	IF @Luong is not null
		BEGIN
			SELECT * FROM BacThueTNCN WHERE Luong = @Luong
		END
	ELSE
		BEGIN
			SELECT * FROM BacThueTNCN
		END
GO

--Tao Stored Procedure hien thi du lieu cho table nhan vien
IF (OBJECT_ID('SP_TBLNhanVien') IS NOT NULL)
  DROP PROCEDURE SP_TBLNhanVien
GO
CREATE PROCEDURE SP_TBLNhanVien
(
	@MaPB varchar(5),
	@TimKiem nvarchar(50)
)
AS
	IF @MaPB is not null
		SELECT MaNV, HoTen, GioiTinh, FORMAT(NgaySinh, 'dd/MM/yyyy') AS NgaySinh, SoCM, DienThoai, Email, DiaChi, TrinhDoHV, MaHD, PhongBan.TenPB, ChucVu.TenCV, 
			FORMAT(NgayVaoLam, 'dd/MM/yyyy') AS NgayVaoLam, FORMAT(NgayKetThuc, 'dd/MM/yyyy') AS NgayKetThuc, HeSoLuong, TrangThai
		FROM NhanVien JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
		WHERE NhanVien.MaPB = @MaPB AND (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
	ELSE
		SELECT MaNV, HoTen, GioiTinh, FORMAT(NgaySinh, 'dd/MM/yyyy') AS NgaySinh, SoCM, DienThoai, Email, DiaChi, TrinhDoHV, MaHD, PhongBan.TenPB, ChucVu.TenCV, 
			FORMAT(NgayVaoLam, 'dd/MM/yyyy') AS NgayVaoLam, FORMAT(NgayKetThuc, 'dd/MM/yyyy') AS NgayKetThuc, HeSoLuong, TrangThai
		FROM NhanVien JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
		WHERE (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
GO

--Tao Stored Procedure hien thi du lieu cho Table than nhan
IF(OBJECT_ID('SP_TBLThanNhan') IS NOT NULL)
       DROP PROCEDURE SP_TBLThanNhan
GO
CREATE PROCEDURE SP_TBLThanNhan
(
	@MaNV varchar(10)
)
AS 
       SELECT MaTN,HoTen,NgheNghiep,MoiQuanHe,MaNV,GiamTruPhuThuoc
       FROM ThanNhan
	   WHERE MaNV = @MaNV
Go

--Tao Stored Procedure hien thi du lieu cho table BangLuong
IF (OBJECT_ID('SP_TBLBangLuong') IS NOT NULL)
  DROP PROCEDURE SP_TBLBangLuong
GO
CREATE PROCEDURE SP_TBLBangLuong
(
	@MaPB varchar(5),
	@Nam char(4),
	@Thang varchar(2),
	@TimKiem nvarchar(50)
)
AS
	IF @Thang = 12
		BEGIN
			SET @Thang = 1
			SET @Nam = @Nam + 1
		END
	ELSE
		SET @Thang = @Thang + 1
	DECLARE @Ngay DATETIME = CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME)
	IF @MaPB is not null
		BEGIN
			
			SELECT NhanVien.MaNV, NhanVien.HoTen, PhongBan.TenPB, ChucVu.TenCV, BangLuong.* FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV 
																			JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
																			JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
			WHERE NgayPhatLuong BETWEEN @Ngay AND EOMONTH(@ngay) AND SUBSTRING(NhanVien.MaNV, 1, 2) = @MaPB
				 AND (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
		END
	ELSE
		BEGIN
			SELECT NhanVien.MaNV, NhanVien.HoTen, PhongBan.TenPB, ChucVu.TenCV, BangLuong.* FROM BangLuong JOIN NhanVien ON BangLuong.MaNV = NhanVien.MaNV 
																			JOIN PhongBan ON NhanVien.MaPB = PhongBan.MaPB
																			JOIN ChucVu ON NhanVien.MaCV = ChucVu.MaCV
			WHERE NgayPhatLuong BETWEEN @Ngay AND EOMONTH(@ngay)
			 AND (NhanVien.HoTen like '%' + @TimKiem + '%' OR NhanVien.MaNV like '%' + @TimKiem + '%')
		END
GO

--Tao Stored Procedure hien thi du lieu cho Table Tai khoan
IF(OBJECT_ID('SP_TBLTaiKhoan') IS NOT NULL)
       DROP PROCEDURE SP_TBLTaiKhoan
GO
CREATE PROCEDURE SP_TBLTaiKhoan
AS 
       SELECT TaiKhoan, MatKhau, NhanVien.MaNV, NhanVien.MaPB
       FROM TaiKhoan JOIN NhanVien ON TaiKhoan.MaNV = NhanVien.MaNV
Go

--Tao Stored Procedure hien thi du lieu cho Table cham cong
IF(OBJECT_ID('SP_TBLChamCong') IS NOT NULL)
       DROP PROCEDURE SP_TBLChamCong
GO
CREATE PROCEDURE SP_TBLChamCong
(
	@NgayDauThang date,
	@TimKiem varchar(50)
)
AS 
	SELECT NhanVien.MaNV, NhanVien.HoTen, PhongBan.TenPB, ChamCong.* FROM ChamCong JOIN NhanVien ON ChamCong.MaNV = NhanVien.MaNV
							JOIN PhongBan ON PhongBan.MaPB = NhanVien.MaPB
	WHERE NgayDauThang = @NgayDauThang AND (NhanVien.MaNV like '%' + @TimKiem + '%' OR NhanVien.HoTen like '%' + @TimKiem + '%')
Go

/*
	Stored restored db
*/

USE MASTER
GO
--Tao Stored Procedure phục hồi CSDL với file Full Backup và Differential Backup
IF (OBJECT_ID('SP_RESTOREDB') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREDB
GO
CREATE PROCEDURE SP_RESTOREDB
(
	@FullPath varchar(MAX),
	@DiffPath varchar(MAX),
	@Success bit OUTPUT
)
AS
	BEGIN TRY	
		IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
		BEGIN
			--backup bd hiện tại
			BACKUP DATABASE QuanLyNhanSu  
			TO DISK = 'D:\TemporalityBackup.bak'
			WITH INIT
			--dong tat ca cac ket noi
			ALTER DATABASE QuanLyNhanSu
			SET SINGLE_USER
			WITH ROLLBACK IMMEDIATE;
		END

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @Fullpath
		WITH REPLACE, NORECOVERY

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @DiffPath
		WITH REPLACE, RECOVERY

		SET @Success = 1
	END TRY
	BEGIN CATCH
		BEGIN
			SET @Success = 0
			--khoi phuc lai db đã backup ở trên khi bị lỗi
				RESTORE DATABASE QuanLyNhanSu  
				FROM DISK = 'D:\TemporalityBackup.bak'
				WITH REPLACE, RECOVERY
			ALTER DATABASE QuanLyNhanSu
			SET MULTI_USER;
		END
	END CATCH
GO

--Tao Stored Procedure phục hồi CSDL chỉ với file Full Backup
IF (OBJECT_ID('SP_RESTOREQLNSOnlyFullBackup') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREQLNSOnlyFullBackup
GO
CREATE PROCEDURE SP_RESTOREQLNSOnlyFullBackup
(
	@FullPath varchar(MAX),
	@Success bit OUTPUT
)
AS
	BEGIN TRY
		IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
		BEGIN
			ALTER DATABASE QuanLyNhanSu
			SET SINGLE_USER
			WITH ROLLBACK IMMEDIATE;
		END

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @Fullpath
		WITH REPLACE, RECOVERY
		SET @Success = 1

		ALTER DATABASE QuanLyNhanSu
		SET MULTI_USER;
	END TRY
	BEGIN CATCH
		SET @Success = 0	
		ALTER DATABASE QuanLyNhanSu
		SET MULTI_USER;
	END CATCH	
GO 