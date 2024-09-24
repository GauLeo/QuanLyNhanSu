/*Hiện thông tin danh sách các nhân viên*/

    SELECT * FROM tblNhanVien

/*Thêm nhân viên*/
create proc [dbo].[ThemNV]

@ID_NhanVien int,
@Ten_TKhoan nvarchar(50),
@Ho_Ten nvarchar(50),
@Ngay_Sinh date,
@Gioi_Tinh int,
@Que_Quan nvarchar(100),
@So_CMT nvarchar(50),
@Ngay_Cap date,
@Noi_Cap nvarchar(100),
@So_DienThoai nvarchar(50),
@Email nvarchar(100),
@Dia_Chi nvarchar(100),
@Duong_Dan_Anh nvarchar(100),
@ID_ChucVu int,
@ID_PhongBan int,
@NgayTao date,
@NguoiTao nvarchar(100),
@NgaySua date
as
begin
    insert into tblNhanVien (ID_NhanVien, Ten_TKhoan, Ho_Ten, Ngay_Sinh, Gioi_Tinh, Que_Quan, So_CMT, Ngay_Cap, Noi_Cap, So_DienThoai, Email, Dia_Chi, Duong_Dan_Anh, ID_ChucVu, ID_PhongBan, NgayTao, NguoiTao, NgaySua) values (@ID_NhanVien, @Ten_TKhoan, @Ho_Ten, @Ngay_Sinh, @Gioi_Tinh, @Que_Quan, @So_CMT, @Ngay_Cap, @Noi_Cap, @So_DienThoai, @Email, @Dia_Chi, @Duong_Dan_Anh, @ID_ChucVu, @ID_PhongBan, @NgayTao, @NguoiTao, @NgaySua)
end

EXEC [dbo].[ThemNV] @ID_NhanVien = 2, @Ten_TKhoan = 'Khoa', @Ho_Ten = 'Bui Anh', @Ngay_Sinh = '2002-05-05', @Gioi_Tinh = 1, @Que_Quan = 'BienHoa', @So_CMT = '123456', @Ngay_Cap = '2020-05-05', @Noi_Cap = 'BienHoa', @So_DienThoai = '123456789', @Email = 'anhtuan@gmail.com', @Dia_Chi = 'DongNai', @Duong_Dan_Anh = 'BienHoa', @ID_ChucVu = 2, @ID_PhongBan = 2, @NgayTao = '2023-05-05', @NguoiTao = 'Tuan', @NgaySua = '2023-06-06'
SELECT * FROM tblNhanVien
/*Thêm tài khoản*/
create proc [dbo].[ThemTK]

@Ten_TKhoan nvarchar (50),
@Mat_Khau nvarchar (100),
@Loai_TKhoan int
as
begin
	insert into tblTaiKhoan (Ten_TKhoan, Mat_Khau, Loai_TKhoan) values (@Ten_TKhoan, @Mat_Khau, @Loai_TKhoan)
end

EXEC [dbo].[ThemTK] @Ten_TKhoan = 'Tuan', @Mat_Khau = '12345', @Loai_TKhoan = 1
SELECT * FROM tblTaiKhoan

/*Thêm Chức Vụ*/
create proc [dbo].[ThemCV]

@ID_ChucVu int,
@Ma_ChucVu nvarchar(50),
@Ten_ChucVu nvarchar(50),
@Ghi_Chu nvarchar(100)
as
begin
	insert into tblChucVu (ID_ChucVu, Ma_ChucVu, Ten_ChucVu, Ghi_Chu) values (@ID_ChucVu, @Ma_ChucVu, @Ten_ChucVu, @Ghi_Chu)
end

EXEC [dbo].[ThemCV] @ID_ChucVu = 1, @Ma_ChucVu = 'CEO', @Ten_ChucVu = 'GiamDoc', @Ghi_Chu = 'QuanLyCongTy'
SELECT * FROM tblChucVu	

/*Thêm Phòng Ban*/
create proc [dbo].[ThemPB]

@ID_PhongBan int,
@Ma_PhongBan nvarchar(50),
@Ten_PhongBan nvarchar(100),
@Dia_Chi nvarchar(100),
@So_DienThoai nvarchar(12),
@Ghi_Chu nvarchar(100)
as 
begin
	insert into tblPhongBan (ID_PhongBan, Ma_PhongBan, Ten_PhongBan, Dia_Chi, So_DienThoai, Ghi_Chu) values (@ID_PhongBan, @Ma_PhongBan, @Ten_PhongBan, @Dia_Chi, @So_DienThoai, @Ghi_Chu)
end
EXEC [dbo].[ThemPB] @ID_PhongBan = 1, @Ma_PhongBan = 'PB01', @Ten_PhongBan = 'PhongKeToan', @Dia_Chi = 'TP.HCM', @So_DienThoai = '123456789', @Ghi_Chu ='Ghi chu ve phong ke toan'
SELECT * FROM tblPhongBan

/*Sửa Thông Tin Nhân Viên*/
create proc [dbo].[SuaNV]
@ID_NhanVien int,
@Ten_TKhoan nvarchar(50),
@Ho_Ten nvarchar(50),
@Ngay_Sinh nvarchar(100),
@Gioi_Tinh int,
@Que_Quan nvarchar(100),
@So_CMT nvarchar(50),
@Ngay_Cap date,
@Noi_Cap nvarchar(100),
@So_DienThoai nvarchar(50),
@Email nvarchar(100),
@Dia_Chi nvarchar(100),
@Duong_Dan_Anh nvarchar(100),
@ID_ChucVu int,
@ID_PhongBan int,
@NgayTao date,
@NguoiTao nvarchar(100),
@NgaySua date
as
begin
	update tblNhanVien set 
	Ten_TKhoan = @Ten_TKhoan,
	Ho_Ten = @Ho_Ten,
	Ngay_Sinh = @Ngay_Sinh,
	Gioi_Tinh = @Gioi_Tinh,
	Que_Quan = @Que_Quan,
	So_CMT = @So_CMT,
	Ngay_Cap = @Ngay_Cap,
	Noi_Cap = @Noi_Cap,
	So_DienThoai = @So_DienThoai,
	Email = @Email,
	Dia_Chi = @Dia_Chi,
	Duong_Dan_Anh = @Duong_Dan_Anh,
	ID_ChucVu = @ID_ChucVu,
	ID_PhongBan = @ID_PhongBan,
	NgayTao = @NgayTao,
	NguoiTao = @NguoiTao,
	NgaySua = @NgaySua
	where ID_NhanVien = @ID_NhanVien
end

EXEC [dbo].[SuaNV] @ID_NhanVien = 1, @Ten_TKhoan = 'Tuan', @Ho_Ten = 'Bui Anh', @Ngay_Sinh = '2002-05-05', @Gioi_Tinh = 1, @Que_Quan = 'DaNang', @So_CMT = '123456', @Ngay_Cap = '2020-05-05', @Noi_Cap = 'BienHoa', @So_DienThoai = '123456789', @Email = 'anhtuan@gmail.com', @Dia_Chi = 'DongNai', @Duong_Dan_Anh = 'BienHoa', @ID_ChucVu = 1, @ID_PhongBan = 1, @NgayTao = '2023-05-05', @NguoiTao = 'Tuan', @NgaySua = '2023-06-06'
SELECT * FROM tblNhanVien

/*Sửa Thông Tin Tài Khoản*/
create proc [dbo].[SuaTK]
@Ten_TKhoan nvarchar (50),
@Mat_Khau nvarchar (100),
@Loai_TKhoan int
as
begin
	update tblTaiKhoan set
	Mat_Khau = @Mat_Khau,
	Loai_TKhoan = @Loai_TKhoan
	where Ten_TKhoan = @Ten_TKhoan
end

EXEC [dbo].[SuaTK] @Ten_TKhoan = 'Tuan', @Mat_Khau = '1234567', @Loai_TKhoan = 2
SELECT * FROM tblTaiKhoan

/*Sửa Thông Tin Chức Vụ*/
create proc [dbo].[SuaCV]
@ID_ChucVu int,
@Ma_ChucVu nvarchar(50),
@Ten_ChucVu nvarchar(50),
@Ghi_Chu nvarchar(100)
as
begin
	update tblChucVu set
	Ma_ChucVu = @Ma_ChucVu,
	Ten_ChucVu = @Ten_ChucVu,
	Ghi_Chu = @Ghi_Chu
	where ID_ChucVu = @ID_ChucVu
end
EXEC [dbo].[SuaCV] @ID_ChucVu = 1, @Ma_ChucVu = 'CEOO', @Ten_ChucVu = 'ChuTich', @Ghi_Chu = 'QuanLyCongTy'
SELECT * FROM tblChucVu

/*Sửa Thông Tin Phòng Ban*/
create proc [dbo].[SuaPB]

@ID_PhongBan int,
@Ma_PhongBan nvarchar(50),
@Ten_PhongBan nvarchar(100),
@Dia_Chi nvarchar(100),
@So_DienThoai nvarchar(12),
@Ghi_Chu nvarchar(100)
as
begin
	update tblPhongBan set
	Ma_PhongBan = @Ma_PhongBan,
	Ten_PhongBan = @Ten_PhongBan,
	Dia_Chi = @Dia_Chi,
	So_DienThoai = @So_DienThoai,
	Ghi_Chu = @Ghi_Chu
	where ID_PhongBan = @ID_PhongBan
end
EXEC [dbo].[SuaPB] @Ma_PhongBan = 1, @ID_PhongBan = 1, @Ten_PhongBan = 'PB002', @Dia_Chi = 'HaNoi', @So_DienThoai = '2345678', @Ghi_Chu = 'GhiChuVePhongKeToan'
SELECT * FROM tblPhongBan

/*Xóa nhân viên*/
create proc [dbo].[XoaNV]
@ID_NhanVien int
as
begin
    delete tblNhanVien where ID_NhanVien = @ID_NhanVien
end
EXEC [dbo].[XoaNV] @ID_NhanVien = 1
SELECT * FROM tblNhanVien

/*Xóa Tài Khoản*/
create proc [dbo].[XoaTK]
@Ten_TKhoan nvarchar(50)
as
begin
    delete tblTaiKhoan where Ten_TKhoan = @Ten_TKhoan
end

EXEC [dbo].[XoaTK] @Ten_TKhoan = 'Tuan'
SELECT * FROM tblTaiKhoan

/*Xóa Chức Vụ*/
create proc [dbo].[XoaCV]
@ID_ChucVu int
as
begin
    delete tblChucVu where ID_ChucVu = @ID_ChucVu
end

EXEC [dbo].[XoaCV] @ID_ChucVu = 1
SELECT * FROM tblChucVu

/*Xóa Phòng Ban*/
create proc [dbo].[XoaPB]
@ID_PhongBan int
as
begin
    delete tblPhongBan where ID_PhongBan = @ID_PhongBan
end

EXEC [dbo].[XoaPB] @ID_PhongBan = 1
SELECT * FROM tblPhongBan