/*Transaction SuaCV*/
BEGIN TRANSACTION;

BEGIN TRY
    -- Gọi stored procedure để cập nhật thông tin chức vụ
    EXEC [dbo].[SuaCV] @ID_ChucVu = 2, @Ma_ChucVu = 'Tuan', @Ten_ChucVu = 'ChuTich', @Ghi_Chu = 'QuanLyCongTy';

    -- Kiểm tra nếu không có lỗi, thực hiện commit giao dịch
    COMMIT;
END TRY
BEGIN CATCH
    -- Nếu xảy ra lỗi, thực hiện rollback giao dịch
    ROLLBACK;

    -- In thông báo lỗi
    PRINT ERROR_MESSAGE();
END CATCH;

-- Lấy dữ liệu từ bảng tblChucVu sau khi cập nhật
SELECT * FROM tblChucVu;

