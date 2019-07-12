USE QuanLyNhanSu
GO

--Insert into NhanVien
EXEC SP_NhanVien NS001, N'Phạm Duy Biên', 1, '1994/11/5',  '241325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

EXEC SP_NhanVien KT001, N'Phạm Duy Biên', 1, '1994/11/5',  '241325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

EXEC SP_NhanVien MK001, N'Phạm Duy Biên', 1, '1994/11/5',  '241325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

EXEC SP_NhanVien SL001, N'Phạm Duy Biên', 1, '1994/11/5',  '241325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

EXEC SP_NhanVien IT001, N'Phạm Duy Biên', 1, '1994/11/5',  '241325164', '0921587694', 
	null, N'Gò Vấp', null, N'Cao đẳng', 'Insert'
GO

EXEC SP_NhanVien null, null, null, null, null, null, null, null, null, null, 'Select'
GO

--Insert into PhongBan
EXEC SP_PhongBan 'NS', N'Nhân sự', null, 'Insert'
EXEC SP_PhongBan 'KT', N'Kế toán', null, 'Insert'
EXEC SP_PhongBan 'MK', N'Marketing', null, 'Insert'
EXEC SP_PhongBan 'SL', N'Bán hàng', null, 'Insert'
EXEC SP_PhongBan 'IT', N'Kỹ thuật', null, 'Insert'
GO
EXEC SP_PhongBan null, null, null, 'Select'
GO

--Insert into ChucVu
EXEC SP_ChucVu 'GD', N'Giám đốc', 0.05, 'Insert'
EXEC SP_ChucVu 'PG', N'Giám đốc', 0.04, 'Insert'
EXEC SP_ChucVu 'TP', N'Trưởng Phòng', 0.03, 'Insert'
EXEC SP_ChucVu 'NT', N'Nhóm trưởng', 0.02, 'Insert'
EXEC SP_ChucVu 'NV', N'Nhân viên', 0, 'Insert'
GO
EXEC SP_ChucVu null, null, null, 'Select'
GO

--Insert into HopDong
EXEC SP_HopDong IT001, 'TP', 'IT', '2018/11/20', null, 2, 'Insert'
GO

--Insert into ThanNhan
EXEC SP_ThanNhan null, N'Phạm Ngọc Duy', N'Học Sinh', N'Em', 'IT001', 1, 'Insert'
SELECT COUNT(MaTN) FROM ThanNhan WHERE MaNV = 'IT001' AND GiamTruPhuThuoc = 1

select * from HopDong
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