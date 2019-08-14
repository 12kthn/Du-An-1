USE [QuanLyNhanSu]
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'GD', N'Giám đốc')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'IT', N'Kỹ thuật')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'KT', N'Kế toán')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'MK', N'Marketing')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'NS', N'Nhân sự')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'SL', N'Bán hàng')
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [PhuCap]) VALUES (N'GD', N'GD', 0.05)
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [PhuCap]) VALUES (N'NT', N'NT', 0.02)
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [PhuCap]) VALUES (N'NV', N'Nhân viên', 0)
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [PhuCap]) VALUES (N'PG', N'Phó Giám đốc', 0.04)
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [PhuCap]) VALUES (N'TP', N'Trưởng Phòng', 0.03)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'IT001', N'Nguyễn Tường Tâm', 1, CAST(0x19150B00 AS Date), N'2413252164', N'0921587694', N'IT001@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Đại học', N'HDLD150001', N'TP', N'IT', CAST(0x77390B00 AS Date), CAST(0xBC470B00 AS Date), 5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'IT002', N'Trần Quốc Vương', 1, CAST(0x51180B00 AS Date), N'3556443578', N'0902434100', N'IT002@cty.com.vn', N'Quận 10', N'MaleEmployee.png', N'Đại học', N'HDLD160001', N'NT', N'IT', CAST(0x1A3B0B00 AS Date), CAST(0x5E490B00 AS Date), 3.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'IT003', N'Đỗ Đại Dương', 1, CAST(0x5B1B0B00 AS Date), N'6557844354', N'0937790086', N'IT003@cty.com.vn', N'Bình Thạnh', N'MaleEmployee.png', N'Cao đẳng', N'HDLD180001', N'NV', N'IT', CAST(0xD53D0B00 AS Date), CAST(0x194C0B00 AS Date), 2.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'IT004', N'Huỳnh Long Minh Trí', 1, CAST(0xDC200B00 AS Date), N'8809400657', N'0125009896', N'IT004@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Cao đẳng', N'HDLD180002', N'NV', N'IT', CAST(0xA93E0B00 AS Date), CAST(0xEE4C0B00 AS Date), 2.2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'IT005', N'Đặng Minh Long', 1, CAST(0x07220B00 AS Date), N'2345658954', N'0235645789', N'IT005@cty.com.vn', N'Quận 12', N'MaleEmployee.png', N'Cao đẳng', N'HDLD190015', N'NV', N'IT', CAST(0xF83F0B00 AS Date), CAST(0x3D4E0B00 AS Date), 2.3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'KT001', N'Đào Hồng Sơn', 1, CAST(0x63190B00 AS Date), N'5613253164', N'0921587694', N'KT001@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Đại học', N'HDLD150002', N'TP', N'KT', CAST(0xB4390B00 AS Date), CAST(0xF9470B00 AS Date), 4.8, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'KT002', N'Phan Lê Khải', 1, CAST(0xD8190B00 AS Date), N'7778379866', N'0986777650', N'KT002@cty.com.vn', N'Đồng Nai', N'MaleEmployee.png', N'Đại học', N'HDLD160002', N'NT', N'KT', CAST(0x1A3B0B00 AS Date), CAST(0x5E490B00 AS Date), 3.2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'KT003', N'Lê Thị Thảo My', 0, CAST(0x8D1C0B00 AS Date), N'6554537888', N'0126889012', N'KT005@cty.com.vn', N'Quận 3', N'FemaleEmployee.png', N'Đại Học', N'HDLD160003', N'NV', N'KT', CAST(0x643B0B00 AS Date), CAST(0xA8490B00 AS Date), 2.7, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'KT004', N'Lê Thị Thu Thủy', 0, CAST(0x99220B00 AS Date), N'5645377687', N'0985554444', N'KT006@cty.com.vn', N'Quận 1', N'FemaleEmployee.png', N'Đại Học', N'HDLD180005', N'NV', N'KT', CAST(0x353E0B00 AS Date), CAST(0x7A4C0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK001', N'Trần Quang Vinh', 1, CAST(0x9E0F0B00 AS Date), N'2413325164', N'0921587694', N'MK001@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Cao đẳng', N'HDLD140001', N'GD', N'GD', CAST(0x4F390B00 AS Date), CAST(0x94470B00 AS Date), 10, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK002', N'Nguyễn Văn Biển', 1, CAST(0xCD150B00 AS Date), N'7634332345', N'0126998562', N'MK002@cty.com.vn', N'Tân Phú', NULL, N'Đại học', N'HDLD160004', N'TP', N'MK', CAST(0x3B3B0B00 AS Date), CAST(0x7F490B00 AS Date), 5.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK003', N'Nguyễn Đức Nam', 1, CAST(0xBC190B00 AS Date), N'5546536543', N'0902322321', N'MK003@cty.com.vn', N'Tân Bình', N'MaleEmployee.png', N'Đại Học', N'HDLD180003', N'NV', N'MK', CAST(0xF63D0B00 AS Date), CAST(0x3B4C0B00 AS Date), 3.2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK004', N'Cao Thanh Tú', 0, CAST(0x451B0B00 AS Date), N'4434635787', N'0125334544', N'MK004@cty.com.vn', N'Quận 9', NULL, N'Đại Học', N'HDLD180004', N'NV', N'MK', CAST(0x123E0B00 AS Date), CAST(0x574C0B00 AS Date), 3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK005', N'Lê Thị Hải Yến', 0, CAST(0x8E1C0B00 AS Date), N'8488323312', N'0900987121', N'MK005@cty.com.vn', N'Quận 7', N'FemaleEmployee.png', N'Đại Học', N'HDLD180018', N'NT', N'MK', CAST(0x4D3E0B00 AS Date), CAST(0x924C0B00 AS Date), 4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK006', N'Nguyễn Bá Huân', 1, CAST(0x191D0B00 AS Date), N'8670309024', N'0123565879', N'MK006@cty.com.vn', N'Quận 2', NULL, N'Đại Học', N'HDLD180005', N'NV', N'MK', CAST(0x4D3E0B00 AS Date), CAST(0x924C0B00 AS Date), 2.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK007', N'Nguyễn Văn Kiên', 1, CAST(0x511F0B00 AS Date), N'7446563778', N'0126666731', N'MK007@cty.com.vn', N'Quận 3', N'MaleEmployee.png', N'Đại Học', N'HDLD180006', N'NV', N'MK', CAST(0x5A3E0B00 AS Date), CAST(0x9F4C0B00 AS Date), 2.2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK008', N'Nguyễn Viết Toàn', 1, CAST(0x291B0B00 AS Date), N'884356473', N'0125554678', N'MK008@cty.com.vn', N'Bình Dương', NULL, N'Đại Học', N'HDLD160006', N'NT', N'MK', CAST(0x7A3B0B00 AS Date), CAST(0xBE490B00 AS Date), 4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK009', N'Nguyễn Cẩm Như', 0, CAST(0x15210B00 AS Date), N'8667131455', N'0989861102', N'MK009@cty.com.vn', N'Tân Bình', NULL, N'Đại Học', N'HDLD180007', N'NV', N'MK', CAST(0x7C3E0B00 AS Date), CAST(0xC14C0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK010', N'Nguyễn Nam Anh', 1, CAST(0x651F0B00 AS Date), N'7132125549', N'0124398909', N'MK010@cty.com.vn', N'Quận 9', NULL, N'Đại Học', N'HDLD180008', N'NV', N'MK', CAST(0x823E0B00 AS Date), CAST(0xC74C0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK011', N'Nguyễn Thị Thanh Tuyền', 0, CAST(0x0B220B00 AS Date), N'1234567891', N'0123456788', N'MK011@cty.com.vn', N'Quận 1, Hồ Chí Minh', N'FemaleEmployee.png', N'Đại học', N'HDLD190001', N'NV', N'MK', CAST(0x623F0B00 AS Date), CAST(0xA74D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK012', N'Nguyễn Thị Thanh Thủy', 0, CAST(0x97200B00 AS Date), N'1231231212', N'0123456456', N'MK012@cty.com.vn', N'Bình Thạnh', N'FemaleEmployee.png', N'Đại học', N'HDLD190002', N'NV', N'MK', CAST(0xA13F0B00 AS Date), CAST(0xE64D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK013', N'Nguyễn Minh Toàn', 1, CAST(0x9F200B00 AS Date), N'1235458976', N'0154596644', N'MK013@cty.com.vn', N'Phú Nhuận', N'', N'Đại học', N'HDLD190003', N'NV', N'MK', CAST(0xD83F0B00 AS Date), CAST(0x1D4E0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK014', N'Nguyễn Đại Nghĩa', 1, CAST(0x341F0B00 AS Date), N'5496215464', N'0123894673', N'MK014@cty.com.vn', N'Bình Thạnh', N'MaleEmployee.png', N'Đại học', N'HDLD190004', N'NV', N'MK', CAST(0xDA3F0B00 AS Date), CAST(0x1D4E0B00 AS Date), 2.2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'MK015', N'Trần Văn An', 1, CAST(0x561C0B00 AS Date), N'5697413665', N'0156632489', N'MK015@cty.com.vn', N'Bình Thạnh', N'MaleEmployee.png', N'Đại học', N'HDLD190005', N'NT', N'MK', CAST(0xDA3F0B00 AS Date), CAST(0x1D4E0B00 AS Date), 3.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'NS001', N'Phạm Duy Biên', 1, CAST(0xF4160B00 AS Date), N'2413253164', N'0921587694', N'NS001@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Đại học', N'HDLD150003', N'TP', N'NS', CAST(0x0D3A0B00 AS Date), CAST(0x52480B00 AS Date), 5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'NS002', N'Lê Văn Việt', 1, CAST(0x6E1B0B00 AS Date), N'8793656767', N'0937499390', N'NS002@cty.com.vn', N'Bình Dương', N'MaleEmployee.png', N'Đại Học', N'HDLD160007', N'NV', N'NS', CAST(0x973B0B00 AS Date), CAST(0xDB490B00 AS Date), 3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'NS003', N'Nguyễn Tiến Dũng', 1, CAST(0xD41F0B00 AS Date), N'786566367', N'0925415678', N'NS003@cty.com.vn', N'Đồng Nai', N'MaleEmployee.png', N'Đại Học', N'HDLD180009', N'NV', N'NS', CAST(0xBB3E0B00 AS Date), CAST(0x004D0B00 AS Date), 2.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'NS004', N'Nguyễn Tiến Đạt', 1, CAST(0x841E0B00 AS Date), N'8032537419', N'0126478863', N'NS004@cty.com.vn', N'Quận 2', N'MaleEmployee.png', N'Đại Học', N'HDLD180019', N'NV', N'NS', CAST(0xD63E0B00 AS Date), CAST(0x1B4D0B00 AS Date), 2.3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'NS005', N'Nguyễn Cẩm Ly', 0, CAST(0x6B1D0B00 AS Date), N'9893433245', N'0986547882', N'NS006@cty.com.vn', N'Gò Vấp', N'FemaleEmployee.png', N'Đại Học', N'HDLD180011', N'NV', N'NS', CAST(0xD63E0B00 AS Date), CAST(0x1B4D0B00 AS Date), 2.8, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL001', N'Lê Thị Kim Quy', 1, CAST(0x17150B00 AS Date), N'2413425164', N'0921587694', N'SL001@cty.com.vn', N'Gò Vấp', NULL, N'Cao đẳng', N'HDLD150004', N'TP', N'SL', CAST(0x463A0B00 AS Date), CAST(0x8B480B00 AS Date), 5.4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL002', N'Nguyễn Viết Tú', 1, CAST(0xC61C0B00 AS Date), N'7899944352', N'0928886213', N'SL002@cty.com.vn', N'Quận 9', N'MaleEmployee.png', N'Đại Học', N'HDLD160008', N'NT', N'SL', CAST(0xC03B0B00 AS Date), CAST(0x044A0B00 AS Date), 4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL003', N'Nguyễn Thúy Hạnh', 0, CAST(0xBA1D0B00 AS Date), N'8556443785', N'0985561213', N'SL003@cty.com.vn', N'Quận 2', N'FemaleEmployee.png', N'Đại Học', N'HDLD180012', N'NV', N'SL', CAST(0xDE3E0B00 AS Date), CAST(0x234D0B00 AS Date), 3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL004', N'Phan Nguyễn Long Nhật', 1, CAST(0x3A1F0B00 AS Date), N'7344342466', N'0126780054', N'SL004@cty.com.vn', N'Gò Vấp', N'MaleEmployee.png', N'Đại Học', N'HDLD180013', N'NV', N'SL', CAST(0xDE3E0B00 AS Date), CAST(0x234D0B00 AS Date), 3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL005', N'Nguyễn Anh Đức', 1, CAST(0x1D1F0B00 AS Date), N'7900849776', N'0125123443', N'SL005@cty.com.vn', N'Quận 9', NULL, N'Đại Học', N'HDLD160009', N'NT', N'SL', CAST(0xC03B0B00 AS Date), CAST(0x044A0B00 AS Date), 4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL006', N'Lê Minh Bình', 1, CAST(0x74200B00 AS Date), N'9065748843', N'0931343578', N'SL006@cty.com.vn', N'Bình Dương', N'MaleEmployee.png', N'Đại Học', N'HDLD180014', N'NV', N'SL', CAST(0xF83E0B00 AS Date), CAST(0x3D4D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL007', N'Phạm Minh Trí', 1, CAST(0x42200B00 AS Date), N'8235940098', N'0937452080', N'SL007@cty.com.vn', N'Quận 12', N'MaleEmployee.png', N'Đại Học', N'HDLD180015', N'NV', N'SL', CAST(0xF83E0B00 AS Date), CAST(0x3D4D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL008', N'Nguyễn Văn Danh', 1, CAST(0x42200B00 AS Date), N'7588646091', N'0126002132', N'SL008@cty.com.vn', N'Quận 3', N'MaleEmployee.png', N'Đại Học', N'HDLD160010', N'NT', N'SL', CAST(0x1B3C0B00 AS Date), CAST(0x5F4A0B00 AS Date), 4, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL009', N'Nguyễn Đình Hoàng', 1, CAST(0x361F0B00 AS Date), N'8890406765', N'0125434665', N'SL009@cty.com.vn', N'Quận 3', N'MaleEmployee.png', N'Đại Học', N'HDLD180016', N'NV', N'SL', CAST(0x163F0B00 AS Date), CAST(0x5B4D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL010', N'Nguyễn Bá Đao', 1, CAST(0x521F0B00 AS Date), N'7004089564', N'0125788434', N'SL010@cty.com.vn', N'Quận 12', N'MaleEmployee.png', N'Đại Học', N'HDLD180017', N'NV', N'SL', CAST(0x163F0B00 AS Date), CAST(0x5B4D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL011', N'Lê Văn Lâm', 1, CAST(0x331F0B00 AS Date), N'2366548961', N'0323342311', N'SL011@cty.com.vn', N'Quận 12', N'MaleEmployee.png', N'Đại học', N'HDLD190016', N'NV', N'SL', CAST(0x423F0B00 AS Date), CAST(0x874D0B00 AS Date), 2.5, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL012', N'Lê Long Thành', 1, CAST(0x2D1F0B00 AS Date), N'5332146622', N'0235645879', N'SL012@cty.com.vn', N'Phú Nhuận', N'MaleEmployee.png', N'Đại học', N'HDLD190017', N'NV', N'SL', CAST(0x423F0B00 AS Date), CAST(0x874D0B00 AS Date), 2.3, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL013', N'Lại Anh Văn', 1, CAST(0x9A200B00 AS Date), N'1335489631', N'0344563258', N'SL013@cty.com.vn', N'Quận 1', N'MaleEmployee.png', N'Cao đẳng', N'HDLD190018', N'NV', N'SL', CAST(0x423F0B00 AS Date), CAST(0x874D0B00 AS Date), 2, 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [SoCM], [DienThoai], [Email], [DiaChi], [Hinh], [TrinhDoHV], [MaHD], [MaCV], [MaPB], [NgayVaoLam], [NgayKetThuc], [HeSoLuong], [TrangThai]) VALUES (N'SL014', N'Lê Thị Minh Dung', 0, CAST(0x331F0B00 AS Date), N'2664789645', N'0345621584', N'SL014@cty.com.vn', N'Quận 6', N'FemaleEmployee.png', N'Đại học', N'HDLD190014', N'NV', N'SL', CAST(0x5E3F0B00 AS Date), CAST(0xA34D0B00 AS Date), 2.4, 1)
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'admin', N'admin', N'MK001')
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'it', N'it', N'IT001')
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'kt', N'kt', N'KT001')
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'mk', N'mk', N'MK002')
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'ns', N'ns', N'NS001')
GO
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'sl', N'sl', N'SL001')
GO
SET IDENTITY_INSERT [dbo].[ThanNhan] ON 

GO
INSERT [dbo].[ThanNhan] ([MaTN], [HoTen], [NgheNghiep], [MoiQuanHe], [MaNV], [GiamTruPhuThuoc]) VALUES (1, N'Phạm Ngọc Duy', N'Học Sinh', N'Em', N'IT001', 1)
GO
SET IDENTITY_INSERT [dbo].[ThanNhan] OFF
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT001', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT002', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT003', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT004', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT005', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'IT005', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT001', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT002', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT003', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'KT004', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK001', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK002', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK003', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK004', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK005', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK006', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK007', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK008', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK009', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK010', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK011', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK012', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK012', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK012', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK012', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK012', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK013', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK013', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK013', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK014', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK014', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK014', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK015', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK015', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'MK015', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS001', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS002', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS003', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS004', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'NS005', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL001', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL002', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL003', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL004', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL005', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL006', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL007', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xB63D0B00 AS Date), 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xD53D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xF13D0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x103E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x2E3E0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x4D3E0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x6B3E0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x8A3E0B00 AS Date), 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xA93E0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xC73E0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xE63E0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL008', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL009', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x043F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x233F0B00 AS Date), 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL010', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL011', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL012', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0x423F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL013', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0x5E3F0B00 AS Date), 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0x7D3F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0x9B3F0B00 AS Date), 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0xBA3F0B00 AS Date), 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0xD83F0B00 AS Date), 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0xF73F0B00 AS Date), 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[ChamCong] ([MaNV], [NgayDauThang], [Ngay1], [Ngay2], [Ngay3], [Ngay4], [Ngay5], [Ngay6], [Ngay7], [Ngay8], [Ngay9], [Ngay10], [Ngay11], [Ngay12], [Ngay13], [Ngay14], [Ngay15], [Ngay16], [Ngay17], [Ngay18], [Ngay19], [Ngay20], [Ngay21], [Ngay22], [Ngay23], [Ngay24], [Ngay25], [Ngay26], [Ngay27], [Ngay28], [Ngay29], [Ngay30], [Ngay31]) VALUES (N'SL014', CAST(0x71400B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xD93D0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xF53D0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 3600000, 2640288, 18561635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x143E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 3600000, 3072980, 21013558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x323E0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 3600000, 2640288, 18561635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x513E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x6F3E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x8E3E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xAD3E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 3600000, 3072980, 21013558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xCB3E0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 3600000, 2784519, 19378942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xEA3E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 3600000, 3072980, 21013558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x083F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x273F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x463F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x623F0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 3600000, 2640288, 18561635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x813F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0x9F3F0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 3600000, 2784519, 19378942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xBE3F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 3600000, 2928750, 20196250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xDC3F0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 3600000, 2784519, 19378942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT001', CAST(0xFB3F0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 3600000, 3072980, 21013558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xD93D0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xF53D0B00 AS Date), 17500000, 24, 350000, 16503846, 1400000, 262500, 175000, 0, 2199952, 12466394, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x143E0B00 AS Date), 17500000, 27, 350000, 18523076, 1400000, 262500, 175000, 0, 2502836, 14182740, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x323E0B00 AS Date), 17500000, 24, 350000, 16503846, 1400000, 262500, 175000, 0, 2199952, 12466394, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x513E0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x6F3E0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x8E3E0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xAD3E0B00 AS Date), 17500000, 27, 350000, 18523076, 1400000, 262500, 175000, 0, 2502836, 14182740, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xCB3E0B00 AS Date), 17500000, 25, 350000, 17176923, 1400000, 262500, 175000, 0, 2300913, 13038510, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xEA3E0B00 AS Date), 17500000, 27, 350000, 18523076, 1400000, 262500, 175000, 0, 2502836, 14182740, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x083F0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x273F0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x463F0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x623F0B00 AS Date), 17500000, 24, 350000, 16503846, 1400000, 262500, 175000, 0, 2199952, 12466394, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x813F0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0x9F3F0B00 AS Date), 17500000, 25, 350000, 17176923, 1400000, 262500, 175000, 0, 2300913, 13038510, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xBE3F0B00 AS Date), 17500000, 26, 350000, 17850000, 1400000, 262500, 175000, 0, 2401875, 13610625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xDC3F0B00 AS Date), 17500000, 25, 350000, 17176923, 1400000, 262500, 175000, 0, 2300913, 13038510, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT002', CAST(0xFB3F0B00 AS Date), 17500000, 27, 350000, 18523076, 1400000, 262500, 175000, 0, 2502836, 14182740, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xF53D0B00 AS Date), 12500000, 24, 0, 11538461, 0, 0, 0, 0, 1730769, 9807692, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x143E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x323E0B00 AS Date), 12500000, 24, 0, 11538461, 1000000, 187500, 125000, 0, 1533894, 8692067, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x513E0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x6F3E0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x8E3E0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xAD3E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xCB3E0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xEA3E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x083F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x273F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x463F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x623F0B00 AS Date), 12500000, 24, 0, 11538461, 1000000, 187500, 125000, 0, 1533894, 8692067, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x813F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0x9F3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xBE3F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xDC3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT003', CAST(0xFB3F0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0xCB3E0B00 AS Date), 11000000, 25, 0, 10576923, 0, 0, 0, 0, 1586538, 8990385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0xEA3E0B00 AS Date), 11000000, 27, 0, 11423076, 880000, 165000, 110000, 0, 1540211, 8727865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x083F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x273F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x463F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x623F0B00 AS Date), 11000000, 24, 0, 10153846, 880000, 165000, 110000, 0, 1349827, 7649019, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x813F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0x9F3F0B00 AS Date), 11000000, 25, 0, 10576923, 880000, 165000, 110000, 0, 1413288, 8008635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0xBE3F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0xDC3F0B00 AS Date), 11000000, 25, 0, 10576923, 880000, 165000, 110000, 0, 1413288, 8008635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'IT004', CAST(0xFB3F0B00 AS Date), 11000000, 27, 0, 11423076, 880000, 165000, 110000, 0, 1540211, 8727865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xD93D0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xF53D0B00 AS Date), 24000000, 24, 720000, 22873846, 1920000, 360000, 240000, 0, 3053077, 17300769, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x143E0B00 AS Date), 24000000, 27, 720000, 25643076, 1920000, 360000, 240000, 0, 3468461, 19654615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x323E0B00 AS Date), 24000000, 24, 720000, 22873846, 1920000, 360000, 240000, 0, 3053077, 17300769, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x513E0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x6F3E0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x8E3E0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xAD3E0B00 AS Date), 24000000, 27, 720000, 25643076, 1920000, 360000, 240000, 0, 3468461, 19654615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xCB3E0B00 AS Date), 24000000, 25, 720000, 23796923, 1920000, 360000, 240000, 0, 3191538, 18085385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xEA3E0B00 AS Date), 24000000, 27, 720000, 25643076, 1920000, 360000, 240000, 0, 3468461, 19654615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x083F0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x273F0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x463F0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x623F0B00 AS Date), 24000000, 24, 720000, 22873846, 1920000, 360000, 240000, 0, 3053077, 17300769, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x813F0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0x9F3F0B00 AS Date), 24000000, 25, 720000, 23796923, 1920000, 360000, 240000, 0, 3191538, 18085385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xBE3F0B00 AS Date), 24000000, 26, 720000, 24720000, 1920000, 360000, 240000, 0, 3330000, 18870000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xDC3F0B00 AS Date), 24000000, 25, 720000, 23796923, 1920000, 360000, 240000, 0, 3191538, 18085385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT001', CAST(0xFB3F0B00 AS Date), 24000000, 27, 720000, 25643076, 1920000, 360000, 240000, 0, 3468461, 19654615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xD93D0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xF53D0B00 AS Date), 16000000, 24, 320000, 15089230, 1280000, 240000, 160000, 0, 2011384, 11397846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x143E0B00 AS Date), 16000000, 27, 320000, 16935384, 1280000, 240000, 160000, 0, 2288307, 12967077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x323E0B00 AS Date), 16000000, 24, 320000, 15089230, 1280000, 240000, 160000, 0, 2011384, 11397846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x513E0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x6F3E0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x8E3E0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xAD3E0B00 AS Date), 16000000, 27, 320000, 16935384, 1280000, 240000, 160000, 0, 2288307, 12967077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xCB3E0B00 AS Date), 16000000, 25, 320000, 15704615, 1280000, 240000, 160000, 0, 2103692, 11920923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xEA3E0B00 AS Date), 16000000, 27, 320000, 16935384, 1280000, 240000, 160000, 0, 2288307, 12967077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x083F0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x273F0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x463F0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x623F0B00 AS Date), 16000000, 24, 320000, 15089230, 1280000, 240000, 160000, 0, 2011384, 11397846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x813F0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0x9F3F0B00 AS Date), 16000000, 25, 320000, 15704615, 1280000, 240000, 160000, 0, 2103692, 11920923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xBE3F0B00 AS Date), 16000000, 26, 320000, 16320000, 1280000, 240000, 160000, 0, 2196000, 12444000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xDC3F0B00 AS Date), 16000000, 25, 320000, 15704615, 1280000, 240000, 160000, 0, 2103692, 11920923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT002', CAST(0xFB3F0B00 AS Date), 16000000, 27, 320000, 16935384, 1280000, 240000, 160000, 0, 2288307, 12967077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xD93D0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xF53D0B00 AS Date), 13500000, 24, 0, 12461538, 1080000, 202500, 135000, 0, 1656605, 9387433, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x143E0B00 AS Date), 13500000, 27, 0, 14019230, 1080000, 202500, 135000, 0, 1890259, 10711471, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x323E0B00 AS Date), 13500000, 24, 0, 12461538, 1080000, 202500, 135000, 0, 1656605, 9387433, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x513E0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x6F3E0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x8E3E0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xAD3E0B00 AS Date), 13500000, 27, 0, 14019230, 1080000, 202500, 135000, 0, 1890259, 10711471, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xCB3E0B00 AS Date), 13500000, 25, 0, 12980769, 1080000, 202500, 135000, 0, 1734490, 9828779, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xEA3E0B00 AS Date), 13500000, 27, 0, 14019230, 1080000, 202500, 135000, 0, 1890259, 10711471, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x083F0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x273F0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x463F0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x623F0B00 AS Date), 13500000, 24, 0, 12461538, 1080000, 202500, 135000, 0, 1656605, 9387433, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x813F0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0x9F3F0B00 AS Date), 13500000, 25, 0, 12980769, 1080000, 202500, 135000, 0, 1734490, 9828779, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xBE3F0B00 AS Date), 13500000, 26, 0, 13500000, 1080000, 202500, 135000, 0, 1812375, 10270125, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xDC3F0B00 AS Date), 13500000, 25, 0, 12980769, 1080000, 202500, 135000, 0, 1734490, 9828779, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT003', CAST(0xFB3F0B00 AS Date), 13500000, 27, 0, 14019230, 1080000, 202500, 135000, 0, 1890259, 10711471, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x513E0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x6F3E0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x8E3E0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xAD3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xCB3E0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xEA3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x083F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'KT004', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xD93D0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xF53D0B00 AS Date), 50000000, 24, 2500000, 48653846, 4000000, 750000, 500000, 0, 6510577, 36893269, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x143E0B00 AS Date), 50000000, 27, 2500000, 54423076, 4000000, 750000, 500000, 0, 7375961, 41797115, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x323E0B00 AS Date), 50000000, 24, 2500000, 48653846, 4000000, 750000, 500000, 0, 6510577, 36893269, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x513E0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x6F3E0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x8E3E0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xAD3E0B00 AS Date), 50000000, 27, 2500000, 54423076, 4000000, 750000, 500000, 0, 7375961, 41797115, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xCB3E0B00 AS Date), 50000000, 25, 2500000, 50576923, 4000000, 750000, 500000, 0, 6799039, 38527884, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xEA3E0B00 AS Date), 50000000, 27, 2500000, 54423076, 4000000, 750000, 500000, 0, 7375961, 41797115, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x083F0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x273F0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x463F0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x623F0B00 AS Date), 50000000, 24, 2500000, 48653846, 4000000, 750000, 500000, 0, 6510577, 36893269, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x813F0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0x9F3F0B00 AS Date), 50000000, 25, 2500000, 50576923, 4000000, 750000, 500000, 0, 6799039, 38527884, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xBE3F0B00 AS Date), 50000000, 26, 2500000, 52500000, 4000000, 750000, 500000, 0, 7087500, 40162500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xDC3F0B00 AS Date), 50000000, 25, 2500000, 50576923, 4000000, 750000, 500000, 0, 6799039, 38527884, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK001', CAST(0xFB3F0B00 AS Date), 50000000, 27, 2500000, 54423076, 4000000, 750000, 500000, 0, 7375961, 41797115, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xD93D0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xF53D0B00 AS Date), 27500000, 24, 825000, 26209615, 2200000, 412500, 275000, 0, 3498317, 19823798, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x143E0B00 AS Date), 27500000, 27, 825000, 29382692, 2200000, 412500, 275000, 0, 3974279, 22520913, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x323E0B00 AS Date), 27500000, 24, 825000, 26209615, 2200000, 412500, 275000, 0, 3498317, 19823798, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x513E0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x6F3E0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x8E3E0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xAD3E0B00 AS Date), 27500000, 27, 825000, 29382692, 2200000, 412500, 275000, 0, 3974279, 22520913, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xCB3E0B00 AS Date), 27500000, 25, 825000, 27267307, 2200000, 412500, 275000, 0, 3656971, 20722836, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xEA3E0B00 AS Date), 27500000, 27, 825000, 29382692, 2200000, 412500, 275000, 0, 3974279, 22520913, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x083F0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x273F0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x463F0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x623F0B00 AS Date), 27500000, 24, 825000, 26209615, 2200000, 412500, 275000, 0, 3498317, 19823798, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x813F0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0x9F3F0B00 AS Date), 27500000, 25, 825000, 27267307, 2200000, 412500, 275000, 0, 3656971, 20722836, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xBE3F0B00 AS Date), 27500000, 26, 825000, 28325000, 2200000, 412500, 275000, 0, 3815625, 21621875, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xDC3F0B00 AS Date), 27500000, 25, 825000, 27267307, 2200000, 412500, 275000, 0, 3656971, 20722836, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK002', CAST(0xFB3F0B00 AS Date), 27500000, 27, 825000, 29382692, 2200000, 412500, 275000, 0, 3974279, 22520913, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x143E0B00 AS Date), 16000000, 27, 0, 16615384, 0, 0, 0, 0, 2492307, 14123077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x323E0B00 AS Date), 16000000, 24, 0, 14769230, 1280000, 240000, 160000, 0, 1963384, 11125846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x513E0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x6F3E0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x8E3E0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xAD3E0B00 AS Date), 16000000, 27, 0, 16615384, 1280000, 240000, 160000, 0, 2240307, 12695077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xCB3E0B00 AS Date), 16000000, 25, 0, 15384615, 1280000, 240000, 160000, 0, 2055692, 11648923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xEA3E0B00 AS Date), 16000000, 27, 0, 16615384, 1280000, 240000, 160000, 0, 2240307, 12695077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x083F0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x273F0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x463F0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x623F0B00 AS Date), 16000000, 24, 0, 14769230, 1280000, 240000, 160000, 0, 1963384, 11125846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x813F0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0x9F3F0B00 AS Date), 16000000, 25, 0, 15384615, 1280000, 240000, 160000, 0, 2055692, 11648923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xBE3F0B00 AS Date), 16000000, 26, 0, 16000000, 1280000, 240000, 160000, 0, 2148000, 12172000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xDC3F0B00 AS Date), 16000000, 25, 0, 15384615, 1280000, 240000, 160000, 0, 2055692, 11648923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK003', CAST(0xFB3F0B00 AS Date), 16000000, 27, 0, 16615384, 1280000, 240000, 160000, 0, 2240307, 12695077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x323E0B00 AS Date), 15000000, 24, 0, 13846153, 0, 0, 0, 0, 2076923, 11769230, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x513E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x6F3E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x8E3E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xAD3E0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xCB3E0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xEA3E0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x083F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x273F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x463F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x623F0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x813F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0x9F3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xBE3F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xDC3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK004', CAST(0xFB3F0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x6F3E0B00 AS Date), 20000000, 26, 400000, 20400000, 0, 0, 0, 0, 3060000, 17340000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x8E3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xAD3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xCB3E0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xEA3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x083F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x273F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x463F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x623F0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x813F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0x9F3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xBE3F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xDC3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK005', CAST(0xFB3F0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x6F3E0B00 AS Date), 12500000, 26, 0, 12500000, 0, 0, 0, 0, 1875000, 10625000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x8E3E0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xAD3E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xCB3E0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xEA3E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x083F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x273F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x463F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x623F0B00 AS Date), 12500000, 24, 0, 11538461, 1000000, 187500, 125000, 0, 1533894, 8692067, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x813F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0x9F3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xBE3F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xDC3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK006', CAST(0xFB3F0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x6F3E0B00 AS Date), 11000000, 26, 0, 11000000, 0, 0, 0, 0, 1650000, 9350000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x8E3E0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xAD3E0B00 AS Date), 11000000, 27, 0, 11423076, 880000, 165000, 110000, 0, 1540211, 8727865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xCB3E0B00 AS Date), 11000000, 25, 0, 10576923, 880000, 165000, 110000, 0, 1413288, 8008635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xEA3E0B00 AS Date), 11000000, 27, 0, 11423076, 880000, 165000, 110000, 0, 1540211, 8727865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x083F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x273F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x463F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x623F0B00 AS Date), 11000000, 24, 0, 10153846, 880000, 165000, 110000, 0, 1349827, 7649019, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x813F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0x9F3F0B00 AS Date), 11000000, 25, 0, 10576923, 880000, 165000, 110000, 0, 1413288, 8008635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xBE3F0B00 AS Date), 11000000, 26, 0, 11000000, 880000, 165000, 110000, 0, 1476750, 8368250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xDC3F0B00 AS Date), 11000000, 25, 0, 10576923, 880000, 165000, 110000, 0, 1413288, 8008635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK007', CAST(0xFB3F0B00 AS Date), 11000000, 27, 0, 11423076, 880000, 165000, 110000, 0, 1540211, 8727865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xD93D0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xF53D0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x143E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x323E0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x513E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x6F3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x8E3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xAD3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xCB3E0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xEA3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x083F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x273F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x463F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x623F0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x813F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0x9F3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xBE3F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xDC3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK008', CAST(0xFB3F0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x8E3E0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xAD3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xCB3E0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xEA3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x083F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK009', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x8E3E0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xAD3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xCB3E0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xEA3E0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x083F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK010', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK011', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK011', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK011', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK011', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK011', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK012', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK012', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK012', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK013', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 0, 0, 0, 0, 1557692, 8826923, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK014', CAST(0xFB3F0B00 AS Date), 11000000, 27, 0, 11423076, 0, 0, 0, 0, 1713461, 9709615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'MK015', CAST(0xFB3F0B00 AS Date), 17500000, 27, 350000, 18523076, 0, 0, 0, 0, 2778461, 15744615, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xD93D0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xF53D0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 0, 3180288, 18021635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x143E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 0, 3612980, 20473558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x323E0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 0, 3180288, 18021635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x513E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x6F3E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x8E3E0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xAD3E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 0, 3612980, 20473558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xCB3E0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 0, 3324519, 18838942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xEA3E0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 0, 3612980, 20473558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x083F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x273F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x463F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x623F0B00 AS Date), 25000000, 24, 750000, 23826923, 2000000, 375000, 250000, 0, 3180288, 18021635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x813F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0x9F3F0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 0, 3324519, 18838942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xBE3F0B00 AS Date), 25000000, 26, 750000, 25750000, 2000000, 375000, 250000, 0, 3468750, 19656250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xDC3F0B00 AS Date), 25000000, 25, 750000, 24788461, 2000000, 375000, 250000, 0, 3324519, 18838942, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS001', CAST(0xFB3F0B00 AS Date), 25000000, 27, 750000, 26711538, 2000000, 375000, 250000, 0, 3612980, 20473558, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xD93D0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xF53D0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x143E0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x323E0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x513E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x6F3E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x8E3E0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xAD3E0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xCB3E0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xEA3E0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x083F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x273F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x463F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x623F0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x813F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0x9F3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xBE3F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xDC3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS002', CAST(0xFB3F0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0xCB3E0B00 AS Date), 12500000, 25, 0, 12019230, 0, 0, 0, 0, 1802884, 10216346, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0xEA3E0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x083F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x273F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x463F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x623F0B00 AS Date), 12500000, 24, 0, 11538461, 1000000, 187500, 125000, 0, 1533894, 8692067, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x813F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0x9F3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0xBE3F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0xDC3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS003', CAST(0xFB3F0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0xEA3E0B00 AS Date), 11500000, 27, 0, 11942307, 0, 0, 0, 0, 1791346, 10150961, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x083F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x273F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x463F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x623F0B00 AS Date), 11500000, 24, 0, 10615384, 920000, 172500, 115000, 0, 1411182, 7996702, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x813F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0x9F3F0B00 AS Date), 11500000, 25, 0, 11057692, 920000, 172500, 115000, 0, 1477528, 8372664, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0xBE3F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0xDC3F0B00 AS Date), 11500000, 25, 0, 11057692, 920000, 172500, 115000, 0, 1477528, 8372664, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS004', CAST(0xFB3F0B00 AS Date), 11500000, 27, 0, 11942307, 920000, 172500, 115000, 0, 1610221, 9124586, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0xEA3E0B00 AS Date), 14000000, 27, 0, 14538461, 0, 0, 0, 0, 2180769, 12357692, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x083F0B00 AS Date), 14000000, 26, 0, 14000000, 1120000, 210000, 140000, 0, 1879500, 10650500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x273F0B00 AS Date), 14000000, 26, 0, 14000000, 1120000, 210000, 140000, 0, 1879500, 10650500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x463F0B00 AS Date), 14000000, 26, 0, 14000000, 1120000, 210000, 140000, 0, 1879500, 10650500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x623F0B00 AS Date), 14000000, 24, 0, 12923076, 1120000, 210000, 140000, 0, 1717961, 9735115, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x813F0B00 AS Date), 14000000, 26, 0, 14000000, 1120000, 210000, 140000, 0, 1879500, 10650500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0x9F3F0B00 AS Date), 14000000, 25, 0, 13461538, 1120000, 210000, 140000, 0, 1798730, 10192808, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0xBE3F0B00 AS Date), 14000000, 26, 0, 14000000, 1120000, 210000, 140000, 0, 1879500, 10650500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0xDC3F0B00 AS Date), 14000000, 25, 0, 13461538, 1120000, 210000, 140000, 0, 1798730, 10192808, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'NS005', CAST(0xFB3F0B00 AS Date), 14000000, 27, 0, 14538461, 1120000, 210000, 140000, 0, 1960269, 11108192, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xD93D0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xF53D0B00 AS Date), 27000000, 24, 810000, 25733076, 2160000, 405000, 270000, 0, 3434711, 19463365, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x143E0B00 AS Date), 27000000, 27, 810000, 28848461, 2160000, 405000, 270000, 0, 3902019, 22111442, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x323E0B00 AS Date), 27000000, 24, 810000, 25733076, 2160000, 405000, 270000, 0, 3434711, 19463365, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x513E0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x6F3E0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x8E3E0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xAD3E0B00 AS Date), 27000000, 27, 810000, 28848461, 2160000, 405000, 270000, 0, 3902019, 22111442, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xCB3E0B00 AS Date), 27000000, 25, 810000, 26771538, 2160000, 405000, 270000, 0, 3590480, 20346058, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xEA3E0B00 AS Date), 27000000, 27, 810000, 28848461, 2160000, 405000, 270000, 0, 3902019, 22111442, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x083F0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x273F0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x463F0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x623F0B00 AS Date), 27000000, 24, 810000, 25733076, 2160000, 405000, 270000, 0, 3434711, 19463365, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x813F0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0x9F3F0B00 AS Date), 27000000, 25, 810000, 26771538, 2160000, 405000, 270000, 0, 3590480, 20346058, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xBE3F0B00 AS Date), 27000000, 26, 810000, 27810000, 2160000, 405000, 270000, 0, 3746250, 21228750, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xDC3F0B00 AS Date), 27000000, 25, 810000, 26771538, 2160000, 405000, 270000, 0, 3590480, 20346058, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL001', CAST(0xFB3F0B00 AS Date), 27000000, 27, 810000, 28848461, 2160000, 405000, 270000, 0, 3902019, 22111442, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xD93D0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xF53D0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x143E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x323E0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x513E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x6F3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x8E3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xAD3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xCB3E0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xEA3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x083F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x273F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x463F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x623F0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x813F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0x9F3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xBE3F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xDC3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL002', CAST(0xFB3F0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0xEA3E0B00 AS Date), 15000000, 27, 0, 15576923, 0, 0, 0, 0, 2336538, 13240385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x083F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x273F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x463F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x623F0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x813F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0x9F3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0xBE3F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0xDC3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL003', CAST(0xFB3F0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0xEA3E0B00 AS Date), 15000000, 27, 0, 15576923, 0, 0, 0, 0, 2336538, 13240385, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x083F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x273F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x463F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x623F0B00 AS Date), 15000000, 24, 0, 13846153, 1200000, 225000, 150000, 0, 1840673, 10430480, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x813F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0x9F3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0xBE3F0B00 AS Date), 15000000, 26, 0, 15000000, 1200000, 225000, 150000, 0, 2013750, 11411250, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0xDC3F0B00 AS Date), 15000000, 25, 0, 14423076, 1200000, 225000, 150000, 0, 1927211, 10920865, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL004', CAST(0xFB3F0B00 AS Date), 15000000, 27, 0, 15576923, 1200000, 225000, 150000, 0, 2100288, 11901635, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xD93D0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xF53D0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x143E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x323E0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x513E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x6F3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x8E3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xAD3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xCB3E0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xEA3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x083F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x273F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x463F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x623F0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x813F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0x9F3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xBE3F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xDC3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL005', CAST(0xFB3F0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x083F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL006', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x083F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL007', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xD93D0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xF53D0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x143E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x323E0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x513E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x6F3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x8E3E0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xAD3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xCB3E0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xEA3E0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x083F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x273F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x463F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x623F0B00 AS Date), 20000000, 24, 400000, 18861538, 1600000, 300000, 200000, 0, 2514230, 14247308, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x813F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0x9F3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xBE3F0B00 AS Date), 20000000, 26, 400000, 20400000, 1600000, 300000, 200000, 0, 2745000, 15555000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xDC3F0B00 AS Date), 20000000, 25, 400000, 19630769, 1600000, 300000, 200000, 0, 2629615, 14901154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL008', CAST(0xFB3F0B00 AS Date), 20000000, 27, 400000, 21169230, 1600000, 300000, 200000, 0, 2860384, 16208846, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL009', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0x273F0B00 AS Date), 10000000, 26, 0, 10000000, 0, 0, 0, 0, 1500000, 8500000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0x463F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 800000, 150000, 100000, 0, 1227115, 6953654, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL010', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0x623F0B00 AS Date), 12500000, 24, 0, 11538461, 0, 0, 0, 0, 1730769, 9807692, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0x813F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0x9F3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0xBE3F0B00 AS Date), 12500000, 26, 0, 12500000, 1000000, 187500, 125000, 0, 1678125, 9509375, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0xDC3F0B00 AS Date), 12500000, 25, 0, 12019230, 1000000, 187500, 125000, 0, 1606009, 9100721, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL011', CAST(0xFB3F0B00 AS Date), 12500000, 27, 0, 12980769, 1000000, 187500, 125000, 0, 1750240, 9918029, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0x623F0B00 AS Date), 11500000, 24, 0, 10615384, 0, 0, 0, 0, 1592307, 9023077, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0x813F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0x9F3F0B00 AS Date), 11500000, 25, 0, 11057692, 920000, 172500, 115000, 0, 1477528, 8372664, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0xBE3F0B00 AS Date), 11500000, 26, 0, 11500000, 920000, 172500, 115000, 0, 1543875, 8748625, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0xDC3F0B00 AS Date), 11500000, 25, 0, 11057692, 920000, 172500, 115000, 0, 1477528, 8372664, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL012', CAST(0xFB3F0B00 AS Date), 11500000, 27, 0, 11942307, 920000, 172500, 115000, 0, 1610221, 9124586, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0x623F0B00 AS Date), 10000000, 24, 0, 9230769, 0, 0, 0, 0, 1384615, 7846154, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0x813F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0x9F3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0xBE3F0B00 AS Date), 10000000, 26, 0, 10000000, 800000, 150000, 100000, 0, 1342500, 7607500, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0xDC3F0B00 AS Date), 10000000, 25, 0, 9615384, 800000, 150000, 100000, 0, 1284807, 7280577, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL013', CAST(0xFB3F0B00 AS Date), 10000000, 27, 0, 10384615, 800000, 150000, 100000, 0, 1400192, 7934423, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL014', CAST(0x813F0B00 AS Date), 12000000, 26, 0, 12000000, 0, 0, 0, 0, 1800000, 10200000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL014', CAST(0x9F3F0B00 AS Date), 12000000, 25, 0, 11538461, 960000, 180000, 120000, 0, 1541769, 8736692, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL014', CAST(0xBE3F0B00 AS Date), 12000000, 26, 0, 12000000, 960000, 180000, 120000, 0, 1611000, 9129000, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL014', CAST(0xDC3F0B00 AS Date), 12000000, 25, 0, 11538461, 960000, 180000, 120000, 0, 1541769, 8736692, 1)
GO
INSERT [dbo].[BangLuong] ([MaNV], [NgayPhatLuong], [LuongChinh], [NgayCong], [PC_TrachNhiem], [ThuNhap], [BHXH], [BHYT], [BHTN], [PhuThuoc], [ThueTNCN], [ThucLanh], [TrangThai]) VALUES (N'SL014', CAST(0xFB3F0B00 AS Date), 12000000, 27, 0, 12461538, 960000, 180000, 120000, 0, 1680230, 9521308, 1)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (0, 0.05)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (5000000, 0.1)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (10000000, 0.15)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (18000000, 0.2)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (32000000, 0.25)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (52000000, 0.3)
GO
INSERT [dbo].[BacThueTNCN] ([Luong], [Thue]) VALUES (80000000, 0.35)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'BHTN', 0.01)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'BHXH', 0.08)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'BHYT', 0.015)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'GiamTruBanThan', 9000000)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'GiamTruPhuThuoc', 3600000)
GO
INSERT [dbo].[GiaTriTinhLuong] ([TenGiaTri], [GiaTri]) VALUES (N'LuongCB', 5000000)
GO
