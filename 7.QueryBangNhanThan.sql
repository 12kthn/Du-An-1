use QuanLyNhanSu
go
--tao stored procedure tim kiem nhan than theo ma nhan than 
 if(OBJECT_ID('FindNTByCode') is not null)
     DROP PROCEDURE FindNTByCode
go
     CREATE PROCEDURE FindNTByCode 
(
       @MaNT varchar(10)
)
AS
    IF @MaNT is not null
BEGIN 
       SELECT @MaNT FROM ThanNhan WHERE MaTN = @MaNT
END 
 ELSE 
  BEGIN
       SELECT * FROM ThanNhan
END 
GO
