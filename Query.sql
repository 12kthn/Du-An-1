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
	@MaTruongPhong varchar(10),
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO PhongBan VALUES(@MaPB, @TenPB, @MaTruongPhong)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE PhongBan 
			SET TenPB = @TenPB, MaTruongPhong = @MaTruongPhong
			WHERE MaPB = @MaPB
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM PhongBan WHERE MaPB = @MaPB
		END
GO

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

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang NhanVien
IF (OBJECT_ID('SP_NhanVien') IS NOT NULL)
  DROP PROCEDURE SP_NhanVien
GO

CREATE PROCEDURE SP_NhanVien
(
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
	@LoaiNhanVien bit,
	@TrangThai bit,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO NhanVien VALUES(@MaNV, @HoTen, @GioiTinh, @NgaySinh, @SoCM, 
				@DienThoai, @MaNV + '@cty.com.vn', @DiaChi, @Hinh, @TrinhDoHV, @MaHD, @MaCV, @MaPB, 
				@NgayVaoLam, @NgayKetThuc, @HeSoLuong, @LoaiNhanVien, @TrangThai)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE NhanVien 
			SET HoTen = @HoTen, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh, SoCM = @SoCM,
				DienThoai = @DienThoai, Email = @Email, DiaChi = @DiaChi, Hinh = @Hinh, TrinhDoHV = @TrinhDoHV,
				MaHD = @MaHD, MaCV = @MaCV, MaPB = @MaPB, NgayVaoLam = @NgayVaoLam, 
				NgayKetThuc = @NgayKetThuc, HeSoLuong = @HeSoLuong, LoaiNhanVien = @LoaiNhanVien, TrangThai = @TrangThai
			WHERE MaNV = @MaNV
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM NhanVien WHERE MaNV = @MaNV
		END
GO

--Tao Stored Procedure Insert, Update, Delete cho bang PhongBan
IF (OBJECT_ID('SP_PhongBan') IS NOT NULL)
  DROP PROCEDURE SP_PhongBan
GO
CREATE PROCEDURE SP_PhongBan
(
	@MaPB varchar(5),
	@TenPB nvarchar(50),
	@MaTruongPhong varchar(10),
	@StatementType char(6)
)
AS
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO PhongBan VALUES(@MaPB, @TenPB, @MaTruongPhong)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE PhongBan 
			SET TenPB = @TenPB, MaTruongPhong = @MaTruongPhong
			WHERE MaPB = @MaPB
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM PhongBan WHERE MaPB = @MaPB
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
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM ThanNhan
		END
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

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang ChamCong
IF (OBJECT_ID('SP_ChamCong') IS NOT NULL)
  DROP PROCEDURE SP_ChamCong
GO

CREATE PROCEDURE SP_ChamCong
(
	@MaNV varchar(10),
	@Ngay date,
	@TinhTrang bit,
	@TangCa int,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM ChamCong
		END
	IF @StatementType = 'Insert'
		BEGIN
			IF @Ngay is null
				BEGIN
					SET @Ngay = (SELECT CAST(getdate() AS date))
				END
			INSERT INTO ChamCong VALUES(@MaNV, @Ngay, @TinhTrang, @TangCa)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE ChamCong 
			SET TinhTrang = @TinhTrang, TangCa = @TangCa
			WHERE MaNV = @MaNV AND Ngay = @Ngay
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM ChamCong WHERE MaNV = @MaNV AND Ngay = @Ngay
		END
GO

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang GiaTriChung
IF (OBJECT_ID('SP_GiaTriChung') IS NOT NULL)
  DROP PROCEDURE SP_GiaTriChung
GO

CREATE PROCEDURE SP_GiaTriChung
(
	@TenGiaTri nvarchar(50),
	@GiaTri real,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM GiaTriChung
		END
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO GiaTriChung VALUES(@TenGiaTri, @GiaTri)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE GiaTriChung 
			SET GiaTri = @GiaTri
			WHERE TenGiaTri = @TenGiaTri
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM GiaTriChung WHERE TenGiaTri = @TenGiaTri
		END
GO

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang ThueTNCN
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
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM BacThueTNCN
		END
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

--Tao Function lay Gia tri tu bang GiaTriChung
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
		SET @GiaTri = (SELECT GiaTri FROM GiaTriChung WHERE TenGiaTri = @TenGiaTri)
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
		SET @NgayCong = (SELECT COUNT(MaNV) FROM ChamCong WHERE MaNV = @MaNV AND 
				Ngay BETWEEN @NgayDauThang AND EOMONTH(@NgayDauThang))

		RETURN @NgayCong
	END
GO

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
	@NgayNhanLuong date,
	@TamUng int,
	@TrangThai bit
)
AS
	DECLARE	@LuongChinh int,
			@NgayCong int,
			@PC_TrachNhiem int,
			@ThuNhap int,
			@BHXH int,
			@BHYT int,
			@BHTN int,
			@GiamTruPhuThuoc int,
			@ThueTNCN int,			
			@ThucLanh int		
	
	SET @LuongChinh = [dbo].[FN_LuongChinh](@MaNV)
	SET @NgayCong = [dbo].[FN_SoNgayCong]('IT001', (SELECT DATEADD(DAY, 1, EOMONTH(@NgayNhanLuong, -1))))
	SET @PC_TrachNhiem = @LuongChinh*(SELECT PhuCap FROM ChucVu WHERE MaCV = (Select MaCV FROM NhanVien WHERE MaNV = @MaNV))
	SET @ThuNhap = @LuongChinh*@NgayCong/26 + @PC_TrachNhiem
	SET @BHXH = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHXH')
	SET @BHYT = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHYT')
	SET @BHTN = @LuongChinh*[dbo].[FN_SelectGiaTri]('BHTN')
	SET @GiamTruPhuThuoc = 3600000*(SELECT COUNT(MaTN) FROM ThanNhan WHERE MaNV = @MaNV AND GiamTruPhuThuoc = 1)
	SET @ThueTNCN = [dbo].[FN_TinhThueTNCN](@ThuNhap - @BHXH - @BHYT - @BHTN - @GiamTruPhuThuoc)
	SET @ThucLanh = @ThuNhap - @BHXH - @BHYT - @BHTN - @ThueTNCN

	INSERT INTO BangLuong VALUES(@MaNV, @NgayNhanLuong, @LuongChinh, @NgayCong, @PC_TrachNhiem,
					@ThuNhap, @BHXH, @BHYT, @BHTN, @GiamTruPhuThuoc, @ThueTNCN, @TamUng, @ThucLanh, @TrangThai)
GO

--Tao Stored Procedure tinh so luong nam nu
IF (OBJECT_ID('SP_SLNamNu') IS NOT NULL)
  DROP PROCEDURE SP_SLNamNu
GO
CREATE PROCEDURE SP_SLNamNu
(
	--Tinh so luong theo Phong ban
	@MaPhongBan varchar(5)
)
AS
	SELECT GioiTinh, count(*) FROM NhanVien  WHERE MaPB like '%' + @MaPhongBan + '%' GROUP BY GioiTinh ORDER BY GioiTinh DESC
GO
EXEC SP_SLNamNu ''

--Tao Stored Procedure tinh so luong nhan vien chinh thuc
IF (OBJECT_ID('SP_NVChinhThuc') IS NOT NULL)
  DROP PROCEDURE SP_NVChinhThuc
GO
CREATE PROCEDURE SP_NVChinhThuc
(
	--Tinh so luong theo Phong ban
	@MaPhongBan varchar(5)
)
AS
	SELECT LoaiNhanVien, count(*) FROM NhanVien  WHERE MaPB like '%' + @MaPhongBan + '%' GROUP BY LoaiNhanVien ORDER BY LoaiNhanVien DESC
GO
EXEC SP_NVChinhThuc ''

--Tao Stored Procedure in tinh so luong nhan vien theo phong ban
IF (OBJECT_ID('SP_SLNVTheoPhongBan') IS NOT NULL)
  DROP PROCEDURE SP_SLNVTheoPhongBan
GO
CREATE PROCEDURE SP_SLNVTheoPhongBan
(
	--Tinh so luong theo Phong ban
	@MaPhongBan varchar(5)
)
AS
	IF @MaPhongBan is not null
		BEGIN
			SELECT PhongBan.TenPB, COUNT(*) FROM NhanVien JOIN PhongBan on NhanVien.MaPB = PhongBan.MaPB
			WHERE PhongBan.MaPB like '%' + @MaPhongBan + '%' 
			GROUP BY PhongBan.MaPB, PhongBan.TenPB
		END
	ELSE
		BEGIN
			SELECT COUNT(*) FROM NhanVien
		END
GO		
SP_SLNVTheoPhongBan null

GO
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
exec SP_SoGioLamViec 2019
EXEC SP_SoGioLamViec null
GO

--Tao Stored Procedure tinh tong thu nhap theo nam
IF (OBJECT_ID('SP_ThuNhap') IS NOT NULL)
  DROP PROCEDURE SP_ThuNhap
GO
CREATE PROCEDURE SP_ThuNhap
(
	@Nam int
)
AS
	IF @Nam is not null
		BEGIN
			SELECT SUM(ThuNhap) FROM BangLuong WHERE YEAR(NgayNhanLuong) = @Nam
		END
	ELSE
		BEGIN
			SELECT SUM(ThuNhap) FROM BangLuong
		END
GO		
exec SP_ThuNhap 2019
EXEC SP_ThuNhap null
GO

--Tao Stored Procedure tinh so luong nhan vien theo thoi gian
IF (OBJECT_ID('SP_SLNVTheoThoiGian') IS NOT NULL)
  DROP PROCEDURE SP_SLNVTheoThoiGian
GO
CREATE PROCEDURE SP_SLNVTheoThoiGian
(
	@Thang varchar(2),
	@Nam char(4)
)
AS
	SELECT COUNT(*) FROM NhanVien WHERE NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
GO		
SP_SLNVTheoThoiGian '8', '2019'


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
	SELECT COUNT(*) FROM NhanVien WHERE MaPB like '%' + @MaPB + '%' AND NgayVaoLam <= EOMONTH(CAST(@Nam + '-' + @Thang + '-' + '1' AS DATETIME))
GO		
SP_SLNVTheoThoiGianVaPB 'MK', '6', '2019'

select * from NhanVien


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

--Tao Stored Procedure tim kiem nhan vien theo MaNV
IF (OBJECT_ID('SP_FindNVByCode') IS NOT NULL)
  DROP PROCEDURE SP_FindNVByCode
GO
CREATE PROCEDURE SP_FindNVByCode
(
	@MaNV varchar(10)
)
AS
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
IF (OBJECT_ID('SP_FindNVByPB') IS NOT NULL)
  DROP PROCEDURE SP_FindNVByPB
GO
CREATE PROCEDURE SP_FindNVByPB
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

EXEC SP_FindPhongBanByCode null

--Tao Stored Procedure tim kiem Chuc vu theo ma
IF (OBJECT_ID('SP_FindChucVyByCode') IS NOT NULL)
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

EXEC SP_FindChucVuByCode 'NT'


--Tao Stored Procedure kiem tra trang thai di lam cua nhan vien theo ngay thang
IF (OBJECT_ID('SP_TrangThaiDiLam') IS NOT NULL)
  DROP PROCEDURE SP_TrangThaiDiLam
GO
CREATE PROCEDURE SP_TrangThaiDiLam
(
	@MaNV varchar(10),
	@Nam char(4),
	@Thang varchar(2),
	@Ngay varchar(2)
)
AS
	BEGIN
		SELECT TinhTrang FROM ChamCong WHERE MaNV = @MaNV AND Ngay = CAST(@Nam + '-' + @Thang + '-' + @Ngay AS DATETIME)
	END
GO
EXEC SP_TrangThaiDiLam 'IT002', '2019', '6', '4'

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
		SELECT TinhTrang FROM ChamCong WHERE MaNV = @MaNV AND Ngay BETWEEN @Ngay AND EOMONTH(@ngay)
	END
GO

EXEC SP_ChamCongTheoThang 'IT001', '2019', '5'