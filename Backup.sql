/* Back up dữ liệu */
BACKUP DATABASE [QuanLyNS] TO  DISK = N'D:\Alo Alo Alo\QuanLyNS.bak' WITH NOFORMAT, NOINIT,  NAME = N'QuanLyNS-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
/* Restore dữ liệu */
USE [master]
ALTER DATABASE [QuanLyNS_bak] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [QuanLyNS_bak] FROM  DISK = N'D:\Alo Alo Alo\QuanLyNS.bak' WITH  FILE = 2,  MOVE N'QuanLyNS' TO N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyNS_bak.mdf',  MOVE N'QuanLyNS_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyNS_bak_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [QuanLyNS_bak] SET MULTI_USER

GO
