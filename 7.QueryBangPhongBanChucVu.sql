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