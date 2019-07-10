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
	MaTruongPhong varchar(10) not null
)
GO

CREATE TABLE ChucVu
(
	MaCV varchar(5) PRIMARY KEY,
	TenCV nvarchar(20) not null,
	PhuCap int not null
)
GO

CREATE TABLE NhanVien
(
	MaNV varchar(10) PRIMARY KEY,
	TenNV nvarchar(50) not null,
	GioiTinh bit not null,
	NgaySinh date not null,
	SoCM varchar(10) not null,
	DienThoai varchar(10) not null,
	Email varchar(50) null,
	DiaChi nvarchar(max) not null,
	Hinh varchar(max) not null,
	TrinhDoHV nvarchar(30) not null,
)
GO

CREATE TABLE HopDong
(
	MaNV varchar(10) not null PRIMARY KEY,
	MaCV varchar(5) not null,
	MaPB varchar(5) not null,
	NgayVaoLam date not null,
	NgayKetThuc date,
	HeSoLuong int not null,

	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
	FOREIGN KEY (MaCV) REFERENCES ChucVu(MaCV),
	FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
)
GO



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

CREATE TABLE TaiKhoan
(
	MaNV varchar(10) PRIMARY KEY,
	MatKhau varchar(50) not null,
	TrangThai bit not null,
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
)
GO

CREATE TABLE GiaTriChung
(
	TenGiaTri nvarchar(50) PRIMARY KEY,
	GiaTri int not null
)
GO

CREATE TABLE ThamNien
(
	Nam int PRIMARY KEY,
	PhuCap int not null
)

CREATE TABLE LuyKe
(
	Luong int PRIMARY KEY,
	Thue real not null
)
