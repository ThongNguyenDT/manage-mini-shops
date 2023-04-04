CREATE DATABASE [test]
 GO
 
 use test

CREATE TABLE [dbo].[Bảng thuế](
	[Mã thuế] [nvarchar](255) NOT NULL,
	[Loại thuế] [nvarchar](255) NULL,
	[Mức thuế (%)] [int] NULL,
 CONSTRAINT [PK_Bảng thuế] PRIMARY KEY CLUSTERED ([Mã thuế])
)
GO

CREATE TABLE [dbo].[Chi nhánh](
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
	[Tên chi nhánh] [nvarchar](255) NULL,
	[SĐT] [int] NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Giá mặt bằng] [int] NULL,
	[Vốn ban đầu] [int] NULL,
	[Lượt mua hàng] [int] NULL,
 CONSTRAINT [PK_Chi nhánh] PRIMARY KEY CLUSTERED  ([Mã chi nhánh] ASC)
)
GO

CREATE TABLE [dbo].[Hàng bán](
	[Mã hàng] [nvarchar](255) NOT NULL,
	[Mã kệ] [nvarchar](255) NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Ưu đãi (%)] [nvarchar](max) NULL,
	[Giá bán] [int] NULL,
	[Mã nhóm hàng] [nvarchar](255) NULL,
 CONSTRAINT [PK_Hàng bán] PRIMARY KEY CLUSTERED 
(
	[Mã hàng] ASC
)
)
GO

CREATE TABLE [dbo].[Hàng hóa](
	[Mã hàng hóa] [nvarchar](255) NOT NULL,
	[Mã lô hàng] [nvarchar](255) NULL,
	[Mã kho hàng] [nvarchar](255) NULL,
	[Tên hàng hóa] [nvarchar](255) NULL,
	[Đơn giá nhập] [int] NULL,
 CONSTRAINT [PK_Hàng hóa] PRIMARY KEY CLUSTERED 
(
	[Mã hàng hóa] ASC
)
) 
GO

CREATE TABLE [dbo].[Hóa đơn](
	[Mã hóa đơn] [nvarchar](255) NOT NULL,
	[Tiền trả] [int] NULL,
	[Tiền thừa] [int] NULL,
	[Tiền giảm giá] [int] NULL,
	[Thuế] [nvarchar](255) NULL,
	[Thời gian xuất] [datetime] NULL,
 CONSTRAINT [PK_Hóa đơn] PRIMARY KEY CLUSTERED 
(
	[Mã hóa đơn] ASC
)
)
GO

CREATE TABLE [dbo].[Hoạt động](
	[Mã hoạt động] [nvarchar](255) NOT NULL,
	[Tên công việc] [nvarchar](max) NULL,
	[Ngày bắt đầu] [datetime] NULL,
	[Ngày kết thúc] [datetime] NULL,
	[Ưu đãi] [nvarchar](max) NULL,
	[Doanh thu] [int] NULL,
 CONSTRAINT [PK_Hoạt động] PRIMARY KEY CLUSTERED 
(
	[Mã hoạt động] ASC
)
)
GO


CREATE TABLE [dbo].[Kệ](
	[Mã kệ] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Vị trí] [nvarchar](255) NULL,
 CONSTRAINT [PK_Kệ] PRIMARY KEY CLUSTERED 
(
	[Mã kệ] ASC
)
) 
GO


CREATE TABLE [dbo].[Khách hàng](
	[Mã khách hàng] [nvarchar](255) NOT NULL,
	[CCCD] [nvarchar](255) NOT NULL,
	[Họ tên] [nvarchar](max) NULL,
	[SĐT] [int] NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Tổng tiền] [int] NULL,
	[Loại thẻ] [nvarchar](255) NULL,
	[Ngày cấp thẻ] [datetime] NULL,
	[Số lượt giao dịch] [int] NULL,
 CONSTRAINT [PK_Khách hàng] PRIMARY KEY CLUSTERED 
(
	[Mã khách hàng] ASC
),
 CONSTRAINT [UQ__Khách hà__A955A0AA8C5B313E] UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)
)
GO

CREATE TABLE [dbo].[Khách hàng x Chi nhánh](
	[Mã khách hàng] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Khách hà__36DE10710E33396F] PRIMARY KEY CLUSTERED 
(
	[Mã khách hàng] ASC,
	[Mã chi nhánh] ASC
)
) 
GO

CREATE TABLE [dbo].[Khách hàng x Mặt hàng ưu thích]([Mã khách hàng] [nvarchar](255) NOT NULL,
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Khách hà__6A43D857103386CD] PRIMARY KEY CLUSTERED 
(
	[Mã khách hàng] ASC,
	[Mã sản phẩm] ASC
)
) 
GO

CREATE TABLE [dbo].[Kho hàng](
	[Mã kho] [nvarchar](255) NOT NULL,
	[Tên kho] [nvarchar](255) NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Loại kho] [nvarchar](255) NULL,
	[Vị trí] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kho hàng] PRIMARY KEY CLUSTERED 
(
	[Mã kho] ASC
)
) 
GO

CREATE TABLE [dbo].[Lô hàng](
	[Mã lô hàng] [nvarchar](255) NOT NULL,
	[Loại hàng] [nvarchar](255) NULL,
	[Số lượng] [int] NULL,
	[Hạn sử dụng] [datetime] NULL,
	[Thời gian nhập] [datetime] NULL,
	[Thời gian xuất] [datetime] NULL,
 CONSTRAINT [PK_Lô hàng] PRIMARY KEY CLUSTERED 
(
	[Mã lô hàng] ASC
)
) 
GO

CREATE TABLE [dbo].[Loại thẻ](
	[Mã thẻ] [nvarchar](255) NOT NULL,
	[Tên loại thẻ] [nvarchar](255) NULL,
	[Mức điểm] [int] NULL,
	[Mức ưu đãi (%)] [int] NULL,
 CONSTRAINT [PK_Loại thẻ] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)
) 
GO

CREATE TABLE [dbo].[Mặt hàng ưu thích](
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
	[Số lượng sản phẩm] [int] NULL,
	[Mã nhóm] [nvarchar](255) NULL,
 CONSTRAINT [PK_Mặt hàng ưu thích] PRIMARY KEY CLUSTERED 
(
	[Mã sản phẩm] ASC
)
) 
GO

CREATE TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh](
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Mặt hàng__8BEDFE6BEDE33F08] PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã sản phẩm] ASC
)
) 
GO

CREATE TABLE [dbo].[Nhân viên](
	[Mã nhân viên] [nvarchar](255) NOT NULL,
	[CCCD] [nvarchar](255) NOT NULL,
	[Họ] [nvarchar](max) NULL,
	[Tên] [nvarchar](max) NULL,
	[Loại nhân viên] [nvarchar](max) NULL,
	[Giới tính] [nvarchar](max) NULL,
	[SĐT] [nvarchar](max) NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Ngày sinh] [datetime] NULL,
	[Mã phòng] [nvarchar](255) NULL,
 CONSTRAINT [PK_Nhân viên] PRIMARY KEY CLUSTERED 
(
	[Mã nhân viên] ASC
),
 CONSTRAINT [UQ__Nhân viê__A955A0AA9D64072B] UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)
)
GO

CREATE TABLE [dbo].[Nhóm hàng](
	[Mã nhóm] [nvarchar](255) NOT NULL,
	[Tên nhóm] [nvarchar](255) NULL,
	[Mức thuế VAT (%)] [int] NULL,
	[Mô tả] [nvarchar](max) NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
 CONSTRAINT [PK_Nhóm hàng] PRIMARY KEY CLUSTERED 
(
	[Mã nhóm] ASC
)
)
GO


CREATE TABLE [dbo].[Phòng](
	[Mã phòng] [nvarchar](255) NOT NULL,
	[Tên phòng] [nvarchar](255) NULL,
	[Mức lương] [int] NULL,
	[Ngày nghỉ phép] [int] NULL,
	[Trợ cấp] [int] NULL,
	[Bảo hiểm] [int] NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Mã nhân viên quản lí] [nvarchar](255) NULL,
 CONSTRAINT [PK_Phòng] PRIMARY KEY CLUSTERED 
(
	[Mã phòng] ASC
)
) 
GO

CREATE TABLE [dbo].[Tài chính](
	[Mã chi nhánh] [nvarchar](255) NOT NULL,[Mã công việc] [nvarchar](255) NOT NULL,
	[Mốc thời gian] [datetime] NULL,
	[Số tiền] [int] NULL,
	[Thuế] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Tài chín__4FC83CE22191361C] PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã công việc] ASC,
	[Thuế] ASC
)
) 
GO

CREATE TABLE [dbo].[Thống kê](
	[Mã thống kê] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Mã sản phẩm] [nvarchar](255) NULL,
	[Số lượng] [int] NULL,
	[Thời gian] [datetime] NULL,
 CONSTRAINT [PK_Thống kê] PRIMARY KEY CLUSTERED 
(
	[Mã thống kê] ASC
)
) 
GO

CREATE TABLE [dbo].[Thống kê x Chi nhánh](
	[Mã thống kê] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Thống kê__AA708D813DD8E7D2] PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã thống kê] ASC
)
) 
GO

CREATE TABLE [dbo].[Thông tin hóa đơn](
	[Mã hóa đơn] [nvarchar](255) NOT NULL,
	[Mã hàng] [nvarchar](255) NOT NULL,
	[Số lượng hàng] [int] NULL,
	[Mã khách hàng] [nvarchar](255) NULL,
	[Số điểm nhận] [int] NULL,
 CONSTRAINT [PK__Thông ti__96657175B18F2D97] PRIMARY KEY CLUSTERED 
(
	[Mã hóa đơn] ASC,
	[Mã hàng] ASC
)
) 
GO

