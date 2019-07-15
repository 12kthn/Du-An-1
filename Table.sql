USE master
GO
IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
DROP DATABASE QuanLyNhanSu
GO

CREATE DATABASE QuanLyNhanSu
GO

USE QuanLyNhanSu
GO

CREATE TABLE NhanVien
(
	MaNV varchar(10) PRIMARY KEY,
	TenNV nvarchar(50) not null,
	GioiTinh bit not null,
	NgaySinh date not null,
	SoCM varchar(10) not null,
	DienThoai varchar(10) not null,
	Email varchar(50) not null,
	DiaChi nvarchar(max) not null,
	Hinh varchar(max),
	TrinhDoHV nvarchar(30) not null

	UNIQUE(SoCM)
)
GO

CREATE TABLE PhongBan
(
	MaPB varchar(5) PRIMARY KEY,
	TenPB nvarchar(50) not null,
	MaTruongPhong varchar(10),

	FOREIGN KEY (MaTruongPhong) REFERENCES NhanVien(MaNV)
)
GO

CREATE TABLE ChucVu
(
	MaCV varchar(5) PRIMARY KEY,
	TenCV nvarchar(20) not null,
	PhuCap real not null
)
GO

CREATE TABLE HopDong
(
	MaHD varchar(10) not null PRIMARY KEY,
	MaNV varchar(10),
	MaCV varchar(5) not null,
	MaPB varchar(5),
	NgayVaoLam date not null,
	NgayKetThuc date,
	HeSoLuong real not null,

	UNIQUE(MaNV),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
	FOREIGN KEY (MaCV) REFERENCES ChucVu(MaCV),
	FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
)
GO

CREATE TABLE TaiKhoan
(
	MaNV varchar(10) PRIMARY KEY,
	MatKhau varchar(50) not null,
	TrangThai bit not null,
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
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
	
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
)

CREATE TABLE ChamCong
(
	MaNV varchar(10) not null,
	Ngay date not null,
	TinhTrang bit not null,
	TangCa int,
	PRIMARY KEY (MaNV, Ngay),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
)
GO

CREATE TABLE BangLuong
(
	MaNV varchar(10),
	NgayNhanLuong date not null,
	LuongChinh int not null,
	NgayCong int not null,
	PC_TrachNhiem int not null,
	ThuNhap int not null,
	BHXH int not null,
	BHYT int not null,
	BHTN int not null,
	PhuThuoc int not null,
	ThueTNCN int not null,
	TamUng int not null,
	ThucLanh int not null,
	TrangThai bit not null

	PRIMARY KEY (MaNV, NgayNhanLuong),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
)

CREATE TABLE GiaTriChung
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
