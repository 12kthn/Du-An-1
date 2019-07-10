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