USE [master]
GO
/****** Object:  Database [TRAVEL_PTUD]    Script Date: 12/18/2012 22:55:17 ******/
CREATE DATABASE [TRAVEL_PTUD] ON  PRIMARY 
( NAME = N'TRAVEL_PTUD', FILENAME = N'D:\soft setup\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TRAVEL_PTUD.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TRAVEL_PTUD_log', FILENAME = N'D:\soft setup\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TRAVEL_PTUD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TRAVEL_PTUD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRAVEL_PTUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRAVEL_PTUD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET ARITHABORT OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TRAVEL_PTUD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TRAVEL_PTUD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TRAVEL_PTUD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET  DISABLE_BROKER
GO
ALTER DATABASE [TRAVEL_PTUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TRAVEL_PTUD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TRAVEL_PTUD] SET  READ_WRITE
GO
ALTER DATABASE [TRAVEL_PTUD] SET RECOVERY FULL
GO
ALTER DATABASE [TRAVEL_PTUD] SET  MULTI_USER
GO
ALTER DATABASE [TRAVEL_PTUD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TRAVEL_PTUD] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TRAVEL_PTUD', N'ON'
GO
USE [TRAVEL_PTUD]
GO
/****** Object:  Table [dbo].[TOUR_DICHVU]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOUR_DICHVU](
	[MATOUR] [int] NOT NULL,
	[MADICHVU] [int] NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOUR_DIADIEM]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOUR_DIADIEM](
	[MATOUR] [int] NOT NULL,
	[MADIADIEM] [int] NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOUR]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOUR](
	[ID] [int] NOT NULL,
	[TENTOUR] [nvarchar](256) NOT NULL,
	[LOAITOUR] [int] NOT NULL,
	[DIEMBATDAU] [int] NOT NULL,
	[DIEMKETTHUC] [int] NULL,
	[NGAYBATDAU] [datetime] NOT NULL,
	[NGAYKETTHUC] [datetime] NOT NULL,
	[BATDAUDANGKY] [datetime] NOT NULL,
	[KETTHUCDANGKY] [datetime] NOT NULL,
	[MOTA] [text] NULL,
	[SOVENGUOILON] [int] NOT NULL,
	[GIANGUOILON] [float] NOT NULL,
	[SOVETREEM] [int] NOT NULL,
	[GIATREEM] [float] NOT NULL,
	[SOVETRENHO] [int] NOT NULL,
	[GIATRENHO] [float] NOT NULL,
	[SOVEEMBE] [int] NOT NULL,
	[GIAEMBE] [float] NOT NULL,
	[GIADAILY] [float] NOT NULL,
	[DONVITIEN] [nchar](3) NOT NULL,
	[VANCHUYEN] [bit] NOT NULL,
	[KHACHSAN] [bit] NOT NULL,
	[MAYBAY] [bit] NOT NULL,
	[TRANGTHAI] [nvarchar](128) NOT NULL,
	[HOT] [nchar](1) NOT NULL,
	[MOI] [nchar](1) NOT NULL,
	[HINHANH] [varchar](256) NULL,
	[VENGUOILONCONLAI] [int] NOT NULL,
	[VETREEMCONLAI] [int] NOT NULL,
	[VETRENHOCONLAI] [int] NOT NULL,
	[VEEMBECONLAI] [int] NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TINH]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH](
	[ID] [int] NOT NULL,
	[TENTINH] [nvarchar](128) NULL,
	[MAQUOCGIA] [int] NOT NULL,
	[TPLON] [bit] NULL,
	[DELSTAMP] [datetime] NOT NULL,
 CONSTRAINT [PK_TINH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN_TOUR]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN_TOUR](
	[ID] [int] NOT NULL,
	[MATV] [int] NOT NULL,
	[MATOUR] [int] NOT NULL,
	[SOTIEN] [float] NOT NULL,
	[TIENCOC] [float] NOT NULL,
	[THANHTOAN] [float] NOT NULL,
	[DONVITIEN] [nchar](3) NOT NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_THANHVIEN_TOUR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[ID] [int] NOT NULL,
	[Ten] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOANNGANHANG]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOANNGANHANG](
	[ID] [int] NOT NULL,
	[MATK] [nchar](10) NOT NULL,
	[TENNGANHANG] [varchar](128) NOT NULL,
	[MAKH] [int] NULL,
	[MANV] [int] NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_TAIKHOANNGANHANG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOANDANGNHAP]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANDANGNHAP](
	[ID] [int] NOT NULL,
	[TENDANGNHAP] [nchar](32) NOT NULL,
	[PASSWORD] [nchar](256) NOT NULL,
	[MAKH] [int] NULL,
	[MATV] [int] NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_TAIKHOANDANGNHAP_KH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUOCGIA]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUOCGIA](
	[ID] [int] NOT NULL,
	[TENQUOCGIA] [nvarchar](128) NULL,
	[DELSTAMP] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID] [int] NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[GIOITINH] [nchar](1) NOT NULL,
	[DIACHI] [nvarchar](256) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[NOISINH] [nvarchar](50) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[SODIENTHOAI] [nchar](15) NOT NULL,
	[EMAIL] [varchar](256) NULL,
	[ROLE] [int] NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAITOUR]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITOUR](
	[ID] [int] NOT NULL,
	[TENLOAITOUR] [nvarchar](128) NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN](
	[ID] [int] NOT NULL,
	[TENLOAI] [nvarchar](256) NOT NULL,
	[MUCUUDAI1] [nvarchar](256) NULL,
	[MUCUUDAI2] [nvarchar](256) NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_LOAITHANHVIEN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LICHTRINH]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHTRINH](
	[ID] [int] NOT NULL,
	[MATOUR] [int] NOT NULL,
	[NGAY] [int] NOT NULL,
	[BANNGAY] [text] NOT NULL,
	[BANDEM] [text] NOT NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_LICHTRINH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHSAN]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHSAN](
	[ID] [int] NOT NULL,
	[TEN] [nvarchar](256) NOT NULL,
	[MOTA] [text] NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_KHACHSAN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDATTOUR_KH]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDATTOUR_KH](
	[ID] [int] NOT NULL,
	[SOVENGUOILON] [int] NOT NULL,
	[GIATIENNGUOILON] [float] NULL,
	[SOVETREEM] [int] NOT NULL,
	[GIATIENTREEM] [float] NULL,
	[SOVETRENHO] [int] NOT NULL,
	[GIATIENTRENHO] [float] NULL,
	[SOVEEMBE] [int] NOT NULL,
	[GIATIENEMBE] [float] NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_CHITIETDATTOUR_KH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANGTHUONG]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANGTHUONG](
	[ID] [int] NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[GIOITINH] [nchar](1) NOT NULL,
	[DIACHI] [nvarchar](256) NOT NULL,
	[NGAYSINH] [date] NULL,
	[NOISINH] [nvarchar](50) NULL,
	[CMND] [nchar](10) NOT NULL,
	[SODIENTHOAI] [nchar](15) NOT NULL,
	[EMAIL] [varchar](256) NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_KHACHHANGTHUONG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [CMND_KHACHHANGTHUONG] UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANGTHANHVIEN]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANGTHANHVIEN](
	[ID] [int] NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[GIOITINH] [nchar](1) NOT NULL,
	[DIACHI] [nvarchar](256) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[NOISINH] [nvarchar](50) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[SODIENTHOAI] [nchar](15) NOT NULL,
	[EMAIL] [varchar](256) NULL,
	[NGAYDANGKY] [datetime] NULL,
	[DIEMTICHLUY] [int] NULL,
	[LOAITHANHVIEN] [int] NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[ID] [int] NOT NULL,
	[MOTA] [text] NOT NULL,
	[NHACUNGCAP] [int] NOT NULL,
	[LOAIDICHVU] [int] NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIADIEM]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIADIEM](
	[ID] [int] NOT NULL,
	[TENDIADIEM] [nvarchar](128) NOT NULL,
	[TINH] [int] NOT NULL,
	[DELSTAMP] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDATTOUR_TV]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDATTOUR_TV](
	[ID] [int] NOT NULL,
	[SOVENGUOILON] [int] NOT NULL,
	[GIATIENNGUOILON] [float] NOT NULL,
	[SOVETREEM] [int] NOT NULL,
	[GIATIENTREEM] [float] NOT NULL,
	[SOVETRENHO] [int] NOT NULL,
	[GIATIENTRENHO] [float] NOT NULL,
	[SOVEEMBE] [int] NOT NULL,
	[GIATIENEMBE] [float] NOT NULL,
	[DONVIETIEN] [nchar](3) NOT NULL,
	[DELSTAMP] [datetime] NULL,
	[CREATESTAMP] [datetime] NOT NULL,
	[CREATEUSER] [varchar](32) NOT NULL,
	[UPDATESTAMP] [datetime] NOT NULL,
	[UPDATEUSER] [varchar](32) NOT NULL,
 CONSTRAINT [PK_CHITIETDATTOUR_TV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG_TOUR]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG_TOUR](
	[ID] [int] NOT NULL,
	[MAKH] [int] NOT NULL,
	[MATOUR] [int] NOT NULL,
	[SOTIEN] [float] NULL,
	[TIENCOC] [float] NULL,
	[THANHTOAN] [float] NULL,
	[DONVITIEN] [nchar](3) NULL,
	[DELSTAMP] [datetime] NULL,
 CONSTRAINT [PK_KHACHHANG_TOUR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANH]    Script Date: 12/18/2012 22:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HINHANH](
	[ID] [int] NOT NULL,
	[LINK] [varbinary](256) NOT NULL,
	[DIADIEM] [int] NULL,
	[TOUR] [int] NULL,
	[MOTA] [text] NULL,
	[DELSTAMP] [int] NULL,
 CONSTRAINT [PK_HINHANH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_TOUR_SOVETRENHO_CL]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_TOUR_SOVETRENHO_CL]
(
	@pnID INT
)
RETURNS INT
AS
BEGIN
	-- return ve so ve tre nho con lai
	DECLARE @nSOVE INT;
	
	-- tinh toan so ve tre nho
	SELECT @nSOVE = ISNULL(SUM(t.SOVETRENHO), 0) - (ISNULL(SUM(c1.SOVETRENHO), 0) 
									  + ISNULL(SUM(c2.SOVETRENHO), 0))
	  FROM TOUR t
	  LEFT OUTER JOIN KHACHHANG_TOUR k ON (t.ID = k.MATOUR AND t.ID = @pnID)
	  LEFT OUTER JOIN CHITIETDATTOUR_KH c1 ON (c1.ID = t.ID)
	  LEFT OUTER JOIN THANHVIEN_TOUR tv ON (t.ID = tv.MATOUR)
	  LEFT OUTER JOIN CHITIETDATTOUR_TV c2 ON (c2.ID = tv.ID)
	 WHERE t.DELSTAMP IS NULL
	   AND k.DELSTAMP IS NULL
	   AND tv.DELSTAMP IS NULL;
	
	RETURN @nSOVE;

END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_TOUR_SOVETREEM_CL]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_TOUR_SOVETREEM_CL]
(
	@pnID INT
)
RETURNS INT
AS
BEGIN
	-- return ve so ve tre em con lai
	DECLARE @nSOVE INT;
	
	-- tinh toan so ve tre em
	SELECT @nSOVE = ISNULL(SUM(t.SOVETREEM), 0) - (ISNULL(SUM(c1.SOVETREEM), 0) 
									  + ISNULL(SUM(c2.SOVETREEM), 0))
	  FROM TOUR t
	  LEFT OUTER JOIN KHACHHANG_TOUR k ON (t.ID = k.MATOUR AND t.ID = @pnID)
	  LEFT OUTER JOIN CHITIETDATTOUR_KH c1 ON (c1.ID = t.ID)
	  LEFT OUTER JOIN THANHVIEN_TOUR tv ON (t.ID = tv.MATOUR)
	  LEFT OUTER JOIN CHITIETDATTOUR_TV c2 ON (c2.ID = tv.ID)
	 WHERE t.DELSTAMP IS NULL
	   AND k.DELSTAMP IS NULL
	   AND tv.DELSTAMP IS NULL;
	
	RETURN @nSOVE;

END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_TOUR_SOVENGUOILON_CL]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_TOUR_SOVENGUOILON_CL]
(
	@pnID INT
)
RETURNS INT
AS
BEGIN
	-- return ve so ve nguoi lon con lai
	DECLARE @nSOVE INT;
	
	-- tinh toan so ve nguoi lon
	SELECT @nSOVE = ISNULL(SUM(t.SOVENGUOILON), 0) - (ISNULL(SUM(c1.SOVENGUOILON), 0) 
									  + ISNULL(SUM(c2.SOVENGUOILON), 0))
	  FROM TOUR t
	  LEFT OUTER JOIN KHACHHANG_TOUR k ON (t.ID = k.MATOUR AND t.ID = @pnID)
	  LEFT OUTER JOIN CHITIETDATTOUR_KH c1 ON (c1.ID = t.ID)
	  LEFT OUTER JOIN THANHVIEN_TOUR tv ON (t.ID = tv.MATOUR)
	  LEFT OUTER JOIN CHITIETDATTOUR_TV c2 ON (c2.ID = tv.ID)
	 WHERE t.DELSTAMP IS NULL
	   AND k.DELSTAMP IS NULL
	   AND tv.DELSTAMP IS NULL;
	
	RETURN @nSOVE;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_TOUR_SOVEEMBE_CL]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_TOUR_SOVEEMBE_CL]
(
	@pnID INT
)
RETURNS INT
AS
BEGIN
	-- return ve so ve em be con lai
	DECLARE @nSOVE INT;
	
	-- tinh toan so ve em be
	SELECT @nSOVE = ISNULL(SUM(t.SOVEEMBE), 0) - (ISNULL(SUM(c1.SOVEEMBE), 0) 
									  + ISNULL(SUM(c2.SOVEEMBE), 0))
	  FROM TOUR t
	  LEFT OUTER JOIN KHACHHANG_TOUR k ON (t.ID = k.MATOUR AND t.ID = @pnID)
	  LEFT OUTER JOIN CHITIETDATTOUR_KH c1 ON (c1.ID = t.ID)
	  LEFT OUTER JOIN THANHVIEN_TOUR tv ON (t.ID = tv.MATOUR)
	  LEFT OUTER JOIN CHITIETDATTOUR_TV c2 ON (c2.ID = tv.ID)
	 WHERE t.DELSTAMP IS NULL
	   AND k.DELSTAMP IS NULL
	   AND tv.DELSTAMP IS NULL;
	
	RETURN @nSOVE;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_KHACHHANGTHUONG_CHECKCMND]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_KHACHHANGTHUONG_CHECKCMND]
(
	-- Add the parameters for the function here
	@pvCMND NCHAR(10)
)
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @nID INT;
	SELECT @nID = k.ID
	  FROM KHACHHANGTHUONG k 
	 WHERE k.CMND = @pvCMND
	   AND k.DELSTAMP IS NULL;
   
	RETURN ISNULL(@nID, 0);

END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_CHITIETDATTOUR_KH_TONGTIEN]    Script Date: 12/18/2012 22:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FUNC_CHITIETDATTOUR_KH_TONGTIEN]
(
	-- Add the parameters for the function here
	@pnID INT
)
RETURNS FLOAT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @nRES INT;

	-- Add the T-SQL statements to compute the return value here
	SELECT @nRES = (c.SOVENGUOILON * t.GIANGUOILON
				 + c.SOVETREEM * t.GIATREEM
				 + c.SOVEEMBE * t.GIAEMBE
				 + c.SOVETRENHO * t.GIATRENHO)
	  FROM CHITIETDATTOUR_KH c
	  JOIN KHACHHANG_TOUR k ON (c.ID = k.ID)
	  JOIN TOUR t ON (k.MATOUR = t.ID) -- lay ra gia tien cua tour
	 WHERE c.ID = @pnID
	   AND c.DELSTAMP IS NULL;

	-- Return the result of the function
	RETURN ISNULL(@nRES, 0);

END
GO
/****** Object:  StoredProcedure [dbo].[CHITIETDATTOUR_KH_INSERTTAB]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CHITIETDATTOUR_KH_INSERTTAB] 
	-- Add the parameters for the stored procedure here
    @pnRESULT INT OUTPUT
   ,@pnID INT
   ,@pnSOVENGUOILON INT
   ,@pnSOVETREEM INT
   ,@pnSOVETRENHO INT
   ,@pnSOVEEMBE INT
AS
BEGIN
	UPDATE k
	   SET k.SOVENGUOILON = @pnSOVENGUOILON
	      ,k.SOVETREEM = @pnSOVETREEM
	      ,k.SOVETRENHO = @pnSOVETRENHO
	      ,k.SOVEEMBE = @pnSOVEEMBE
	  FROM CHITIETDATTOUR_KH k
	 WHERE k.ID = @pnID
	   AND k.DELSTAMP IS NULL;
	
	IF @@ROWCOUNT = 0
	BEGIN
	    
	  BEGIN TRY
		INSERT INTO CHITIETDATTOUR_KH(ID, SOVENGUOILON, SOVETREEM, SOVETRENHO, SOVEEMBE)
	    VALUES (@pnID, @pnSOVENGUOILON, @pnSOVETREEM, @pnSOVETRENHO
			 ,@pnSOVEEMBE);
	  END TRY	 
	  
	  --	
	  BEGIN CATCH
	    IF @@ERROR = 0
	    BEGIN
	    
	      SET @pnRESULT = @pnID;
	      RETURN;
	    END
	    -- tra ve 0 neu gap loi
	    ELSE
	    BEGIN
	      SET @pnRESULT = 0;
	      RETURN;
	    END
	  END CATCH
	END
	
	-- cap nhat thanh cong, tra ve ID vua cap nhat
	ELSE
	BEGIN
	  SET @pnRESULT = @pnID;
	  RETURN;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[TOUR_LISTOFTAB_TEST]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TOUR_LISTOFTAB_TEST] 
	@pnLOAITOUR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TOUR;
END
GO
/****** Object:  StoredProcedure [dbo].[TOUR_LISTOFTAB_INFO]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TOUR_LISTOFTAB_INFO] 
	-- Add the parameters for the stored procedure here
	@pnID int
   ,@pnLOAITOUR int
   ,@pdNGAYBATDAU datetime
   ,@pdNGAYKETTHUC datetime
   ,@pnDIEMBATDAU int
   ,@pnOFFSET int -- dung de phan trang
   ,@pnLIMIT int -- dung de phan trang
   ,@pnSORT int -- cac tieu chi sap xep
   ,@pnDIRECT int-- huong sort: 1 la asc, 0 la desc
AS
BEGIN
	SET NOCOUNT ON;
	
	-- tim kiem cac tour theo cac tieu chi
	SELECT t.*
	FROM (
			SELECT t.*, bd.TENDIADIEM AS NOIBATDAU, kt.TENDIADIEM AS NOIKETTHUC
				  ,ROW_NUMBER() OVER(
		  ORDER BY CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 1 THEN t.NGAYBATDAU END END ASC -- theo ngay bat dau
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 2 THEN t.NGAYKETTHUC END END ASC -- theo ngay ket thuc 
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 3 THEN t.DIEMBATDAU END END ASC -- theo diem bat dau
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 4 THEN t.ID END END ASC -- theo ID
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 1 THEN t.NGAYBATDAU END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 2 THEN t.NGAYKETTHUC END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 3 THEN t.DIEMBATDAU END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 4 THEN t.ID END END DESC) AS ROWNUM
			  FROM TOUR t
			  JOIN DIADIEM bd ON (t.DIEMBATDAU = bd.ID)
			  JOIN DIADIEM kt ON (t.DIEMKETTHUC = kt.ID)
			 WHERE t.ID = CASE @pnID WHEN 0 THEN t.ID ELSE @pnID END
			   AND t.LOAITOUR = CASE @pnLOAITOUR WHEN 0 THEN t.LOAITOUR ELSE @pnLOAITOUR END
			   AND t.NGAYBATDAU = CASE ISNULL(@pdNGAYBATDAU, 0) WHEN 0 THEN t.NGAYBATDAU ELSE @pdNGAYBATDAU END
			   AND t.NGAYKETTHUC = CASE ISNULL(@pdNGAYKETTHUC, 0) WHEN 0 THEN t.NGAYKETTHUC ELSE @pdNGAYKETTHUC END
			   AND t.DIEMBATDAU = CASE @pnDIEMBATDAU WHEN 0 THEN t.DIEMBATDAU ELSE @pnDIEMBATDAU END
			   AND t.KETTHUCDANGKY <= CURRENT_TIMESTAMP -- chon ra nhung tour van con duoc dang ky
			   AND t.DELSTAMP IS NULL ) t
    WHERE t.ROWNUM BETWEEN @pnOFFSET AND @pnLIMIT;
END
GO
/****** Object:  StoredProcedure [dbo].[TOUR_LISTOFTAB]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TOUR_LISTOFTAB]
	-- Add the parameters for the stored procedure here
	@pnID int
   ,@pnLOAITOUR int
   ,@pdNGAYBATDAU datetime
   ,@pdNGAYKETTHUC datetime
   ,@pnDIEMBATDAU int
   ,@pnOFFSET int -- dung de phan trang
   ,@pnLIMIT int -- dung de phan trang
   ,@pnSORT int -- cac tieu chi sap xep
   ,@pnDIRECT int-- huong sort: 1 la asc, 0 la desc
AS
BEGIN
	SET NOCOUNT ON;
	
	-- tim kiem cac tour theo cac tieu chi
	SELECT t.*
	FROM (
			SELECT t.*, d.TENDIADIEM AS NOIBATDAU
				  ,ROW_NUMBER() OVER(
		  ORDER BY CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 1 THEN t.NGAYBATDAU END END ASC -- theo ngay bat dau
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 2 THEN t.NGAYKETTHUC END END ASC -- theo ngay ket thuc 
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 3 THEN t.DIEMBATDAU END END ASC -- theo diem bat dau
				  ,CASE @pnDIRECT WHEN 1 THEN CASE @pnSORT WHEN 4 THEN t.ID END END ASC -- theo ID
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 1 THEN t.NGAYBATDAU END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 2 THEN t.NGAYKETTHUC END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 3 THEN t.DIEMBATDAU END END DESC
				  ,CASE @pnDIRECT WHEN 0 THEN CASE @pnSORT WHEN 4 THEN t.ID END END DESC) AS ROWNUM
			  FROM TOUR t
			  JOIN DIADIEM d ON (t.DIEMBATDAU = d.ID)
			 WHERE t.ID = CASE @pnID WHEN 0 THEN t.ID ELSE @pnID END
			   AND t.LOAITOUR = CASE @pnLOAITOUR WHEN 0 THEN t.LOAITOUR ELSE @pnLOAITOUR END
			   AND t.NGAYBATDAU = CASE ISNULL(@pdNGAYBATDAU, 0) WHEN 0 THEN t.NGAYBATDAU ELSE @pdNGAYBATDAU END
			   AND t.NGAYKETTHUC = CASE ISNULL(@pdNGAYKETTHUC, 0) WHEN 0 THEN t.NGAYKETTHUC ELSE @pdNGAYKETTHUC END
			   AND t.DIEMBATDAU = CASE @pnDIEMBATDAU WHEN 0 THEN t.DIEMBATDAU ELSE @pnDIEMBATDAU END
			   AND t.KETTHUCDANGKY <= CURRENT_TIMESTAMP -- chon ra nhung tour van con duoc dang ky
			   AND t.DELSTAMP IS NULL ) t
    WHERE t.ROWNUM BETWEEN @pnOFFSET AND @pnLIMIT;
END
GO
/****** Object:  StoredProcedure [dbo].[TOUR_LICHTRINH]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TOUR_LICHTRINH]
	-- Add the parameters for the stored procedure here
	@pnMATOUR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT l.MATOUR, l.NGAY, l.BANNGAY, l.BANDEM
	  FROM LICHTRINH l
	 WHERE l.MATOUR = @pnMATOUR
	   AND l.DELSTAMP IS NULL;
END
GO
/****** Object:  StoredProcedure [dbo].[TOUR_DICHVU_LISTOFTAB]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TOUR_DICHVU_LISTOFTAB] 
	-- Add the parameters for the stored procedure here
	@pnMATOUR INT
AS
BEGIN
	-- lay ra thong tin cac dich vu cua mot tour
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT d.ID, d.MOTA
	  FROM TOUR_DICHVU t
	  JOIN DICHVU d ON (t.MADICHVU = d.ID)
	 WHERE t.MATOUR = CASE @pnMATOUR WHEN 0 THEN t.MATOUR ELSE @pnMATOUR END
	   AND t.DELSTAMP IS NULL;
END
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGTHUONG_INSERTTAB]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KHACHHANGTHUONG_INSERTTAB] 
	-- Add the parameters for the stored procedure here
    @pnRESULT INT OUTPUT
   ,@pnID INT
   ,@pvHOTEN NVARCHAR(50)
   ,@pvGIOITINH NCHAR(1)
   ,@pvDIACHI VARCHAR(256)
   ,@pdNGAYSINH DATE
   ,@pvNOISINH NVARCHAR(50)
   ,@pvCMND NCHAR(10)
   ,@pvSODIENTHOAI NCHAR(15)
   ,@pvEMAIL VARCHAR(256)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @nCHECKCMND INT;
	
	UPDATE k
	   SET k.HOTEN = @pvHOTEN
	      ,k.GIOITINH = @pvGIOITINH
	      ,k.NGAYSINH = @pdNGAYSINH
	      ,k.DIACHI = @pvDIACHI
	      ,k.NOISINH = @pvNOISINH
	      ,k.CMND = @pvCMND
	      ,k.SODIENTHOAI = @pvSODIENTHOAI
	      ,k.EMAIL = @pvEMAIL
	  FROM KHACHHANGTHUONG k
	 WHERE k.ID = @pnID
	   AND k.DELSTAMP IS NULL;
	
	IF @@ROWCOUNT = 0
	BEGIN
	  SELECT @pnID = ISNULL(MAX(k.ID), 0) + 1
	    FROM KHACHHANGTHUONG k;
	    
	  BEGIN TRY
		INSERT INTO KHACHHANGTHUONG(ID, HOTEN, DIACHI, GIOITINH, NGAYSINH, NOISINH, CMND, SODIENTHOAI, EMAIL)
	    VALUES (@pnID, @pvHOTEN, @pvDIACHI, @pvGIOITINH
			 ,@pdNGAYSINH, @pvNOISINH, @pvCMND, @pvSODIENTHOAI, @pvEMAIL);
	  END TRY	 
	  
	  -- SELECT @ERROR = @@ERROR;
	  
	  --	
	  BEGIN CATCH
	    IF @@ERROR = 0
	    BEGIN
	    
	      SET @pnRESULT = @pnID;
	      RETURN;
	    END
	    -- tra ve 0 neu gap loi
	    ELSE
	    BEGIN
	      -- BAT LOI
	      -- raiserror('error', 16, 1);
	      SELECT @pnRESULT = dbo.FUNC_KHACHHANGTHUONG_CHECKCMND(@pvCMND);
	      RETURN;
	    END
	  END CATCH
	END
	
	-- cap nhat thanh cong, tra ve ID vua cap nhat
	ELSE
	BEGIN
	  SET @pnRESULT = @pnID;
	  RETURN;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_TOUR_INSERTTAB]    Script Date: 12/18/2012 22:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KHACHHANG_TOUR_INSERTTAB]
	-- Add the parameters for the stored procedure here
	@pnRESULT INT OUTPUT
   ,@pnID INT
   ,@pnMAKH INT
   ,@pnMATOUR INT
   ,@pnSOVENGUOILON INT
   ,@pnSOVETREEM INT
   ,@pnSOVETRENHO INT
   ,@pnSOVEEMBE INT
   ,@pnSOTIEN FLOAT
   ,@pvDONVITIEN NCHAR(3)
AS
BEGIN
	DECLARE @nTONGTIEN FLOAT;
	DECLARE @SOVENGUOILON_CL INT;
	DECLARE @SOVETREEM_CL INT;
	DECLARE @SOVETRENHO_CL INT;
	DECLARE @SOVEEMBE_CL INT;
	
    -- thuc hien update
	UPDATE k
	   SET k.MAKH = @pnMAKH
	      ,k.MATOUR = @pnMATOUR
	      ,k.SOTIEN = @pnSOTIEN
	      ,k.DONVITIEN = @pvDONVITIEN
	  FROM KHACHHANG_TOUR k
	 WHERE k.ID = @pnID
	   AND k.DELSTAMP IS NULL;
	
	-- thuc hien insert
	IF (@@ROWCOUNT = 0)
	BEGIN
	
	  -- thuc hien kiem tra so luong ve
	  SET @SOVENGUOILON_CL = dbo.FUNC_TOUR_SOVENGUOILON_CL(@pnID);
	  SET @SOVETREEM_CL = dbo.FUNC_TOUR_SOVETREEM_CL(@pnID);
	  SET @SOVETRENHO_CL = dbo.FUNC_TOUR_SOVETRENHO_CL(@pnID);
	  SET @SOVEEMBE_CL = dbo.FUNC_TOUR_SOVEEMBE_CL(@pnID);
	  
	  IF (@pnSOVENGUOILON <= @SOVENGUOILON_CL
	  AND @pnSOVETREEM <= @SOVETREEM_CL
	  AND @pnSOVETRENHO <= @SOVETRENHO_CL
	  AND @pnSOVEEMBE <= @SOVEEMBE_CL)
	  BEGIN
	    BEGIN TRY
	    -- insert MAKH, MATOUR
	    SELECT @pnID = ISNULL(MAX(k.ID), 0) + 1
	      FROM KHACHHANG_TOUR k;
	    
	    INSERT INTO KHACHHANG_TOUR(ID, MAKH, MATOUR)
	    VALUES (@pnID, @pnMAKH, @pnMATOUR);
	  
	    -- insert chi tiet tour
	    EXEC CHITIETDATTOUR_KH_INSERTTAB @pnRESULT, @pnID, @pnSOVENGUOILON
		  							 , @pnSOVETREEM, @pnSOVETRENHO, @pnSOVEEMBE;
	    -- tinh toan tong tien
	    SET @nTONGTIEN = dbo.FUNC_CHITIETDATTOUR_KH_TONGTIEN(@pnID);
	  
	    -- update SOTIEN
	    UPDATE k
	       SET k.SOTIEN = @nTONGTIEN
	      FROM KHACHHANG_TOUR k
	     WHERE k.ID = @pnID
	       AND k.DELSTAMP IS NULL;
	    END TRY
	    
	    --
	    BEGIN CATCH
	      -- tra ve id neu insert dung
	      IF @@ERROR = 0
	      BEGIN
	        SET @pnRESULT = @pnID;
	        RETURN;
	      END
	      -- tra ve 0 neu gap loi
	      ELSE
	      BEGIN
	        SET @pnRESULT = 0;
	        RETURN;
	    END
	    END CATCH
	    --
	  END
	  -- tra ve -1 khong du so ve
	  ELSE
	  BEGIN
	    SET @pnRESULT = -1;
	    RETURN;
	  END
	END
	
	-- tra ve ID neu thuc hien update
	ELSE
	BEGIN
	  SET @pnRESULT = @pnID;
	  RETURN;
	END
END
GO
