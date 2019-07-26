USE QuanLyNhanSu
GO

--Insert into PhongBan
EXEC SP_PhongBan 'NS', N'Nhân sự', 'Insert'
EXEC SP_PhongBan 'KT', N'Kế toán', 'Insert'
EXEC SP_PhongBan 'MK', N'Marketing', 'Insert'
EXEC SP_PhongBan 'SL', N'Bán hàng', 'Insert'
EXEC SP_PhongBan 'IT', N'Kỹ thuật', 'Insert'
EXEC SP_PhongBan 'GD', N'Giám đốc', 'Insert'
GO
select * from PhongBan

--Insert into ChucVu
EXEC SP_ChucVu 'GD', N'Giám đốc', 0.05, 'Insert'
EXEC SP_ChucVu 'PG', N'Phó Giám đốc', 0.04, 'Insert'
EXEC SP_ChucVu 'TP', N'Trưởng Phòng', 0.03, 'Insert'
EXEC SP_ChucVu 'NT', N'Nhóm trưởng', 0.02, 'Insert'
EXEC SP_ChucVu 'NV', N'Nhân viên', 0, 'Insert'
GO
select * from chucvu

--Insert into NhanVien
--Insert vao phong NhanSu
EXEC SP_NhanVien NS001, N'Phạm Duy Biên', 1, '1994/11/5',  '2413253164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD150002', 'TP', 'NS', '2018/11/20', null, 3, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS002, N'Lê Văn Việt', 1, '1996/12/7',  '8793656767', '0937499390', 
	null, N'Bình Dương', null, N'Đại Học', 'HDLD160004', 'NT', 'NS', '2018/10/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS003, N'Nguyễn Tiến Dũng', 1, '1997/01/21',  '786566367', '0925415678', 
	null, N'Đồng Nai', null, N'Đại Học', 'HDLD180007', 'NV', 'NS', '2018/9/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS004, N'Nguyễn Tiến Đạt', 1, '1996/02/20',  '8032537419', '0126478863', 
	null, N'Quận 2', null, N'Đại Học', 'HDLD180008', 'NV', 'NS', '2018/8/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS005, N'Nguyễn Thị Huệ', 0, '1996/03/20',  '7745633689', '0125345345', 
	null, N'Quận 9', null, N'Đại Học', 'HDLD160005', 'NT', 'NS', '2018/7/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS006, N'Nguyễn Cẩm Ly', 0, '1995/05/15',  '9893433245', '098654788', 
	null, N'Gò Vấp', null, N'Đại Học', 'HDLD180009', 'NV', 'NS', '2018/6/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS007, N'Lê Thị Ngọc Trinh', 0, '1994/08/01',  '8863412299', '098698698', 
	null, N'Bình Dương', null, N'Đại Học', 'HDLD180010', 'NV', 'NS', '2018/5/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS008, N'Lê Thị Ngọc', 0, '1996/08/08',  '7878939890', '0125656454', 
	null, N'Bình Dương', null, N'Đại Học', 'HDLD160006', 'NT', 'NS', '2018/4/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS009, N'Trần Văn Công', 1, '1996/07/08',  '8388438569', '0126654545', 
	null, N'Thủ Đức', null, N'Đại Học', 'HDLD180011', 'NV', 'NS', '2018/3/20', null, 2, 1 ,'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS010, N'Trần Đức Nam', 1, '1995/10/21',  '7673756478', '0126686996', 
	null, N'Thủ Đức', null, N'Đại Học', 'HDLD180012', 'NV', 'NS', '2018/2/20', null, 2, 1, 'Insert'
GO



---Insert vào phòng ban KeToan
EXEC SP_NhanVien KT001, N'Đào Hồng Sơn', 1, '1994/11/5',  '5613253164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD150003', 'TP', 'KT', '2018/1/20', null, 3, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT002, N'Phan Lê Khải', 1, '1994/11/5',  '7778379866', '0986777650', 
	null, N'Đồng Nai', null, N'Cao đẳng', 'HDLD160007', 'NT', 'KT', '2018/12/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT003, N'Lê Bá Khá', 1, '1997/09/5',  '8900390435', '0125464321', 
	null, N'Gò Vấp', null, N'Đại Học', 'HDLD180013', 'NV', 'KT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT004, N'Nguyễn Văn Lâm', 1, '1998/09/12',  '7657736897', '0930909364', 
	null, N'Long An', null, N'Đại Học', 'HDLD180014', 'NV', 'KT', '2018/11/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT005, N'Lê Thị Thảo My', 0, '1998/10/22',  '6554537889', '0126889012', 
	null, N'Quận 3', null, N'Đại Học', 'HDLD160008', 'NT', 'KT', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT006, N'Lê Thị Thu Thủy', 0, '1998/12/31',  '5645377687', '0985554444', 
	null, N'Quận 1', null, N'Đại Học', 'HDLD180015', 'NV', 'KT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT007, N'Trần Văn Đăng', 1, '1997/12/1',  '8823334554', '0125377867', 
	null, N'Tân Bình', null, N'Đại Học', 'HDLD180016', 'NV', 'KT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT008, N'Trần Thị Ngọc Lan', 0, '1996/01/2',  '9878835676', '0125887692', 
	null, N'Tân Phú', null, N'Đại Học', 'HDLD160009', 'NT', 'KT', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT009, N'Lê Văn Nam', 1, '1997/05/22',  '8123133567', '0982009843', 
	null, N'Bình Thạnh', null, N'Đại Học', 'HDLD180017', 'NV', 'KT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT010, N'Nguyễn Hoa Vinh', 1, '1998/06/30',  '7665378990', '0903891139', 
	null, N'Gò Vấp', null, N'Đại Học', 'HDLD180018', 'NV', 'KT', '2018/11/20', null, 2, 1, 'Insert'
GO

--Insert vào phòng ban MK
EXEC SP_NhanVien MK001, N'Trần Quang Vinh', 1, '1994/11/5',  '2413325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD140001', 'GD', 'GD', '2018/11/20', null, 3,1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK002, N'Nguyễn Văn Biển', 1, '1995/1/9',  '7634332345', '0126998562', 
	null, N'Tân Phú', null, N'Cao đẳng', 'HDLD160010', 'TP', 'MK', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK003, N'Nguyễn Đức Nam', 1, '1995/10/8',  '5546536543', '0902322321', 
	null, N'Tân Bình', null, N'Đại Học', 'HDLD180019', 'NT', 'MK', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK004, N'Cao Thanh Tú', 0, '1995/11/8',  '4434635787', '0125334544', 
	null, N'Quận 9', null, N'Đại Học', 'HDLD180020', 'NV', 'MK', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK005, N'Lê Thị Hải Yến', 0, '1997/10/4',  '8488323312', '0900987121', 
	null, N'Quận 7', null, N'Đại Học', 'HDLD160011', 'NT', 'MK', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK006, N'Nguyễn Bá Huân', 1, '1997/2/4',  '8670309024', '0123565879', 
	null, N'Quận 2', null, N'Đại Học', 'HDLD180021', 'NV', 'MK', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK007, N'Nguyễn Văn Kiên', 1, '1996/9/10',  '7446563778', '0126666731', 
	null, N'Quận 3', null, N'Đại Học', 'HDLD180022', 'NV', 'MK', '2018/11/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------3------------------
EXEC SP_NhanVien MK008, N'Nguyễn Viết Toàn', 1, '1997/10/8',  '884356473', '0125554678', 
	null, N'Bình Dương', null, N'Đại Học', 'HDLD160012', 'NT', 'MK', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK009, N'Nguyễn Cẩm Như', 0, '1997/12/8',  '8667131455', '0989861102', 
	null, N'Tân Bình', null, N'Đại Học', 'HDLD180023', 'NV', 'MK', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK010, N'Nguyễn Nam Anh', 1, '1996/10/2',  '7132125549', '0124398909', 
	null, N'Quận 9', null, N'Đại Học', 'HDLD180024', 'NV', 'MK', '2018/11/20', null, 2, 1, 'Insert'
GO

---Insert vào phòng ban SL
EXEC SP_NhanVien SL001, N'Lê Thị Kim Quy', 1, '1994/11/5',  '2413425164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD150005', 'TP', 'SL', '2018/11/20', null, 3, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL002, N'Nguyễn Viết Tú', 1, '1994/12/1',  '7899944352', '0928886213', 
	null, N'Quận 9', null, N'Đại Học', 'HDLD160013', 'NT', 'SL', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL003, N'Nguyễn Thúy Hạnh', 0, '1995/08/2',  '8556443785', '0985561213', 
	null, N'Quận 2', null, N'Đại Học', 'HDLD180025', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL004, N'Phan Nguyễn Long Nhật', 1, '1996/08/20',  '7344342466', '0126780054', 
	null, N'Gò Vấp', null, N'Đại Học', 'HDLD180026', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL005, N'Nguyễn Anh Đức', 1, '1996/07/22',  '7900849776', '0125123443', 
	null, N'Quận 9', null, N'Đại Học', 'HDLD160014', 'NT', 'SL', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL006, N'Lê Minh Bình', 1, '1997/06/30',  '9065748843', '0931343578', 
	null, N'Bình Dương', null, N'Đại Học', 'HDLD180027', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL007, N'Phạm Minh Trí', 1, '1997/05/11',  '8235940098', '0937452080', 
	null, N'Quận 12', null, N'Đại Học', 'HDLD180028', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL008, N'Nguyễn Văn Danh', 1, '1997/05/11',  '7588646091', '0126002132', 
	null, N'Quận 3', null, N'Đại Học', 'HDLD160015', 'NT', 'SL', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL009, N'Nguyễn Đình Hoàng', 1, '1996/08/16',  '8890406765', '0125434665', 
	null, N'Quận 3', null, N'Đại Học', 'HDLD180029', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL010, N'Nguyễn Bá Thanh', 1, '1996/09/13',  '7004089564', '0125788434', 
	null, N'Quận 12', null, N'Đại Học', 'HDLD180030', 'NV', 'SL', '2018/11/20', null, 2, 1, 'Insert'
GO

---Insert vào phòng ban IT
EXEC SP_NhanVien IT001, N'Nguyễn Tường Tâm', 1, '1994/11/5',  '2413252164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD150004', 'TP', 'IT', '2018/11/20', null, 3, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT002, N'Trần Quốc Vương', 1, '1996/10/7',  '3556443578', '0902434100', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD160001', 'NT', 'IT', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT003, N'Đỗ Đại Dương', 1, '1995/12/12',  '6557844354', '0937790086', 
	null, N'Bình Thạnh', null, N'Cao đẳng', 'HDLD180001', 'NV', 'IT', '2018/11/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT004, N'Huỳnh Long Minh Trí', 1, '1997/10/12',  '8809400657', '0125009896', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD180002', 'NV', 'IT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT005, N'Nguyễn Đức Tùng', 1, '1997/10/10',  '8963243214', '0126557007', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD160002', 'NT', 'IT', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT006, N'Nguyễn Đức Tùng', 1, '1997/05/22',  '7441413670', '0126478869', 
	null, N'Quận 9', null, N'Cao đẳng', 'HDLD180003', 'NV', 'IT', '2018/11/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT007, N'Lê Văn Phú', 1, '1996/05/22',  '6643441180', '0126478869', 
	null, N'Quận 9', null, N'Cao đẳng', 'HDLD180004', 'NV', 'IT', '2018/11/20', null, 1, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT008, N'Lê Thanh Hào', 1, '1996/05/23',  '3500498885', '0980985644', 
	null, N'Quận 12', null, N'Cao đẳng', 'HDLD160003', 'NT', 'IT', '2018/11/20', null, 2.5, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT009, N'Trịnh Trọng Thái', 1, '1997/07/7',  '8670940011', '0125111546', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD180005', 'NV', 'IT', '2018/11/20', null, 2, 1, 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT010, N'Dương Văn Minh', 1, '1997/07/7',  '7577884012', '0126434223', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'HDLD180006', 'NV', 'IT', '2018/11/20', null, 2, 1, 'Insert'
GO

select * from NhanVien

--Insert into ThanNhan
EXEC SP_ThanNhan null, N'Phạm Ngọc Duy', N'Học Sinh', N'Em', 'IT001', 1, 'Insert'
SELECT COUNT(MaTN) FROM ThanNhan WHERE MaNV = 'IT001' AND GiamTruPhuThuoc = 1


--Insert into GiaTriTinhLuong
EXEC SP_GiaTriTinhLuong 'LuongCB', 5000000, 'Insert'
EXEC SP_GiaTriTinhLuong 'GiamTruBanThan', 9000000, 'Insert'
EXEC SP_GiaTriTinhLuong 'GiamTruPhuThuoc', 3600000, 'Insert'
EXEC SP_GiaTriTinhLuong 'BHXH', 0.08, 'Insert'
EXEC SP_GiaTriTinhLuong 'BHYT', 0.015, 'Insert'
EXEC SP_GiaTriTinhLuong 'BHTN', 0.01, 'Insert'
GO
--Insert into BacThueTNCN
EXEC SP_BacThueTNCN 0, 0.05, 'Insert'
EXEC SP_BacThueTNCN 5000000, 0.1, 'Insert'
EXEC SP_BacThueTNCN 10000000, 0.15, 'Insert'
EXEC SP_BacThueTNCN 18000000, 0.2, 'Insert'
EXEC SP_BacThueTNCN 32000000, 0.25, 'Insert'
EXEC SP_BacThueTNCN 52000000, 0.30, 'Insert'
EXEC SP_BacThueTNCN 80000000, 0.35, 'Insert'
GO

---Insert into TaiKhoan
EXEC SP_TaiKhoan 'admin','admin', 'MK001','Insert'
EXEC SP_TaiKhoan 'it','it', 'IT001','Insert'
EXEC SP_TaiKhoan 'kt','kt', 'KT001','Insert'
EXEC SP_TaiKhoan 'mk','mk', 'MK002','Insert'
EXEC SP_TaiKhoan 'ns','ns', 'NS001','Insert'
EXEC SP_TaiKhoan 'sl','sl', 'SL001','Insert'
GO
select * from TaiKhoan