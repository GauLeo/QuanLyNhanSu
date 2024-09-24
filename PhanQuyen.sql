SELECT * FROM [dbo].[tblChucVu]

SELECT * FROM [dbo].[tblNhanVien]

SELECT * FROM [dbo].[tblPhongBan]

SELECT * FROM [dbo].[tblTaiKhoan]

/* Phan Quyen cho user Bao vào database QLNS chỉ đọc và ghi */
USE [master]
GO
CREATE LOGIN [Bao] WITH PASSWORD=N'1', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [QuanLyNS]
GO
CREATE USER [Bao] FOR LOGIN [Bao]
GO
USE [QuanLyNS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Bao]
GO
USE [QuanLyNS]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Bao]
GO

/*Tạo user shemas và phân quyền vào database QLNS */
USE [master]
GO
CREATE LOGIN [shemas] WITH PASSWORD=N'1' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [QuanLyNS]
GO
CREATE USER [shemas] FOR LOGIN [shemas]
GO

/* Phan Quyen cho Shemas vào database QLNS vào bảng tblChucVu chỉ được Delete và Insert */
use [QuanLyNS]
GO
GRANT DELETE ON [dbo].[tblChucVu] TO [shemas]
GO
use [QuanLyNS]
GO
GRANT INSERT ON [dbo].[tblChucVu] TO [shemas]
GO