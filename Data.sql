USE QuanLyNhanSu
GO

--Insert into NhanVien
--Insert vao phong NhanSu
EXEC SP_NhanVien NS001, N'Phạm Duy Biên', 1, '1994/11/5',  '2413253164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS002, N'Lê Văn Việt', 1, '1996/12/7',  '8793656767', '0937499390', 
	null, N'Bình Dương', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS003, N'Nguyễn Tiến Dũng', 1, '1997/01/21',  '786566367', '0925415678', 
	null, N'Đồng Nai', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS004, N'Nguyễn Tiến Đạt', 1, '1996/02/20',  '8032537419', '0126478863', 
	null, N'Quận 2', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS005, N'Nguyễn Thị Huệ', 0, '1996/03/20',  '7745633689', '0125345345', 
	null, N'Quận 9', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS006, N'Nguyễn Cẩm Ly', 0, '1995/05/15',  '9893433245', '098654788', 
	null, N'Gò Vấp', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS007, N'Lê Thị Ngọc Trinh', 0, '1994/08/01',  '8863412299', '098698698', 
	null, N'Bình Dương', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS008, N'Lê Thị Ngọc', 0, '1996/08/08',  '7878939890', '0125656454', 
	null, N'Bình Dương', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS009, N'Trần Văn Công', 1, '1996/07/08',  '8388438569', '0126654545', 
	null, N'Thủ Đức', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien NS010, N'Trần Đức Nam', 1, '1995/10/21',  '7673756478', '0126686996', 
	null, N'Thủ Đức', null, N'Đại Học', 'Insert'
GO



---Insert vào phòng ban KeToan
EXEC SP_NhanVien KT001, N'Đào Hồng Sơn', 1, '1994/11/5',  '5613253164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT002, N'Phan Lê Khải', 1, '1994/11/5',  '7778379866', '0986777650', 
	null, N'Đồng Nai', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT003, N'Lê Bá Khá', 1, '1997/09/5',  '8900390435', '0125464321', 
	null, N'Gò Vấp', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT004, N'Nguyễn Văn Lâm', 1, '1998/09/12',  '7657736897', '0930909364', 
	null, N'Long An', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT005, N'Lê Thị Thảo My', 0, '1998/10/22',  '6554537889', '0126889012', 
	null, N'Quận 3', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT006, N'Lê Thị Thu Thủy', 0, '1998/12/31',  '5645377687', '0985554444', 
	null, N'Quận 1', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT007, N'Trần Văn Đăng', 1, '1997/12/1',  '8823334554', '0125377867', 
	null, N'Tân Bình', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT008, N'Trần Thị Ngọc Lan', 0, '1996/01/2',  '9878835676', '0125887692', 
	null, N'Tân Phú', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT009, N'Lê Văn Nam', 1, '1997/05/22',  '8123133567', '0982009843', 
	null, N'Bình Thạnh', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien KT010, N'Nguyễn Hoa Vinh', 1, '1998/06/30',  '7665378990', '0903891139', 
	null, N'Gò Vấp', null, N'Đại Học', 'Insert'
GO




---Insert vào phòng ban MK

EXEC SP_NhanVien MK001, N'Trần Quang Vinh', 1, '1994/11/5',  '2413325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK002, N'Nguyễn Văn Biển', 1, '1995/1/9',  '7634332345', '0126998562', 
	null, N'Tân Phú', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK003, N'Nguyễn Đức Nam', 1, '1995/10/8',  '5546536543', '0902322321', 
	null, N'Tân Bình', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK004, N'Cao Thanh Tú', 0, '1995/11/8',  '4434635787', '0125334544', 
	null, N'Quận 9', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK005, N'Lê Thị Hải Yến', 0, '1997/10/4',  '8488323312', '0900987121', 
	null, N'Quận 7', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK006, N'Nguyễn Bá Huân', 1, '1997/2/4',  '8670309024', '0123565879', 
	null, N'Quận 2', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK007, N'Nguyễn Văn Kiên', 1, '1996/9/10',  '7446563778', '0126666731', 
	null, N'Quận 3', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------3------------------
EXEC SP_NhanVien MK008, N'Nguyễn Viết Toàn', 1, '1997/10/8',  '884356473', '0125554678', 
	null, N'Bình Dương', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK009, N'Nguyễn Cẩm Như', 0, '1997/12/8',  '8667131455', '0989861102', 
	null, N'Tân Bình', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien MK010, N'Nguyễn Nam Anh', 1, '1996/10/2',  '7132125549', '0124398909', 
	null, N'Quận 9', null, N'Đại Học', 'Insert'
GO


---Insert vào phòng ban SL
EXEC SP_NhanVien SL001, N'Lê Thị Kim Quy', 1, '1994/11/5',  '2413425164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL002, N'Nguyễn Viết Tú', 1, '1994/12/1',  '7899944352', '0928886213', 
	null, N'Quận 9', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL003, N'Nguyễn Thúy Hạnh', 0, '1995/08/2',  '8556443785', '0985561213', 
	null, N'Quận 2', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL004, N'Phan Nguyễn Long Nhật', 1, '1996/08/20',  '7344342466', '0126780054', 
	null, N'Gò Vấp', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL005, N'Nguyễn Anh Đức', 1, '1996/07/22',  '7900849776', '0125123443', 
	null, N'Quận 9', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL006, N'Lê Minh Bình', 1, '1997/06/30',  '9065748843', '0931343578', 
	null, N'Bình Dương', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL007, N'Phạm Minh Trí', 1, '1997/05/11',  '8235940098', '0937452080', 
	null, N'Quận 12', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL008, N'Nguyễn Văn Danh', 1, '1997/05/11',  '7588646091', '0126002132', 
	null, N'Quận 3', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL009, N'Nguyễn Đình Hoàng', 1, '1996/08/16',  '8890406765', '0125434665', 
	null, N'Quận 3', null, N'Đại Học', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien SL010, N'Nguyễn Bá Thanh', 1, '1996/09/13',  '7004089564', '0125788434', 
	null, N'Quận 12', null, N'Đại Học', 'Insert'
GO



---Insert vào phòng ban IT

EXEC SP_NhanVien IT001, N'Nguyễn Tường Tâm', 1, '1994/11/5',  '2413252164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT002, N'Trần Quốc Vương', 1, '1996/10/7',  '3556443578', '0902434100', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT003, N'Đỗ Đại Dương', 1, '1995/12/12',  '6557844354', '0937790086', 
	null, N'Bình Thạnh', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT004, N'Huỳnh Long Minh Trí', 1, '1997/10/12',  '8809400657', '0125009896', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT005, N'Nguyễn Đức Tùng', 1, '1997/10/10',  '8963243214', '0126557007', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT006, N'Nguyễn Đức Tùng', 1, '1997/05/22',  '7441413670', '0126478869', 
	null, N'Quận 9', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT008, N'Lê Văn Phú', 1, '1996/05/22',  '6643441180', '0126478869', 
	null, N'Quận 9', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT007, N'Lê Thanh Hào', 1, '1996/05/23',  '3500498885', '0980985644', 
	null, N'Quận 12', null, N'Cao đẳng', 'Insert'
GO
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT009, N'Trịnh Trọng Thái', 1, '1997/07/7',  '8670940011', '0125111546', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
--------------------------------------------------------------------------------------
EXEC SP_NhanVien IT010, N'Dương Văn Minh', 1, '1997/07/7',  '7577884012', '0126434223', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

select * from NhanVien

--Insert into PhongBan
EXEC SP_PhongBan 'NS', N'Nhân sự', null, 'Insert'
EXEC SP_PhongBan 'KT', N'Kế toán', null, 'Insert'
EXEC SP_PhongBan 'MK', N'Marketing', null, 'Insert'
EXEC SP_PhongBan 'SL', N'Bán hàng', null, 'Insert'
EXEC SP_PhongBan 'IT', N'Kỹ thuật', null, 'Insert'
EXEC SP_PhongBan 'GD', N'Giám đốc', null, 'Insert'
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

--Insert into HopDong
EXEC SP_HopDong 'HDLD150001', 'IT001', 'TP', 'IT', '2018/11/20', null, 3, 'Insert'
EXEC SP_HopDong 'HDLD160001','IT002', 'NT', 'IT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180001','IT003', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180002','IT004', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160002','IT005', 'NT', 'IT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180003','IT006', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180004','IT007', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160003','IT008', 'NT', 'IT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180005','IT009', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180006','IT010', 'NV', 'IT', '2018/11/20', null, 2, 'Insert'
GO
EXEC SP_HopDong 'HDLD150002', 'NS001', 'TP', 'NS', '2018/11/20', null, 3, 'Insert'
EXEC SP_HopDong 'HDLD160004','NS002', 'NT', 'NS', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180007','NS003', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180008','NS004', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160005','NS005', 'NT', 'NS', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180009','NS006', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180010','NS007', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160006','NS008', 'NT', 'NS', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180011','NS009', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180012','NS010', 'NV', 'NS', '2018/11/20', null, 2, 'Insert'
GO
EXEC SP_HopDong 'HDLD150003', 'KT001', 'TP', 'KT', '2018/11/20', null, 3, 'Insert'
EXEC SP_HopDong 'HDLD160007','KT002', 'NT', 'KT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180013','KT003', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180014','KT004', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160008','KT005', 'NT', 'KT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180015','KT006', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180016','KT007', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160009','KT008', 'NT', 'KT', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180017','KT009', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180018','KT010', 'NV', 'KT', '2018/11/20', null, 2, 'Insert'
GO
EXEC SP_HopDong 'HDLD150004', 'MK002', 'TP', 'MK', '2018/11/20', null, 3, 'Insert'
EXEC SP_HopDong 'HDLD160010','MK003', 'NT', 'MK', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180019','MK004', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180020','MK005', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160011','MK006', 'NT', 'MK', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180021','MK007', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180022','MK008', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160012','MK009', 'NT', 'MK', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180023','MK010', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180024','MK011', 'NV', 'MK', '2018/11/20', null, 2, 'Insert'
GO
EXEC SP_HopDong 'HDLD150005', 'SL001', 'TP', 'SL', '2018/11/20', null, 3, 'Insert'
EXEC SP_HopDong 'HDLD160013','SL002', 'NT', 'SL', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180025','SL003', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180026','SL004', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160014','SL005', 'NT', 'SL', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180027','SL006', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180028','SL007', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD160015','SL008', 'NT', 'SL', '2018/11/20', null, 2.5, 'Insert'
EXEC SP_HopDong 'HDLD180029','SL009', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
EXEC SP_HopDong 'HDLD180030','SL010', 'NV', 'SL', '2018/11/20', null, 2, 'Insert'
GO
EXEC SP_HopDong 'HDLD140001', 'MK001', 'GD', 'GD', '2018/11/20', null, 3, 'Insert'
GO

select * from hopdong order by MaNV

--Insert into ThanNhan
EXEC SP_ThanNhan null, N'Phạm Ngọc Duy', N'Học Sinh', N'Em', 'IT001', 1, 'Insert'
SELECT COUNT(MaTN) FROM ThanNhan WHERE MaNV = 'IT001' AND GiamTruPhuThuoc = 1

--Insert into ChamCong
EXEC SP_ChamCong IT001, null, 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/10', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/9', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/8', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/7', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/6', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/5', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/4', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/3', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/2', 1, 0, 'Insert'
EXEC SP_ChamCong IT001, '2019/07/1', 1, 0, 'Insert'
GO
select * from ChamCong

--Insert into GiaTriChung
EXEC SP_GiaTriChung 'LuongCB', 5000000, 'Insert'
EXEC SP_GiaTriChung 'GiamTruBanThan', 9000000, 'Insert'
EXEC SP_GiaTriChung 'GiamTruPhuThuoc', 3600000, 'Insert'
EXEC SP_GiaTriChung 'BHXH', 0.08, 'Insert'
EXEC SP_GiaTriChung 'BHYT', 0.015, 'Insert'
EXEC SP_GiaTriChung 'BHTN', 0.01, 'Insert'
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

--Insert into BangLuong
EXEC SP_Insert_BangLuong 'IT001', '2019/7/17', 0,0

SELECT * FROM BangLuong

---Insert into TaiKhoan
EXEC SP_TaiKhoan 'IT001','123',1,'Insert'
EXEC SP_TaiKhoan 'MK001','123',1,'Insert'
EXEC SP_TaiKhoan 'SL001','123',1,'Insert'
EXEC SP_TaiKhoan 'KT001','123',1,'Insert'
EXEC SP_TaiKhoan 'NS001','123',1,'Insert'