USE [master]
GO
/****** Object:  Database [QLChuoiSieuThiMini]    Script Date: 3/16/2023 1:34:10 PM ******/
CREATE DATABASE [QLChuoiSieuThiMini]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLChuoiSiieuThiMini', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLChuoiSiieuThiMini.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLChuoiSiieuThiMini_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLChuoiSiieuThiMini_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLChuoiSieuThiMini].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET RECOVERY FULL 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET  MULTI_USER 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLChuoiSieuThiMini', N'ON'
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLChuoiSieuThiMini]
GO
/****** Object:  User [ThongNguyen]    Script Date: 3/16/2023 1:34:11 PM ******/
CREATE USER [ThongNguyen] FOR LOGIN [ThongNguyen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Bảng thuế]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bảng thuế](
	[Mã thuế] [nvarchar](255) NOT NULL,
	[Loại thuế] [nvarchar](255) NULL,
	[Mức thuế (%)] [int] NULL,
 CONSTRAINT [PK_Bảng thuế] PRIMARY KEY CLUSTERED 
(
	[Mã thuế] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chi nhánh]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi nhánh](
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
	[Tên chi nhánh] [nvarchar](255) NULL,
	[SĐT] [int] NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Giá mặt bằng] [int] NULL,
	[Vốn ban đầu] [int] NULL,
	[Lượt mua hàng] [int] NULL,
 CONSTRAINT [PK_Chi nhánh] PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hàng bán]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hàng hóa]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hóa đơn]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoạt động]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kệ]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kệ](
	[Mã kệ] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NULL,
	[Vị trí] [nvarchar](255) NULL,
 CONSTRAINT [PK_Kệ] PRIMARY KEY CLUSTERED 
(
	[Mã kệ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khách hàng]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khách hàng x Chi nhánh]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khách hàng x Chi nhánh](
	[Mã khách hàng] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã khách hàng] ASC,
	[Mã chi nhánh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khách hàng x Mặt hàng ưu thích]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khách hàng x Mặt hàng ưu thích](
	[Mã khách hàng] [nvarchar](255) NOT NULL,
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã khách hàng] ASC,
	[Mã sản phẩm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho hàng]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lô hàng]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loại thẻ]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loại thẻ](
	[Mã thẻ] [nvarchar](255) NOT NULL,
	[Tên loại thẻ] [nvarchar](255) NULL,
	[Mức điểm] [int] NULL,
	[Mức ưu đãi (%)] [int] NULL,
 CONSTRAINT [PK_Loại thẻ] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mặt hàng ưu thích]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mặt hàng ưu thích](
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
	[Số lượng sản phẩm] [int] NULL,
	[Mã nhóm] [nvarchar](255) NULL,
 CONSTRAINT [PK_Mặt hàng ưu thích] PRIMARY KEY CLUSTERED 
(
	[Mã sản phẩm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mặt hàng ưu thích x Chi nhánh]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh](
	[Mã sản phẩm] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã sản phẩm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhân viên]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhóm hàng]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phòng]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tài chính]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tài chính](
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
	[Mã công việc] [nvarchar](255) NOT NULL,
	[Mốc thời gian] [datetime] NULL,
	[Số tiền] [int] NULL,
	[Thuế] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã công việc] ASC,
	[Thuế] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống kê]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống kê x Chi nhánh]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống kê x Chi nhánh](
	[Mã thống kê] [nvarchar](255) NOT NULL,
	[Mã chi nhánh] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã chi nhánh] ASC,
	[Mã thống kê] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thông tin hóa đơn]    Script Date: 3/16/2023 1:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thông tin hóa đơn](
	[Mã hóa đơn] [nvarchar](255) NOT NULL,
	[Mã hàng] [nvarchar](255) NOT NULL,
	[Số lượng hàng] [int] NULL,
	[Mã khách hàng] [nvarchar](255) NULL,
	[Số điểm nhận] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mã hóa đơn] ASC,
	[Mã hàng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bảng thuế] ([Mã thuế], [Loại thuế], [Mức thuế (%)]) VALUES (N'CIT', N'Thuế thu nhập doanh nghiệp', 1)
GO
INSERT [dbo].[Bảng thuế] ([Mã thuế], [Loại thuế], [Mức thuế (%)]) VALUES (N'EIT', N'Thuế xuất nhập khẩu', 3)
GO
INSERT [dbo].[Bảng thuế] ([Mã thuế], [Loại thuế], [Mức thuế (%)]) VALUES (N'PIT', N'Thuế thu nhập cá nhân', 11)
GO
INSERT [dbo].[Bảng thuế] ([Mã thuế], [Loại thuế], [Mức thuế (%)]) VALUES (N'SIT', N'Thuế thu nhạp từ bán hàng', 5)
GO
INSERT [dbo].[Bảng thuế] ([Mã thuế], [Loại thuế], [Mức thuế (%)]) VALUES (N'VAT', N'Thuế giá trị gia tăng', 6)
GO
INSERT [dbo].[Chi nhánh] ([Mã chi nhánh], [Tên chi nhánh], [SĐT], [Địa chỉ], [Giá mặt bằng], [Vốn ban đầu], [Lượt mua hàng]) VALUES (N'CN001', N'Chi nhánh Phạm Văn Đồng', 985623565, N'118, Phạm Văn Đồng, phường 1, Gò Vấp, Hồ Chí Minh', 150000000, 400000000, 1600)
GO
INSERT [dbo].[Chi nhánh] ([Mã chi nhánh], [Tên chi nhánh], [SĐT], [Địa chỉ], [Giá mặt bằng], [Vốn ban đầu], [Lượt mua hàng]) VALUES (N'CN002', N'Chi nhánh Võ Văn Ngân', 945685213, N'15, Võ Văn Ngân, phường Tân Phú, quận 9, Hồ Chí Minh', 200000000, 500000000, 1800)
GO
INSERT [dbo].[Chi nhánh] ([Mã chi nhánh], [Tên chi nhánh], [SĐT], [Địa chỉ], [Giá mặt bằng], [Vốn ban đầu], [Lượt mua hàng]) VALUES (N'CN003', N'Chi nhánh Lê Quang Định', 987123456, N'58A, Lê Quang Định, phường 14, quận Bình Thạnh, Hồ Chí Minh', 380000000, 450000000, 2400)
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'B001', N'MK07', N'CN002', N'7', 2800000, N'GD003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'B002', N'MK07', N'CN002', N'7', 2500000, N'GD003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'B003', N'MK08', N'CN002', N'7', 3300000, N'GD003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'C001', N'MK06', N'CN002', N'3', 38000, N'TP003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'D001', N'MK08', N'CN002', N'0', 270000, N'CN001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'D002', N'MK08', N'CN002', N'0', 270000, N'CN001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'G001', N'MK10', N'CN003', N'0', 14500000, N'DT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'G002', N'MK10', N'CN003', N'0', 15500000, N'DT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'G003', N'MK10', N'CN003', N'0', 21000000, N'DT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'H001', N'MK12', N'CN003', N'10', 6300000, N'GD002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'H002', N'MK12', N'CN003', N'10', 2700000, N'GD002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'H003', N'MK12', N'CN003', N'10', 2000000, N'GD002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'K001', N'MK11', N'CN003', N'5', 550000, N'MP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'K002', N'MK11', N'CN003', N'5', 420000, N'MP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'K003', N'MK10', N'CN003', N'5', 280000, N'MP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'K004', N'MK10', N'CN003', N'5', 120000, N'MP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'L001', N'MK10', N'CN003', N'12', 41000000, N'DT002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'L002', N'MK10', N'CN003', N'12', 37000000, N'DT002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'L003', N'MK10', N'CN003', N'12', 40000000, N'DT002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'L004', N'MK10', N'CN003', N'12', 36000000, N'DT002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'N001', N'MK04', N'CN001', N'0', 780000, N'GD001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'N002', N'MK04', N'CN001', N'0', 680000, N'GD001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'N003', N'MK04', N'CN001', N'0', 1300000, N'GD001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'P001', N'MK03', N'CN001', N'5', 320000, N'MP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'P002', N'MK03', N'CN001', N'5', 250000, N'MP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'P003', N'MK03', N'CN001', N'5', 350000, N'MP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'R001', N'MK02', N'CN001', N'0', 16000, N'TP003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'R002', N'MK06', N'CN002', N'0', 27000, N'TP003')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'T001', N'MK01', N'CN001', N'0', 3000, N'TP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'T002', N'MK01', N'CN001', N'0', 4000, N'TP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'T003', N'MK01', N'CN001', N'0', 1500, N'TP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V001', N'MK09', N'CN003', N'5', 6000, N'VP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V002', N'MK09', N'CN003', N'5', 15000, N'VP001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V003', N'MK09', N'CN003', N'5', 45000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V004', N'MK09', N'CN003', N'5', 30000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V005', N'MK03', N'CN001', N'0', 12000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V006', N'MK03', N'CN001', N'0', 3000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V007', N'MK03', N'CN001', N'0', 4000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'V008', N'MK03', N'CN001', N'0', 7000, N'VP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'W001', N'MK08', N'CN002', N'0', 580000, N'CN002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'W002', N'MK08', N'CN002', N'0', 580000, N'CN002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'X001', N'MK05', N'CN002', N'2', 8000, N'TP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'X002', N'MK05', N'CN002', N'2', 10000, N'TP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'X003', N'MK05', N'CN002', N'2', 7000, N'TP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'X004', N'MK05', N'CN002', N'2', 12000, N'TP002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'Y001', N'MK04', N'CN001', N'0', 8000, N'YT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'Y002', N'MK04', N'CN001', N'0', 15000, N'YT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'Y003', N'MK04', N'CN001', N'0', 3000, N'YT001')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'Y004', N'MK08', N'CN002', N'0', 35000, N'YT002')
GO
INSERT [dbo].[Hàng bán] ([Mã hàng], [Mã kệ], [Mã chi nhánh], [Ưu đãi (%)], [Giá bán], [Mã nhóm hàng]) VALUES (N'Y005', N'MK08', N'CN002', N'0', 26000, N'YT002')
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'B001', N'ML024', N'KC002', N'Bàn chải đánh răng điện tử Philips Sonicare', 2600000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'B002', N'ML025', N'KC002', N'Bàn chải đánh răng điện tử Oral-B', 2300000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'B003', N'ML026', N'KC002', N'Bàn chải đánh răng điện tử Waterpik', 3100000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'C001', N'ML010', N'KL002', N'Cà rốt', 35000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'D001', N'ML027', N'KC002', N'Dao cạo nam', 250000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'D002', N'ML028', N'KC002', N'Dao cạo nữ', 250000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'G001', N'ML031', N'KC003', N'Máy giặt Samsung', 14000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'G002', N'ML032', N'KC003', N'Máy giặt LG', 15000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'G003', N'ML033', N'KC003', N'Máy giặt Sony', 20000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'H001', N'ML021', N'KC001', N'Máy hút bụi Dyson', 6000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'H002', N'ML022', N'KC001', N'Máy hút bụi Shark', 2500000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'H003', N'ML023', N'KC001', N'Máy hút bụi Xiaomi', 1800000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'K001', N'ML014', N'KT001', N'Kem nền', 500000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'K002', N'ML015', N'KT001', N'Kem che khuyết điểm', 380000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'K003', N'ML016', N'KT001', N'Kem phấn', 250000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'K004', N'ML017', N'KT001', N'Kem dưỡng', 100000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'L001', N'ML034', N'KC003', N'Laptop Dell', 40000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'L002', N'ML035', N'KC003', N'Laptop Lenovo', 35000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'L003', N'ML036', N'KC003', N'Laptop Asus', 38000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'L004', N'ML037', N'KC003', N'Laptop HP', 34000000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'N001', N'ML018', N'KC001', N'Nồi cơm điện Panasonic', 700000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'N002', N'ML019', N'KC001', N'Nồi cơn điện Tiger', 625000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'N003', N'ML020', N'KC001', N'Nồi cơm điện Cuckoo', 1230000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'P001', N'ML011', N'KT001', N'Phấn nền', 300000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'P002', N'ML012', N'KT001', N'Phấn má', 230000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'P003', N'ML013', N'KT001', N'Phấn phủ', 320000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'R001', N'ML008', N'KL001', N'Rau xà lách', 16000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'R002', N'ML009', N'KL002', N'Rau cần ô', 27000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'T001', N'ML001', N'KL001', N'Trứng gà', 3000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'T002', N'ML002', N'KL001', N'Trứng vịt', 4000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'T003', N'ML003', N'KL001', N'Trứng cút', 1500)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V001', N'ML038', N'KT002', N'Bút bi', 5000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V002', N'ML039', N'KT002', N'Bút lông', 13000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V003', N'ML040', N'KT002', N'Giấy in ấn', 42000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V004', N'ML041', N'KT002', N'Sổ tay', 28000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V005', N'ML042', N'KT002', N'Ghim giấy', 10000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V006', N'ML043', N'KT003', N'Kẹp giấy', 2000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V007', N'ML044', N'KT003', N'File giấy', 3000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'V008', N'ML045', N'KT003', N'Bìa cứng', 6000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'W001', N'ML029', N'KC002', N'Đồng hồ nam', 560000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'W002', N'ML030', N'KC002', N'Đồng hồ nữ', 560000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'X001', N'ML004', N'KL002', N'Xúc xích heo', 6000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'X002', N'ML005', N'KL002', N'Xúc xích bò', 8000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'X003', N'ML006', N'KL002', N'Xúc xích gà', 5000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'X004', N'ML007', N'KL002', N'Xúc xích đặc biệt', 10000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'Y001', N'ML046', N'KY001', N'Băng gạc', 8000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'Y002', N'ML047', N'KY002', N'Oxy già', 15000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'Y003', N'ML048', N'KY001', N'Băng keo cá nhân', 3000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'Y004', N'ML049', N'KY003', N'Thuốc ngủ', 35000)
GO
INSERT [dbo].[Hàng hóa] ([Mã hàng hóa], [Mã lô hàng], [Mã kho hàng], [Tên hàng hóa], [Đơn giá nhập]) VALUES (N'Y005', N'ML050', N'KY003', N'Thuốc Panadol', 26000)
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0001', 100000, 40000, 0, N'VAT', CAST(N'2020-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0002', 200000, 140000, 0, N'VAT', CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0003', 50000, 5000, 0, N'VAT', CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0004', 100000, 40000, 0, N'VAT', CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0005', 50000, 10000, 0, N'VAT', CAST(N'2020-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0006', 50000, 0, 0, N'VAT', CAST(N'2020-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0007', 500000, 300000, 0, N'VAT', CAST(N'2020-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0008', 50000, 18000, 0, N'VAT', CAST(N'2020-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0009', 100000, 19000, 0, N'VAT', CAST(N'2020-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0010', 200000, 25000, 0, N'VAT', CAST(N'2020-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0011', 1000000, 100000, 0, N'VAT', CAST(N'2020-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0012', 2000000, 100000, 0, N'VAT', CAST(N'2020-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0013', 100000, 40000, 0, N'VAT', CAST(N'2020-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0014', 300000, 40000, 0, N'VAT', CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0015', 100000, 0, 0, N'VAT', CAST(N'2020-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0016', 100000000, 20000000, 0, N'VAT', CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0017', 10000000, 2200000, 0, N'VAT', CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0018', 15000000, 0, 0, N'VAT', CAST(N'2022-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0019', 50000, 26000, 0, N'VAT', CAST(N'2020-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hóa đơn] ([Mã hóa đơn], [Tiền trả], [Tiền thừa], [Tiền giảm giá], [Thuế], [Thời gian xuất]) VALUES (N'HĐ0020', 500000, 100000, 0, N'VAT', CAST(N'2020-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV001', N'Bán hàng', CAST(N'2022-10-10T00:00:00.000' AS DateTime), CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'0', 5000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV002', N'Bán hàng', CAST(N'2022-10-11T00:00:00.000' AS DateTime), CAST(N'2022-10-11T00:00:00.000' AS DateTime), N'0', 8000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV003', N'Bán hàng', CAST(N'2022-10-12T00:00:00.000' AS DateTime), CAST(N'2022-10-12T00:00:00.000' AS DateTime), N'0', 6000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV004', N'Bán hàng', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), N'0', 7500000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV005', N'Nhập hàng kho', CAST(N'2022-10-20T00:00:00.000' AS DateTime), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'0', 50000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV006', N'Trả lương', CAST(N'2022-10-28T00:00:00.000' AS DateTime), CAST(N'2022-10-28T00:00:00.000' AS DateTime), N'0', 70000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV007', N'Bán hàng', CAST(N'2022-10-10T00:00:00.000' AS DateTime), CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'0', 5890000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV008', N'Bán hàng', CAST(N'2022-10-11T00:00:00.000' AS DateTime), CAST(N'2022-10-11T00:00:00.000' AS DateTime), N'0', 7785000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV009', N'Bán hàng', CAST(N'2022-10-12T00:00:00.000' AS DateTime), CAST(N'2022-10-12T00:00:00.000' AS DateTime), N'0', 6480000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV010', N'Bán hàng', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), N'0', 7780000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV011', N'Nhập hàng kho', CAST(N'2022-10-20T00:00:00.000' AS DateTime), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'0', 88980000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV012', N'Trả lương', CAST(N'2022-10-28T00:00:00.000' AS DateTime), CAST(N'2022-10-28T00:00:00.000' AS DateTime), N'0', 98800000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV013', N'Bán hàng', CAST(N'2022-10-10T00:00:00.000' AS DateTime), CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'0', 5280000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV014', N'Bán hàng', CAST(N'2022-10-11T00:00:00.000' AS DateTime), CAST(N'2022-10-11T00:00:00.000' AS DateTime), N'0', 4800000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV015', N'Bán hàng', CAST(N'2022-10-12T00:00:00.000' AS DateTime), CAST(N'2022-10-12T00:00:00.000' AS DateTime), N'0', 8100000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV016', N'Bán hàng', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), N'0', 5120000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV017', N'Nhập hàng kho', CAST(N'2022-10-20T00:00:00.000' AS DateTime), CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'0', 68000000)
GO
INSERT [dbo].[Hoạt động] ([Mã hoạt động], [Tên công việc], [Ngày bắt đầu], [Ngày kết thúc], [Ưu đãi], [Doanh thu]) VALUES (N'CV018', N'Trả lương', CAST(N'2022-10-28T00:00:00.000' AS DateTime), CAST(N'2022-10-28T00:00:00.000' AS DateTime), N'0', 72000000)
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK01', N'CN001', N'1')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK02', N'CN001', N'2')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK03', N'CN001', N'3')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK04', N'CN001', N'4')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK05', N'CN002', N'1')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK06', N'CN002', N'2')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK07', N'CN002', N'3')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK08', N'CN002', N'4')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK09', N'CN003', N'1')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK10', N'CN003', N'2')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK11', N'CN003', N'3')
GO
INSERT [dbo].[Kệ] ([Mã kệ], [Mã chi nhánh], [Vị trí]) VALUES (N'MK12', N'CN003', N'4')
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0001', N'77203001234', N'Nguyễn Tiến Thông', 396512345, N'quận 3, TP Hồ Chí Minh', 5500000, N'S', CAST(N'2022-01-01T00:00:00.000' AS DateTime), 20)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0002', N'79202007879', N'Huỳnh Văn Thọ', 976912345, N'quận 1, TP Hồ Chí Minh', 6500000, N'G', CAST(N'2022-01-03T00:00:00.000' AS DateTime), 18)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0003', N'79201003456', N'Trần Thanh Thiện', 986554321, N'Gò Vấp, TP Hồ Chí Minh', 7500000, N'P', CAST(N'2022-10-02T00:00:00.000' AS DateTime), 24)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0004', N'79203017779', N'Trần Văn Nam', 977897645, N'quận 2, TP Hồ Chí Minh', 8800000, N'P', CAST(N'2022-02-01T00:00:00.000' AS DateTime), 30)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0005', N'58202008870', N'Phạm Ngọc Thạch', 977897777, N'quận 3, TP Hồ Chí Minh', 7125000, N'P', CAST(N'2022-03-02T00:00:00.000' AS DateTime), 28)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0006', N'79299007778', N'Đỗ Nhật Nam', 977898888, N'quận 7, TP Hồ Chí Minh', 9910000, N'P', CAST(N'2022-08-09T00:00:00.000' AS DateTime), 35)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0007', N'79103038823', N'Lê Thảo Linh', 977989999, N'quận 3, TP Hồ Chí Minh', 6545000, N'G', CAST(N'2022-01-04T00:00:00.000' AS DateTime), 21)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0008', N'79198024823', N'Phạm Thị Oanh', 789601081, N'quận 7, TP Hồ Chí Minh', 2459000, N'B', CAST(N'2022-01-10T00:00:00.000' AS DateTime), 20)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0009', N'79295016669', N'Nông Đức Mạnh', 396511223, N'quận 2, TP Hồ Chí Minh', 4873000, N'S', CAST(N'2022-04-04T00:00:00.000' AS DateTime), 18)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0010', N'79199006823', N'Nguyễn Kim Ngân', 396517895, N'quận 1, TP Hồ Chí Minh', 6432000, N'G', CAST(N'2022-12-02T00:00:00.000' AS DateTime), 20)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0011', N'79103005823', N'Trần Cẩm Tú', 396512000, N'quận 7, TP Hồ Chí Minh', 5890000, N'S', CAST(N'2022-03-03T00:00:00.000' AS DateTime), 22)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0012', N'79203119899', N'Nguyễn Thế Thành', 396512200, N'quận 3, TP Hồ Chí Minh', 6580000, N'G', CAST(N'2022-04-06T00:00:00.000' AS DateTime), 25)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0013', N'79203229899', N'Nguyễn Văn bảo', 968777517, N'Gò Vấp, TP Hồ Chí Minh', 6500000, N'G', CAST(N'2022-04-03T00:00:00.000' AS DateTime), 24)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0014', N'79203339899', N'Đỗ Nhật Quang', 968888618, N'quận 2, TP Hồ Chí Minh', 8800000, N'G', CAST(N'2022-04-03T00:00:00.000' AS DateTime), 33)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0015', N'79203119800', N'Nguyễn Văn Quốc', 396190512, N'quận 3, TP Hồ Chí Minh', 6500000, N'G', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 21)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0016', N'79203110099', N'Triệu Văn Hùng', 398778512, N'quận 1, TP Hồ Chí Minh', 4500000, N'S', CAST(N'2022-01-09T00:00:00.000' AS DateTime), 20)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0017', N'79203110011', N'Hứa Văn Việt', 965721123, N'quận 3, TP Hồ Chí Minh', 3500000, N'S', CAST(N'2022-09-02T00:00:00.000' AS DateTime), 15)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0018', N'79203114356', N'Hữa Vĩ Văn', 790720130, N'quận 1, TP Hồ Chí Minh', 9500000, N'P', CAST(N'2022-02-09T00:00:00.000' AS DateTime), 28)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0019', N'79203110121', N'Trần Ngọc Bảo', 968712718, N'quận 3, TP Hồ Chí Minh', 4400000, N'S', CAST(N'2022-09-03T00:00:00.000' AS DateTime), 14)
GO
INSERT [dbo].[Khách hàng] ([Mã khách hàng], [CCCD], [Họ tên], [SĐT], [Địa chỉ], [Tổng tiền], [Loại thẻ], [Ngày cấp thẻ], [Số lượt giao dịch]) VALUES (N'KH0020', N'79203220129', N'Dương Đức Thịnh', 951237818, N'quận 1, TP Hồ Chí Minh', 7700000, N'G', CAST(N'2022-03-06T00:00:00.000' AS DateTime), 26)
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0001', N'CN001')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0002', N'CN001')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0003', N'CN001')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0004', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0005', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0006', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0007', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0008', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0009', N'CN001')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0010', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0011', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0012', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0013', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0014', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0015', N'CN001')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0016', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0017', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0018', N'CN003')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0019', N'CN002')
GO
INSERT [dbo].[Khách hàng x Chi nhánh] ([Mã khách hàng], [Mã chi nhánh]) VALUES (N'KH0020', N'CN001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0001', N'T001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0004', N'X001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0011', N'P001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0012', N'K002')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0013', N'Y003')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0014', N'Y005')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0015', N'V001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0016', N'L001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0017', N'B001')
GO
INSERT [dbo].[Khách hàng x Mặt hàng ưu thích] ([Mã khách hàng], [Mã sản phẩm]) VALUES (N'KH0018', N'G002')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KC001', N'Kho chống ẩm số 1', N'CN001', N'Kho chống ẩm', N'C001')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KC002', N'Kho chống ẩm số 2', N'CN002', N'Kho chống ẩm', N'C002')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KC003', N'Kho chống ẩm số 3', N'CN003', N'Kho chống ẩm', N'C003')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KC004', N'Kho chống ẩm số 4', N'CN003', N'Kho chống ẩm', N'C004')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KL001', N'Kho lạnh số 1', N'CN001', N'Kho lạnh', N'A001')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KL002', N'Kho lạnh số 2', N'CN002', N'Kho lạnh', N'A002')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KT001', N'Kho thường số 1', N'CN001', N'Kho thường', N'B001')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KT002', N'Kho thường số 2', N'CN002', N'Kho thường', N'B002')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KT003', N'Kho thường số 3', N'CN003', N'Kho thường', N'B003')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KY001', N'Kho y tế số 1', N'CN001', N'Kho y tế', N'D001')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KY002', N'Kho y tế số 2', N'CN002', N'Kho y tế', N'D002')
GO
INSERT [dbo].[Kho hàng] ([Mã kho], [Tên kho], [Mã chi nhánh], [Loại kho], [Vị trí]) VALUES (N'KY003', N'Kho y tế số 3', N'CN003', N'Kho y tế', N'D003')
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML001', N'Thực phẩm', 4000, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-14T00:00:00.000' AS DateTime), CAST(N'2020-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML002', N'Thực phẩm', 3000, CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2020-03-08T00:00:00.000' AS DateTime), CAST(N'2020-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML003', N'Thực phẩm', 5000, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2020-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML004', N'Thực phẩm', 2000, CAST(N'2020-01-02T00:00:00.000' AS DateTime), CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML005', N'Thực phẩm', 1500, CAST(N'2020-01-02T00:00:00.000' AS DateTime), CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML006', N'Thực phẩm', 1500, CAST(N'2020-01-02T00:00:00.000' AS DateTime), CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML007', N'Thực phẩm', 5000, CAST(N'2020-01-02T00:00:00.000' AS DateTime), CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML008', N'Thực phẩm', 1000, CAST(N'2020-04-04T00:00:00.000' AS DateTime), CAST(N'2020-08-04T00:00:00.000' AS DateTime), CAST(N'2020-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML009', N'Thực phẩm', 1000, CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-07-04T00:00:00.000' AS DateTime), CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML010', N'Thực phẩm', 1000, CAST(N'2020-02-15T00:00:00.000' AS DateTime), CAST(N'2020-02-28T00:00:00.000' AS DateTime), CAST(N'2020-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML011', N'Mỹ phẩm', 2000, CAST(N'2020-01-05T00:00:00.000' AS DateTime), CAST(N'2021-01-08T00:00:00.000' AS DateTime), CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML012', N'Mỹ phẩm', 300, CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML013', N'Mỹ phẩm', 500, CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML014', N'Mỹ phẩm', 100, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML015', N'Mỹ phẩm', 200, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML016', N'Mỹ phẩm', 400, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML017', N'Mỹ phẩm', 600, CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-10T00:00:00.000' AS DateTime), CAST(N'2022-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML018', N'Đồ gia dụng', 100, CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2019-01-07T00:00:00.000' AS DateTime), CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML019', N'Đồ gia dụng', 50, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML020', N'Đồ gia dụng', 70, CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2019-01-07T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML021', N'Đồ gia dụng', 80, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-02T00:00:00.000' AS DateTime), CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML022', N'Đồ gia dụng', 40, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML023', N'Đồ gia dụng', 60, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML024', N'Đồ gia dụng', 50, CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-02-12T00:00:00.000' AS DateTime), CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML025', N'Đồ gia dụng', 80, CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML026', N'Đồ gia dụng', 70, CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML027', N'Đồ dùng cá nhân', 200, CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML028', N'Đồ dùng cá nhân', 300, CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML029', N'Đồ dùng cá nhân', 100, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-02T00:00:00.000' AS DateTime), CAST(N'2021-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML030', N'Đồ dùng cá nhân', 400, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-03T00:00:00.000' AS DateTime), CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML031', N'Đồ điện tử', 100, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-04T00:00:00.000' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML032', N'Đồ điện tử', 100, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-05T00:00:00.000' AS DateTime), CAST(N'2023-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML033', N'Đồ điện tử', 80, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2023-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML034', N'Đồ điện tử', 90, CAST(N'2018-01-02T00:00:00.000' AS DateTime), CAST(N'2019-01-07T00:00:00.000' AS DateTime), CAST(N'2023-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML035', N'Đồ điện tử', 70, CAST(N'2018-01-02T00:00:00.000' AS DateTime), CAST(N'2019-01-08T00:00:00.000' AS DateTime), CAST(N'2023-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML036', N'Đồ điện tử', 60, CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2019-01-09T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML037', N'Đồ điện tử', 80, CAST(N'2019-01-12T00:00:00.000' AS DateTime), CAST(N'2019-02-12T00:00:00.000' AS DateTime), CAST(N'2023-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML038', N'Văn phòng phẩm', 100, CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2020-01-11T00:00:00.000' AS DateTime), CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML039', N'Văn phòng phẩm', 200, CAST(N'2020-09-16T00:00:00.000' AS DateTime), CAST(N'2020-11-16T00:00:00.000' AS DateTime), CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML040', N'Văn phòng phẩm', 150, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML041', N'Văn phòng phẩm', 300, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-02T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML042', N'Văn phòng phẩm', 100, CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2020-01-10T00:00:00.000' AS DateTime), CAST(N'2021-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML043', N'Văn phòng phẩm', 250, CAST(N'2020-01-05T00:00:00.000' AS DateTime), CAST(N'2020-01-11T00:00:00.000' AS DateTime), CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML044', N'Văn phòng phẩm', 200, CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML045', N'Văn phòng phẩm', 300, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML046', N'Y tế', 100, CAST(N'2020-01-10T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML047', N'Y tế', 200, CAST(N'2020-01-10T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML048', N'Y tế', 100, CAST(N'2020-01-05T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML049', N'Y tế', 50, CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Lô hàng] ([Mã lô hàng], [Loại hàng], [Số lượng], [Hạn sử dụng], [Thời gian nhập], [Thời gian xuất]) VALUES (N'ML050', N'Y tế', 200, CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Loại thẻ] ([Mã thẻ], [Tên loại thẻ], [Mức điểm], [Mức ưu đãi (%)]) VALUES (N'B', N'Đồng', 100, 2)
GO
INSERT [dbo].[Loại thẻ] ([Mã thẻ], [Tên loại thẻ], [Mức điểm], [Mức ưu đãi (%)]) VALUES (N'D', N'Kim cương', 1600, 4)
GO
INSERT [dbo].[Loại thẻ] ([Mã thẻ], [Tên loại thẻ], [Mức điểm], [Mức ưu đãi (%)]) VALUES (N'G', N'Vàng', 400, 6)
GO
INSERT [dbo].[Loại thẻ] ([Mã thẻ], [Tên loại thẻ], [Mức điểm], [Mức ưu đãi (%)]) VALUES (N'P', N'Bạch kim', 800, 8)
GO
INSERT [dbo].[Loại thẻ] ([Mã thẻ], [Tên loại thẻ], [Mức điểm], [Mức ưu đãi (%)]) VALUES (N'S', N'Bạc', 200, 10)
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'B001', 500, N'GD003')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'G002', 100, N'DT001')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'K002', 2000, N'MP002')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'L001', 90, N'DT002')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'P001', 2000, N'MP001')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'T001', 4000, N'TP001')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'V001', 1000, N'VP001')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'X001', 2000, N'TP002')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'Y003', 1000, N'YT001')
GO
INSERT [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm], [Số lượng sản phẩm], [Mã nhóm]) VALUES (N'Y005', 200, N'YT002')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'P001', N'CN001')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'T001', N'CN001')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'Y003', N'CN001')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'B001', N'CN002')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'X001', N'CN002')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'Y005', N'CN002')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'G002', N'CN003')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'K002', N'CN003')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'L001', N'CN003')
GO
INSERT [dbo].[Mặt hàng ưu thích x Chi nhánh] ([Mã sản phẩm], [Mã chi nhánh]) VALUES (N'V001', N'CN003')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV001', N'70199001234', N'Nguyễn Diệp', N'Anh', N'Quản lý', N'Nữ', N'924608193', N'Đồng Xoài, Bình Phước', CAST(N'1999-06-10T00:00:00.000' AS DateTime), N'PB007')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV002', N'70289007879', N'Trần Nam', N'Anh', N'Quản lý', N'Nam', N'962342550', N'Phước Long, Bình Phước', CAST(N'1989-09-11T00:00:00.000' AS DateTime), N'PB015')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV003', N'70201003456', N'Hoàng Ngọc', N'Bách', N'Quản lý', N'Nam', N'834082001', N'Bù Đăng, Bình Phước', CAST(N'2001-08-12T00:00:00.000' AS DateTime), N'PB023')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV004', N'70199017779', N'Nguyễn Thị Kim', N'Dung', N'Kho', N'Nữ', N'163533789', N'Đồng Xoài, Bình Phước', CAST(N'1999-06-12T00:00:00.000' AS DateTime), N'PB002')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV005', N'70298008870', N'Phạm Hồng', N'Đăng', N'Thu Ngân', N'Nam', N'984476509', N'Bình Long, Bình Phước', CAST(N'1998-05-11T00:00:00.000' AS DateTime), N'PB003')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV006', N'70100007778', N'Vũ Việt', N'Hà', N'Trưng bày hàng hóa', N'Nữ', N'973266558', N'Đồng Phú, Bình Phước', CAST(N'2000-02-11T00:00:00.000' AS DateTime), N'PB004')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV007', N'70197038823', N'Trần Ngọc', N'Hà', N'Bán hàng', N'Nữ', N'924655434', N'Đồng Xoài, Bình Phước', CAST(N'1990-04-10T00:00:00.000' AS DateTime), N'PB001')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV008', N'70197024823', N'Đào Minh', N'Hạnh', N'Vệ sinh', N'Nữ', N'941688538', N'Lộc Ninh, Bình Phước', CAST(N'1997-11-10T00:00:00.000' AS DateTime), N'PB008')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV009', N'70200016669', N'Đỗ Quốc', N'Hưng', N'Bảo vệ', N'Nam', N'162765429', N'Đồng Xoài, Bình Phước', CAST(N'2000-06-10T00:00:00.000' AS DateTime), N'PB005')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV010', N'79100006993', N'Lê Phương', N'Liên', N'Hỗ trợ khách hàng', N'Nữ', N'924655435', N'Gò Vấp, TP Hồ Chí Minh', CAST(N'2000-07-11T00:00:00.000' AS DateTime), N'PB006')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV011', N'79188005823', N'Nguyễn Anh', N'Mai', N'Kho', N'Nữ', N'924655437', N'quận 1, TP Hồ Chí Minh ', CAST(N'1988-08-04T00:00:00.000' AS DateTime), N'PB010')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV012', N'79297119899', N'Nguyễn Hoàng', N'Nam', N'Thu Ngân', N'Nam', N'924655441', N'quận 7, TP Hồ Chí Minh', CAST(N'1997-07-06T00:00:00.000' AS DateTime), N'PB011')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV013', N'79288229899', N'Trần Lê', N'Nguyên', N'Trưng bày hàng hóa', N'Nam', N'924655440', N'quận 2, TP Hồ Chí Minh', CAST(N'1988-08-06T00:00:00.000' AS DateTime), N'PB012')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV014', N'79188339899', N'Trịnh Hà', N'Phương', N'Bán hàng', N'Nữ', N'924655436', N'quận 3, TP Hồ Chí Minh', CAST(N'1988-08-02T00:00:00.000' AS DateTime), N'PB009')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV015', N'70289119800', N'Lê Minh', N'Tâm', N'Bảo vệ', N'Nam', N'924655443', N'quận 1, TP Hồ Chí Minh', CAST(N'1989-12-08T00:00:00.000' AS DateTime), N'PB021')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV016', N'79196311099', N'Trần Diệu', N'Thúy', N'Vệ sinh', N'Nữ', N'924681193', N'quận 4, TP Hồ Chí Minh', CAST(N'1996-03-08T00:00:00.000' AS DateTime), N'PB024')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV017', N'79199311011', N'Trịnh Minh', N'Thư', N'Hỗ trợ khách hàng', N'Nữ', N'924655438', N'quận 7, TP Hồ Chí Minh', CAST(N'1999-08-04T00:00:00.000' AS DateTime), N'PB014')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV018', N'79288114356', N'Lê Minh', N'Trí', N'Thu Ngân', N'Nam', N'924655433', N'quận 2, TP Hồ Chí Minh', CAST(N'1988-08-09T00:00:00.000' AS DateTime), N'PB011')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV019', N'79299110121', N'Đinh Quốc', N'Trung', N'Kho', N'Nam', N'924655439', N'quận 1, TP Hồ Chí Minh', CAST(N'1999-06-02T00:00:00.000' AS DateTime), N'PB018')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV020', N'79288220129', N'Vũ Quang', N'Vinh', N'Thu Ngân', N'Nam', N'924655442', N'quận 3, TP Hồ Chí Minh', CAST(N'1988-08-08T00:00:00.000' AS DateTime), N'PB019')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV021', N'79299000356', N'Lê Thanh', N'Sang', N'Bảo vệ', N'Nam', N'924655111', N'quận 2, TP Hồ Chí Minh', CAST(N'1999-06-10T00:00:00.000' AS DateTime), N'PB013')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV022', N'79299100121', N'Trần Đại', N'Nhạc', N'Vệ sinh', N'Nam', N'924655222', N'quận 3, TP Hồ Chí Minh', CAST(N'1999-08-11T00:00:00.000' AS DateTime), N'PB016')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV023', N'79299190189', N'Nguyễn Mỹ', N'Linh', N'Bán hàng', N'Nữ ', N'924655333', N'quận 1, TP Hồ Chí Minh', CAST(N'1999-06-12T00:00:00.000' AS DateTime), N'PB017')
GO
INSERT [dbo].[Nhân viên] ([Mã nhân viên], [CCCD], [Họ], [Tên], [Loại nhân viên], [Giới tính], [SĐT], [Địa chỉ], [Ngày sinh], [Mã phòng]) VALUES (N'NV024', N'79299690139', N'Trần Ngọc', N'Hiền', N'Trưng bày hàng hóa', N'Nữ ', N'924655444', N'quận 4, TP Hồ Chí Minh', CAST(N'1999-06-11T00:00:00.000' AS DateTime), N'PB020')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'CN001', N'Đồ dùng cá nhân nhóm 1', 0, N'Các loại dao cạo cho nam và nữ', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'CN002', N'Đồ dùng cá nhân nhóm 2', 5, N'Các loại đồng hồ nam nữ', N'CN003')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'DT001', N'Đồ điện tử nhóm 1', 0, N'Các máy giặt của nhiều thương hiệu', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'DT002', N'Đồ điện tử nhóm 2', 10, N'Các máy tính laptop của nhiều thương hiệu', N'CN003')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'GD001', N'Đồ gia dụng nhóm 1', 10, N'Các nồi cơm điện của nhiều thương hiệu', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'GD002', N'Đồ gia dụng nhóm 2', 10, N'Các máy hút bụi của nhiều thương hiệu', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'GD003', N'Đồ gia dụng nhóm 3', 10, N'Các bàn chải đánh răng điện tử của nhiều thương hiệu', N'CN003')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'MP001', N'Mỹ phẩm nhóm 1', 10, N'Các loại phấn trang điểm', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'MP002', N'Mỹ phẩm nhóm 2', 10, N'Các loại kem trang điểm', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'TP001', N'Thực phẩm nhóm 1', 10, N'Các loại trứng', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'TP002', N'Thực phẩm nhóm 2', 10, N'Các loại xúc xích', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'TP003', N'Thực phẩm nhóm 3', 10, N'Các loại rau củ', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'VP001', N'Văn phòng phẩm nhóm 1', 10, N'Các loại bút dùng để viết', N'CN001')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'VP002', N'Văn phòng phẩm nhóm 2', 10, N'Các loại giấy và phụ kiện đi kèm', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'YT001', N'Vật dụng y tế nhóm 1', 0, N'Các thiết bị sơ cứu khẩn cấp', N'CN002')
GO
INSERT [dbo].[Nhóm hàng] ([Mã nhóm], [Tên nhóm], [Mức thuế VAT (%)], [Mô tả], [Mã chi nhánh]) VALUES (N'YT002', N'Vật dụng y tế nhóm 2', 0, N'Các loại thuốc chữa trị', N'CN003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB001', N'Bán hàng', 6500000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB002', N'Kho', 6000000, 2, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB003', N'Thu ngân', 6500000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB004', N'Trưng bày hàng hóa', 5500000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB005', N'Bảo vệ', 5900000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB006', N'Hỗ trợ khách hàng', 6000000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB007', N'Quản lý', 8000000, 2, 300000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB008', N'Vệ sinh', 5800000, 3, 200000, 631700, N'CN001', N'NV001')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB009', N'Bán hàng', 6500000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB010', N'Kho', 6000000, 2, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB011', N'Thu ngân', 6500000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB012', N'Trưng bày hàng hóa', 5500000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB013', N'Bảo vệ', 5900000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB014', N'Hỗ trợ khách hàng', 6000000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB015', N'Quản lý', 8000000, 2, 300000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB016', N'Vệ sinh', 5800000, 3, 200000, 631700, N'CN002', N'NV002')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB017', N'Bán hàng', 6500000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB018', N'Kho', 6000000, 2, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB019', N'Thu ngân', 6500000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB020', N'Trưng bày hàng hóa', 5500000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB021', N'Bảo vệ', 5900000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB022', N'Hỗ trợ khách hàng', 6000000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB023', N'Quản lý', 8000000, 2, 300000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Phòng] ([Mã phòng], [Tên phòng], [Mức lương], [Ngày nghỉ phép], [Trợ cấp], [Bảo hiểm], [Mã chi nhánh], [Mã nhân viên quản lí]) VALUES (N'PB024', N'Vệ sinh', 5800000, 3, 200000, 631700, N'CN003', N'NV003')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV001', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5000000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV001', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5000000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV001', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5000000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV002', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 8000000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV002', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 8000000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV002', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 8000000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV003', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6000000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV003', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6000000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV003', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6000000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV004', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7500000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV004', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7500000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV004', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7500000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV005', CAST(N'2022-10-20T00:00:00.000' AS DateTime), 50000000, N'EIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV006', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 70000000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN001', N'CV006', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 70000000, N'PIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV007', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5890000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV007', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5890000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV007', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5890000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV008', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 7785000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV008', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 7785000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV008', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 7785000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV009', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6480000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV009', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6480000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV009', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 6480000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV010', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7780000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV010', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7780000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV010', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 7780000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV011', CAST(N'2022-10-20T00:00:00.000' AS DateTime), 88980000, N'EIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV012', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 70800000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN002', N'CV012', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 70800000, N'PIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV013', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5280000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV013', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5280000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV013', CAST(N'2022-10-10T00:00:00.000' AS DateTime), 5280000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV014', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 4800000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV014', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 4800000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV014', CAST(N'2022-10-11T00:00:00.000' AS DateTime), 4800000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV015', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 8100000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV015', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 8100000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV015', CAST(N'2022-10-12T00:00:00.000' AS DateTime), 8100000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV016', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 5120000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV016', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 5120000, N'SIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV016', CAST(N'2022-10-14T00:00:00.000' AS DateTime), 5120000, N'VAT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV017', CAST(N'2022-10-20T00:00:00.000' AS DateTime), 68000000, N'EIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV018', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 72000000, N'CIT')
GO
INSERT [dbo].[Tài chính] ([Mã chi nhánh], [Mã công việc], [Mốc thời gian], [Số tiền], [Thuế]) VALUES (N'CN003', N'CV018', CAST(N'2022-10-28T00:00:00.000' AS DateTime), 72000000, N'PIT')
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK001', N'CN001', N'T001', 150, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK002', N'CN001', N'T002', 85, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK003', N'CN001', N'T003', 70, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK004', N'CN001', N'X001', 60, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK005', N'CN001', N'X002', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK006', N'CN001', N'X003', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK007', N'CN001', N'X004', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK008', N'CN001', N'R001', 100, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK009', N'CN001', N'R002', 70, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK010', N'CN001', N'C001', 60, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK011', N'CN001', N'P001', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK012', N'CN001', N'P002', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK013', N'CN001', N'P003', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK014', N'CN001', N'K001', 40, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK015', N'CN001', N'K002', 20, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK016', N'CN001', N'K003', 30, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK017', N'CN001', N'K004', 180, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK018', N'CN001', N'N001', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK019', N'CN001', N'N002', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK020', N'CN001', N'N003', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK021', N'CN001', N'H001', 40, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK022', N'CN001', N'H002', 20, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK023', N'CN001', N'H003', 30, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK024', N'CN001', N'B001', 10, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK025', N'CN001', N'B002', 150, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK026', N'CN001', N'B003', 85, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK027', N'CN001', N'D001', 70, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK028', N'CN001', N'D002', 60, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK029', N'CN001', N'W001', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK030', N'CN001', N'W002', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK031', N'CN001', N'G001', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK032', N'CN001', N'G002', 100, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK033', N'CN001', N'G003', 70, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK034', N'CN001', N'L001', 60, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK035', N'CN001', N'L002', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK036', N'CN001', N'L003', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK037', N'CN001', N'L004', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK038', N'CN001', N'V001', 40, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK039', N'CN001', N'V002', 20, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK040', N'CN001', N'V003', 30, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK041', N'CN001', N'V004', 180, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK042', N'CN001', N'V005', 50, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK043', N'CN001', N'V006', 90, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK044', N'CN001', N'V007', 75, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK045', N'CN001', N'V008', 40, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK046', N'CN001', N'Y001', 20, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK047', N'CN001', N'Y002', 30, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK048', N'CN001', N'Y003', 10, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK049', N'CN001', N'Y004', 120, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK050', N'CN001', N'Y005', 25, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK051', N'CN002', N'T001', 75, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK052', N'CN002', N'T002', 100, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK053', N'CN002', N'T003', 70, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK054', N'CN002', N'X001', 60, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK055', N'CN002', N'X002', 50, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK056', N'CN002', N'X003', 90, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK057', N'CN002', N'X004', 75, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK058', N'CN002', N'R001', 40, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK059', N'CN002', N'R002', 20, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK060', N'CN002', N'C001', 30, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK061', N'CN002', N'P001', 180, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK062', N'CN002', N'P002', 50, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK063', N'CN002', N'P003', 90, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK064', N'CN002', N'K001', 75, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK065', N'CN002', N'K002', 40, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK066', N'CN002', N'K003', 20, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK067', N'CN002', N'K004', 30, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK068', N'CN002', N'N001', 10, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK069', N'CN002', N'N002', 120, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK070', N'CN002', N'N003', 25, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK071', N'CN002', N'H001', 30, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK072', N'CN002', N'H002', 180, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK073', N'CN002', N'H003', 50, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK074', N'CN002', N'B001', 90, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK075', N'CN002', N'B002', 75, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK076', N'CN002', N'B003', 40, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK077', N'CN002', N'D001', 20, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK078', N'CN002', N'D002', 30, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK079', N'CN002', N'W001', 10, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK080', N'CN002', N'W002', 120, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK081', N'CN002', N'G001', 25, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK082', N'CN002', N'G002', 104, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK083', N'CN002', N'G003', 74, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK084', N'CN002', N'L001', 52, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK085', N'CN002', N'L002', 27, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK086', N'CN002', N'L003', 34, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK087', N'CN002', N'L004', 84, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK088', N'CN002', N'V001', 74, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK089', N'CN002', N'V002', 52, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK090', N'CN002', N'V003', 27, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK091', N'CN002', N'V004', 34, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK092', N'CN002', N'V005', 60, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK093', N'CN002', N'V006', 50, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK094', N'CN002', N'V007', 90, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK095', N'CN002', N'V008', 75, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK096', N'CN002', N'Y001', 40, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK097', N'CN002', N'Y002', 20, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK098', N'CN002', N'Y003', 30, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK099', N'CN002', N'Y004', 100, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK100', N'CN002', N'Y005', 29, CAST(N'2022-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK101', N'CN003', N'T001', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK102', N'CN003', N'T002', 10, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK103', N'CN003', N'T003', 120, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK104', N'CN003', N'X001', 25, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK105', N'CN003', N'X002', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK106', N'CN003', N'X003', 180, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK107', N'CN003', N'X004', 50, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK108', N'CN003', N'R001', 90, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK109', N'CN003', N'R002', 75, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK110', N'CN003', N'C001', 40, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK111', N'CN003', N'P001', 20, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK112', N'CN003', N'P002', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK113', N'CN003', N'P003', 10, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK114', N'CN003', N'K001', 120, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK115', N'CN003', N'K002', 25, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK116', N'CN003', N'K003', 104, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK117', N'CN003', N'K004', 74, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK118', N'CN003', N'N001', 52, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK119', N'CN003', N'N002', 27, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK120', N'CN003', N'N003', 34, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK121', N'CN003', N'H001', 84, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK122', N'CN003', N'H002', 74, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK123', N'CN003', N'H003', 52, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK124', N'CN003', N'B001', 27, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK125', N'CN003', N'B002', 48, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK126', N'CN003', N'B003', 69, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK127', N'CN003', N'D001', 50, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK128', N'CN003', N'D002', 90, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK129', N'CN003', N'W001', 75, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK130', N'CN003', N'W002', 40, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK131', N'CN003', N'G001', 20, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK132', N'CN003', N'G002', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK133', N'CN003', N'G003', 10, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK134', N'CN003', N'L001', 34, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK135', N'CN003', N'L002', 60, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK136', N'CN003', N'L003', 50, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK137', N'CN003', N'L004', 90, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK138', N'CN003', N'V001', 75, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK139', N'CN003', N'V002', 40, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK140', N'CN003', N'V003', 20, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK141', N'CN003', N'V004', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK142', N'CN003', N'V005', 50, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK143', N'CN003', N'V006', 90, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK144', N'CN003', N'V007', 75, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK145', N'CN003', N'V008', 40, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK146', N'CN003', N'Y001', 20, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK147', N'CN003', N'Y002', 30, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK148', N'CN003', N'Y003', 10, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK149', N'CN003', N'Y004', 50, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê] ([Mã thống kê], [Mã chi nhánh], [Mã sản phẩm], [Số lượng], [Thời gian]) VALUES (N'TK150', N'CN003', N'Y005', 60, CAST(N'2022-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK001', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK002', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK003', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK004', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK005', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK006', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK007', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK008', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK009', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK010', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK011', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK012', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK013', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK014', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK015', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK016', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK017', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK018', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK019', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK020', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK021', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK022', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK023', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK024', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK025', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK026', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK027', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK028', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK029', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK030', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK031', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK032', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK033', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK034', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK035', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK036', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK037', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK038', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK039', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK040', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK041', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK042', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK043', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK044', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK045', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK046', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK047', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK048', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK049', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK050', N'CN001')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK051', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK052', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK053', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK054', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK055', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK056', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK057', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK058', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK059', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK060', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK061', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK062', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK063', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK064', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK065', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK066', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK067', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK068', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK069', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK070', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK071', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK072', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK073', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK074', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK075', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK076', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK077', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK078', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK079', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK080', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK081', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK082', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK083', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK084', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK085', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK086', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK087', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK088', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK089', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK090', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK091', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK092', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK093', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK094', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK095', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK096', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK097', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK098', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK099', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK100', N'CN002')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK101', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK102', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK103', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK104', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK105', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK106', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK107', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK108', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK109', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK110', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK111', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK112', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK113', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK114', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK115', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK116', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK117', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK118', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK119', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK120', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK121', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK122', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK123', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK124', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK125', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK126', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK127', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK128', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK129', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK130', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK131', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK132', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK133', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK134', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK135', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK136', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK137', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK138', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK139', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK140', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK141', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK142', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK143', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK144', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK145', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK146', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK147', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK148', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK149', N'CN003')
GO
INSERT [dbo].[Thống kê x Chi nhánh] ([Mã thống kê], [Mã chi nhánh]) VALUES (N'TK150', N'CN003')
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0001', N'T001', 20, N'KH0001', 5)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0002', N'T002', 15, N'KH0002', 5)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0003', N'T003', 30, N'KH0003', 3)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0004', N'X001', 10, N'KH0004', 8)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0005', N'X002', 5, N'KH0005', 8)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0006', N'X003', 10, N'KH0006', 8)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0007', N'X004', 20, N'KH0007', 10)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0008', N'R001', 2, N'KH0008', 7)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0009', N'R002', 3, N'KH0009', 7)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0010', N'C001', 5, N'KH0010', 8)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0011', N'P001', 3, N'KH0011', 15)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0012', N'K002', 5, N'KH0012', 15)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0013', N'Y003', 20, N'KH0013', 5)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0014', N'Y005', 10, N'KH0014', 10)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0015', N'V001', 20, N'KH0015', 3)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0016', N'L001', 2, N'KH0016', 100)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0017', N'B001', 3, N'KH0017', 70)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0018', N'G002', 1, N'KH0018', 130)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0019', N'V008', 4, N'KH0019', 7)
GO
INSERT [dbo].[Thông tin hóa đơn] ([Mã hóa đơn], [Mã hàng], [Số lượng hàng], [Mã khách hàng], [Số điểm nhận]) VALUES (N'HĐ0020', N'Y001', 50, N'KH0020', 3)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Khách hà__A955A0AA8C5B313E]    Script Date: 3/16/2023 1:34:11 PM ******/
ALTER TABLE [dbo].[Khách hàng] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Nhân viê__A955A0AA9D64072B]    Script Date: 3/16/2023 1:34:11 PM ******/
ALTER TABLE [dbo].[Nhân viên] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hàng hóa]  WITH CHECK ADD  CONSTRAINT [FK_HH_KH] FOREIGN KEY([Mã kho hàng])
REFERENCES [dbo].[Kho hàng] ([Mã kho])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Hàng hóa] CHECK CONSTRAINT [FK_HH_KH]
GO
ALTER TABLE [dbo].[Hàng hóa]  WITH CHECK ADD  CONSTRAINT [FK_HH_LH] FOREIGN KEY([Mã lô hàng])
REFERENCES [dbo].[Lô hàng] ([Mã lô hàng])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Hàng hóa] CHECK CONSTRAINT [FK_HH_LH]
GO
ALTER TABLE [dbo].[Hóa đơn]  WITH CHECK ADD  CONSTRAINT [FK_HĐ_T] FOREIGN KEY([Thuế])
REFERENCES [dbo].[Bảng thuế] ([Mã thuế])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Hóa đơn] CHECK CONSTRAINT [FK_HĐ_T]
GO
ALTER TABLE [dbo].[Kệ]  WITH CHECK ADD  CONSTRAINT [FK_K_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Kệ] CHECK CONSTRAINT [FK_K_CN]
GO
ALTER TABLE [dbo].[Khách hàng]  WITH CHECK ADD  CONSTRAINT [FK_KH_LT] FOREIGN KEY([Loại thẻ])
REFERENCES [dbo].[Loại thẻ] ([Mã thẻ])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Khách hàng] CHECK CONSTRAINT [FK_KH_LT]
GO
ALTER TABLE [dbo].[Khách hàng x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_KHCN_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Khách hàng x Chi nhánh] CHECK CONSTRAINT [FK_KHCN_CN]
GO
ALTER TABLE [dbo].[Khách hàng x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_KHCN_KH] FOREIGN KEY([Mã khách hàng])
REFERENCES [dbo].[Khách hàng] ([Mã khách hàng])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Khách hàng x Chi nhánh] CHECK CONSTRAINT [FK_KHCN_KH]
GO
ALTER TABLE [dbo].[Khách hàng x Mặt hàng ưu thích]  WITH CHECK ADD  CONSTRAINT [FK_KHMH_KH] FOREIGN KEY([Mã khách hàng])
REFERENCES [dbo].[Khách hàng] ([Mã khách hàng])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Khách hàng x Mặt hàng ưu thích] CHECK CONSTRAINT [FK_KHMH_KH]
GO
ALTER TABLE [dbo].[Khách hàng x Mặt hàng ưu thích]  WITH CHECK ADD  CONSTRAINT [FK_KHMH_MH] FOREIGN KEY([Mã sản phẩm])
REFERENCES [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Khách hàng x Mặt hàng ưu thích] CHECK CONSTRAINT [FK_KHMH_MH]
GO
ALTER TABLE [dbo].[Kho hàng]  WITH CHECK ADD  CONSTRAINT [FK_KH_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Kho hàng] CHECK CONSTRAINT [FK_KH_CN]
GO
ALTER TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_MHCN_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh] CHECK CONSTRAINT [FK_MHCN_CN]
GO
ALTER TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_MHCN_MH] FOREIGN KEY([Mã sản phẩm])
REFERENCES [dbo].[Mặt hàng ưu thích] ([Mã sản phẩm])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Mặt hàng ưu thích x Chi nhánh] CHECK CONSTRAINT [FK_MHCN_MH]
GO
ALTER TABLE [dbo].[Nhân viên]  WITH CHECK ADD  CONSTRAINT [FK_P_NV] FOREIGN KEY([Mã phòng])
REFERENCES [dbo].[Phòng] ([Mã phòng])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Nhân viên] CHECK CONSTRAINT [FK_P_NV]
GO
ALTER TABLE [dbo].[Nhóm hàng]  WITH CHECK ADD  CONSTRAINT [FK_NH_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Nhóm hàng] CHECK CONSTRAINT [FK_NH_CN]
GO
ALTER TABLE [dbo].[Phòng]  WITH CHECK ADD  CONSTRAINT [FK_NV1_P] FOREIGN KEY([Mã nhân viên quản lí])
REFERENCES [dbo].[Nhân viên] ([Mã nhân viên])
GO
ALTER TABLE [dbo].[Phòng] CHECK CONSTRAINT [FK_NV1_P]
GO
ALTER TABLE [dbo].[Phòng]  WITH CHECK ADD  CONSTRAINT [FK_P_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Phòng] CHECK CONSTRAINT [FK_P_CN]
GO
ALTER TABLE [dbo].[Tài chính]  WITH CHECK ADD  CONSTRAINT [FK_TC_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tài chính] CHECK CONSTRAINT [FK_TC_CN]
GO
ALTER TABLE [dbo].[Tài chính]  WITH CHECK ADD  CONSTRAINT [FK_TC_HĐ] FOREIGN KEY([Mã công việc])
REFERENCES [dbo].[Hoạt động] ([Mã hoạt động])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tài chính] CHECK CONSTRAINT [FK_TC_HĐ]
GO
ALTER TABLE [dbo].[Tài chính]  WITH CHECK ADD  CONSTRAINT [FK_TC_T] FOREIGN KEY([Thuế])
REFERENCES [dbo].[Bảng thuế] ([Mã thuế])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tài chính] CHECK CONSTRAINT [FK_TC_T]
GO
ALTER TABLE [dbo].[Thống kê x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_TKCN_CN] FOREIGN KEY([Mã chi nhánh])
REFERENCES [dbo].[Chi nhánh] ([Mã chi nhánh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thống kê x Chi nhánh] CHECK CONSTRAINT [FK_TKCN_CN]
GO
ALTER TABLE [dbo].[Thống kê x Chi nhánh]  WITH CHECK ADD  CONSTRAINT [FK_TKCN_TK] FOREIGN KEY([Mã thống kê])
REFERENCES [dbo].[Thống kê] ([Mã thống kê])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thống kê x Chi nhánh] CHECK CONSTRAINT [FK_TKCN_TK]
GO
ALTER TABLE [dbo].[Thông tin hóa đơn]  WITH CHECK ADD  CONSTRAINT [FK_TTHĐ_HB] FOREIGN KEY([Mã hàng])
REFERENCES [dbo].[Hàng bán] ([Mã hàng])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thông tin hóa đơn] CHECK CONSTRAINT [FK_TTHĐ_HB]
GO
ALTER TABLE [dbo].[Thông tin hóa đơn]  WITH CHECK ADD  CONSTRAINT [FK_TTHĐ_HĐ] FOREIGN KEY([Mã hóa đơn])
REFERENCES [dbo].[Hóa đơn] ([Mã hóa đơn])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thông tin hóa đơn] CHECK CONSTRAINT [FK_TTHĐ_HĐ]
GO
USE [master]
GO
ALTER DATABASE [QLChuoiSieuThiMini] SET  READ_WRITE 
GO
