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
IF (OBJECT_ID('SP_RESTOREDB') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREDB
GO
CREATE PROCEDURE SP_RESTOREDB
(
	@FullPath varchar(MAX),
	@DiffPath varchar(MAX),
	@Success bit OUTPUT
)
AS
	BEGIN TRY	
		IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
		BEGIN
			--backup bd hiện tại
			BACKUP DATABASE QuanLyNhanSu  
			TO DISK = 'D:\TemporalityBackup.bak'
			WITH INIT
			--dong tat ca cac ket noi
			ALTER DATABASE QuanLyNhanSu
			SET SINGLE_USER
			WITH ROLLBACK IMMEDIATE;
		END

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @Fullpath
		WITH REPLACE, NORECOVERY

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @DiffPath
		WITH REPLACE, RECOVERY

		SET @Success = 1
	END TRY
	BEGIN CATCH
		BEGIN
			SET @Success = 0
			--khoi phuc lai db đã backup ở trên khi bị lỗi
				RESTORE DATABASE QuanLyNhanSu  
				FROM DISK = 'D:\TemporalityBackup.bak'
				WITH REPLACE, RECOVERY
			ALTER DATABASE QuanLyNhanSu
			SET MULTI_USER;
		END
	END CATCH
GO

DECLARE @output bit
EXEC SP_RESTOREDB 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\QLNVFullBackup.bak',
				'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\QLNVTuesdayDiffBackup.bak',  @output output
print @output

--Tao Stored Procedure phục hồi CSDL chỉ với file Full Backup
IF (OBJECT_ID('SP_RESTOREQLNSOnlyFullBackup') IS NOT NULL)
  DROP PROCEDURE SP_RESTOREQLNSOnlyFullBackup
GO
CREATE PROCEDURE SP_RESTOREQLNSOnlyFullBackup
(
	@FullPath varchar(MAX),
	@Success bit OUTPUT
)
AS
	BEGIN TRY
		IF EXISTS(select * from sys.databases where name='QuanLyNhanSu')
		BEGIN
			ALTER DATABASE QuanLyNhanSu
			SET SINGLE_USER
			WITH ROLLBACK IMMEDIATE;
		END

		RESTORE DATABASE QuanLyNhanSu  
		FROM DISK = @Fullpath
		WITH REPLACE, RECOVERY
		SET @Success = 1

		ALTER DATABASE QuanLyNhanSu
		SET MULTI_USER;
	END TRY
	BEGIN CATCH
		SET @Success = 0	
		ALTER DATABASE QuanLyNhanSu
		SET MULTI_USER;
	END CATCH	
GO 

DECLARE @output bit
EXEC SP_RESTOREQLNSOnlyFullBackup 'D:\work\fullQLNS.bak', @output output
print @output




