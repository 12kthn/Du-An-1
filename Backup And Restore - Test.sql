USE  master
GO

BACKUP DATABASE QuanLyNhanSu  
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\QLNVFullBackup.bak'
WITH INIT
GO

DECLARE @dayOfWeek varchar(10), @path varchar(MAX)
SET @dayOfWeek = DATENAME(WEEKDAY, GETDATE())
SET @path = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\QLNV' + @dayOfWeek + 'DiffBackup.bak'
BACKUP DATABASE QuanLyNhanSu
TO DISK = @path
WITH DIFFERENTIAL, INIT
GO

--Tao Stored Procedure phục hồi CSDL với file Full Backup và Differential Backup
IF (OBJECT_ID('SP_RESTOREQLNS') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREQLNS
GO
CREATE PROCEDURE SP_RESTOREQLNS
(
	@FullPath varchar(MAX),
	@DiffPath varchar(MAX)
)
AS
	BEGIN TRY
		
		BEGIN TRAN
			RESTORE DATABASE QuanLyNhanSu  
			FROM DISK = @Fullpath
			WITH REPLACE, NORECOVERY

			RESTORE DATABASE QuanLyNhanSu  
			FROM DISK = @DiffPath
			WITH REPLACE, RECOVERY
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		PRINT 'loi'
	END CATCH
	
GO

EXEC SP_RESTOREQLNS 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\QLNVFullBackup.bak',
				''

--Tao Stored Procedure phục hồi CSDL chỉ với file Full Backup
IF (OBJECT_ID('SP_RESTOREQLNSOnlyFullBackup') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREQLNSOnlyFullBackup
GO
CREATE PROCEDURE SP_RESTOREQLNSOnlyFullBackup
(
	@FullPath varchar(MAX)
)
AS

	RESTORE DATABASE QuanLyNhanSu  
	FROM DISK = @Fullpath
	WITH REPLACE, RECOVERY
GO 

EXEC SP_RESTOREQLNSOnlyFullBackup 'D:\work\fullQLNS.bak'

USE QuanLyNhanSu
GO
select * from GiaTriTinhLuong



