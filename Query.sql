USE QuanLyNhanSu
GO

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang NhanVien
IF (OBJECT_ID('SP_NhanVien') IS NOT NULL)
  DROP PROCEDURE SP_NhanVien
GO

CREATE PROCEDURE SP_NhanVien
(
	@MaNV varchar(10),
	@TenNV nvarchar(50),
	@GioiTinh bit,
	@NgaySinh date,
	@SoCM varchar(10),
	@DienThoai varchar(10),
	@Email varchar(50),
	@DiaChi nvarchar(max),
	@Hinh varchar(max),
	@TrinhDoHV nvarchar(30),
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM NhanVien
		END
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO NhanVien VALUES(@MaNV, @TenNV, @GioiTinh, @NgaySinh, @SoCM, 
				@DienThoai, @MaNV + '@cty.com.vn', @DiaChi, @Hinh, @TrinhDoHV)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE NhanVien 
			SET TenNV = @TenNV, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh, SoCM = @SoCM,
				DienThoai = @DienThoai, Email = @Email, DiaChi = @DiaChi, Hinh = @Hinh, TrinhDoHV = @TrinhDoHV
			WHERE MaNV = @MaNV
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM NhanVien WHERE MaNV = @MaNV
		END
GO

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang PhongBan
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
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM PhongBan
		END
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

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang ChucVu
IF (OBJECT_ID('SP_ChucVu') IS NOT NULL)
  DROP PROCEDURE SP_ChucVu
GO

CREATE PROCEDURE SP_ChucVu
(
	@MaCV varchar(5),
	@TenCV nvarchar(50),
	@PhuCap int,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM ChucVu
		END
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

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang HopDong
IF (OBJECT_ID('SP_HopDong') IS NOT NULL)
  DROP PROCEDURE SP_HopDong
GO

CREATE PROCEDURE SP_HopDong
(
	@MaNV varchar(10),
	@MaCV varchar(5),
	@MaPB varchar(5),
	@NgayVaoLam date,
	@NgayKetThuc date,
	@HeSoLuong int,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM HopDong
		END
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO HopDong VALUES(@MaNV, @MaCV, @MaPB, (SELECT CAST(getdate() AS date)), @NgayKetThuc, @HeSoLuong)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE HopDong 
			SET MaCV = @MaCV, MaPB = @MaPB, NgayVaoLam = @NgayVaoLam, NgayKetThuc = @NgayKetThuc, HeSoLuong = @HeSoLuong
			WHERE MaNV = @MaNV
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM HopDong WHERE MaNV = @MaNV
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
			INSERT INTO ChamCong VALUES(@MaNV, (SELECT CAST(getdate() AS date)), @TinhTrang, @TangCa)
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
	@GiaTri int,
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

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang PhuCapThamNien
IF (OBJECT_ID('SP_PhuCapThamNien') IS NOT NULL)
  DROP PROCEDURE SP_PhuCapThamNien
GO

CREATE PROCEDURE SP_PhuCapThamNien
(
	@Nam int,
	@PhuCap int,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM PhuCapThamNien
		END
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO PhuCapThamNien VALUES(@Nam, @PhuCap)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE PhuCapThamNien
			SET PhuCap = @PhuCap
			WHERE Nam = @Nam
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM PhuCapThamNien WHERE Nam = @Nam
		END
GO

--Tao Stored Procedure Select all, Insert, Update, Delete cho bang ThueTNCN
IF (OBJECT_ID('SP_ThueTNCN') IS NOT NULL)
  DROP PROCEDURE SP_ThueTNCN
GO

CREATE PROCEDURE SP_ThueTNCN
(
	@Luong int,
	@Thue real,
	@StatementType char(6)
)
AS
	IF @StatementType = 'Select'
		BEGIN
			SELECT * FROM ThueTNCN
		END
	IF @StatementType = 'Insert'
		BEGIN
			INSERT INTO ThueTNCN VALUES(@Luong, @Thue)
		END
	IF @StatementType = 'Update'
		BEGIN
			UPDATE ThueTNCN 
			SET Thue = @Thue
			WHERE Luong = @Luong
		END
	IF @StatementType = 'Delete'
		BEGIN
			DELETE FROM ThueTNCN WHERE Luong = @Luong
		END
GO