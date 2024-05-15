USE [master]
GO
/****** Object:  Database [QL_CauLong]    Script Date: 15/5/2024 6:45:38 PM ******/
CREATE DATABASE [QL_CauLong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_CauLong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_CauLong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_CauLong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_CauLong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_CauLong] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_CauLong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_CauLong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_CauLong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_CauLong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_CauLong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_CauLong] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_CauLong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_CauLong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_CauLong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_CauLong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_CauLong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_CauLong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_CauLong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_CauLong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_CauLong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_CauLong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_CauLong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_CauLong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_CauLong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_CauLong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_CauLong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_CauLong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_CauLong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_CauLong] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_CauLong] SET  MULTI_USER 
GO
ALTER DATABASE [QL_CauLong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_CauLong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_CauLong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_CauLong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_CauLong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_CauLong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_CauLong] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_CauLong] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_CauLong]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[Brand_ID] [nvarchar](10) NOT NULL,
	[Brand_Name] [nvarchar](50) NULL,
	[Logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_BRAND] PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATELOGY]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATELOGY](
	[Ca_ID] [nvarchar](10) NOT NULL,
	[Ca_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CATELOGY] PRIMARY KEY CLUSTERED 
(
	[Ca_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLOTHES]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLOTHES](
	[Clo_ID] [nvarchar](10) NOT NULL,
	[Clo_Name] [nvarchar](50) NULL,
	[Img0] [nvarchar](50) NULL,
	[Img1] [nvarchar](50) NULL,
	[Img2] [nvarchar](50) NULL,
	[Img3] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Qty] [int] NULL,
	[Status] [nchar](10) NULL,
	[ViewCnt] [int] NULL,
	[Brand_ID] [nvarchar](10) NULL,
	[Gen_ID] [nvarchar](10) NULL,
	[Ca_ID] [nvarchar](10) NULL,
 CONSTRAINT [PK_CLOTHES] PRIMARY KEY CLUSTERED 
(
	[Clo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENDER]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENDER](
	[Gen_ID] [nvarchar](10) NOT NULL,
	[Gen_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_GENDER] PRIMARY KEY CLUSTERED 
(
	[Gen_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RACKET]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RACKET](
	[Rac_ID] [nvarchar](10) NOT NULL,
	[Rac_Name] [nvarchar](50) NOT NULL,
	[Img0] [nvarchar](50) NULL,
	[Img1] [nvarchar](50) NULL,
	[Img2] [nvarchar](50) NULL,
	[Img3] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Qty] [int] NULL,
	[Status] [nchar](10) NULL,
	[ViewCnt] [int] NULL,
	[Brand_ID] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_RACKET] PRIMARY KEY CLUSTERED 
(
	[Rac_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHOES]    Script Date: 15/5/2024 6:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHOES](
	[Shoe_ID] [nvarchar](10) NOT NULL,
	[Shoe_Name] [nvarchar](50) NULL,
	[Img0] [nvarchar](50) NULL,
	[Img1] [nvarchar](50) NULL,
	[Img2] [nvarchar](50) NULL,
	[Img3] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Qty] [int] NULL,
	[Status] [nchar](10) NULL,
	[ViewCnt] [int] NULL,
	[Brand_ID] [nvarchar](10) NULL,
	[Gen_ID] [nvarchar](10) NULL,
 CONSTRAINT [PK_SHOES] PRIMARY KEY CLUSTERED 
(
	[Shoe_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR01', N'Forza', N'forza.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR02', N'Li_Ning', N'lining.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR03', N'Victor', N'victor.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR04', N'Yonex', N'yonex.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR05', N'Babolat', N'babolat.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR06', N'Asics', N'asics.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR07', N'Mizuno', N'mizuno.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR08', N'RSL', N'rsl.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR09', N'Ashaway', N'ashaway.jpg')
INSERT [dbo].[BRAND] ([Brand_ID], [Brand_Name], [Logo]) VALUES (N'BR10', N'ZERV', N'zer.jpg')
GO
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA01', N'Shirt/Polo')
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA02', N'Shorts')
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA03', N'Skirt')
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA04', N'Dress')
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA05', N'Tracksuit')
INSERT [dbo].[CATELOGY] ([Ca_ID], [Ca_Name]) VALUES (N'CA06', N'Socks')
GO
INSERT [dbo].[CLOTHES] ([Clo_ID], [Clo_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID], [Ca_ID]) VALUES (N'CLO001', N' RSL Donatello T-shirt Blue', N'CLO001.png', NULL, NULL, NULL, 946830, NULL, NULL, NULL, N'BR08', N'MALE', N'CA01')
INSERT [dbo].[CLOTHES] ([Clo_ID], [Clo_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID], [Ca_ID]) VALUES (N'CLO002', N' Forza Clyde T-shirt Fiery Coral', N'CLO002.png', NULL, NULL, NULL, 1190649, NULL, NULL, NULL, N'BR01', N'MALE', N'CA01')
INSERT [dbo].[CLOTHES] ([Clo_ID], [Clo_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID], [Ca_ID]) VALUES (N'CLO003', N' Babolat Play Crew Neck Tee White/White', N'CLO003.png', NULL, NULL, NULL, 839821, NULL, NULL, NULL, N'BR05', N'MALE', N'CA01')
INSERT [dbo].[CLOTHES] ([Clo_ID], [Clo_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID], [Ca_ID]) VALUES (N'CLO004', N' Yonex Women T-shirt 16694EX Blue Green', N'CLO004.png', NULL, NULL, NULL, 1082285, NULL, NULL, NULL, N'BR04', N'FEMALE', N'CA01')
INSERT [dbo].[CLOTHES] ([Clo_ID], [Clo_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID], [Ca_ID]) VALUES (N'CLO005', N' Yonex Women T-shirt 16694EX Black', N'CLO005.png', NULL, NULL, NULL, 1082285, NULL, NULL, NULL, N'BR04', N'FEMALE', N'CA01')
GO
INSERT [dbo].[GENDER] ([Gen_ID], [Gen_Name]) VALUES (N'FEMALE', N'Female')
INSERT [dbo].[GENDER] ([Gen_ID], [Gen_Name]) VALUES (N'JUNIOR', N'Junior')
INSERT [dbo].[GENDER] ([Gen_ID], [Gen_Name]) VALUES (N'MALE', N'Male')
INSERT [dbo].[GENDER] ([Gen_ID], [Gen_Name]) VALUES (N'UNISEX', N'Unisex')
GO
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC001', N' Yonex Astrox 88 D Pro Black/Silver', N'RAC001.png', NULL, NULL, NULL, 5848947, NULL, NULL, NULL, N'BR04')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC002', N' Forza Ultra Power 500 M 2.0', N'RAC002.png', NULL, NULL, NULL, 3520475, NULL, NULL, NULL, N'BR01')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC003', N' ZERV Dragonfly Pro Z39', N'RAC003.png', NULL, NULL, NULL, 2167280, NULL, NULL, NULL, N'BR10')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC004', N' Li-Ning Bladex 800 4U/G5', N'RAC004.png', NULL, NULL, NULL, 5391109, NULL, NULL, NULL, N'BR02')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC005', N' RSL Master Speed 8000', N'RAC005.png', NULL, NULL, NULL, 3519121, NULL, NULL, NULL, N'BR08')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC006', N' Victor Auraspeed 90K Metallic', N'RAC006.png', NULL, NULL, NULL, 5415491, NULL, NULL, NULL, N'BR03')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC007', N' Yonex Astrox 88 S Tour Silver/Black', N'RAC007.png', NULL, NULL, NULL, 5418200, NULL, NULL, NULL, N'BR04')
INSERT [dbo].[RACKET] ([Rac_ID], [Rac_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID]) VALUES (N'RAC008', N' Babolat Satelite Lite Strung FC', N'RAC008.png', NULL, NULL, NULL, 3454103, NULL, NULL, NULL, N'BR05')
GO
INSERT [dbo].[SHOES] ([Shoe_ID], [Shoe_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID]) VALUES (N'SHO001', N' Yonex SHB 65 X3 White/Orange', N'SHO001.png', NULL, NULL, NULL, 4266833, NULL, NULL, NULL, N'BR04', N'MALE')
INSERT [dbo].[SHOES] ([Shoe_ID], [Shoe_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID]) VALUES (N'SHO002', N' Yonex Comfort Z3 Women Black/Mint', N'SHO002.png', NULL, NULL, NULL, 5960020, NULL, NULL, NULL, N'BR04', N'FEMALE')
INSERT [dbo].[SHOES] ([Shoe_ID], [Shoe_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID]) VALUES (N'SHO003', N' Mizuno Stealth Star 2 Junior White/Peach Parfait', N'SHO003.png', NULL, NULL, NULL, 2709100, NULL, NULL, NULL, N'BR07', N'FEMALE')
INSERT [dbo].[SHOES] ([Shoe_ID], [Shoe_Name], [Img0], [Img1], [Img2], [Img3], [Price], [Qty], [Status], [ViewCnt], [Brand_ID], [Gen_ID]) VALUES (N'SHO004', N' Asics Beyond FF White/Lime Burst', N'SHO004.png', NULL, NULL, NULL, 3250920, NULL, NULL, NULL, N'BR06', N'MALE')
GO
ALTER TABLE [dbo].[CLOTHES]  WITH CHECK ADD  CONSTRAINT [FK_CLOTHES_BRAND] FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[BRAND] ([Brand_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLOTHES] CHECK CONSTRAINT [FK_CLOTHES_BRAND]
GO
ALTER TABLE [dbo].[CLOTHES]  WITH CHECK ADD  CONSTRAINT [FK_CLOTHES_CATELOGY] FOREIGN KEY([Ca_ID])
REFERENCES [dbo].[CATELOGY] ([Ca_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLOTHES] CHECK CONSTRAINT [FK_CLOTHES_CATELOGY]
GO
ALTER TABLE [dbo].[CLOTHES]  WITH CHECK ADD  CONSTRAINT [FK_CLOTHES_GENDER] FOREIGN KEY([Gen_ID])
REFERENCES [dbo].[GENDER] ([Gen_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLOTHES] CHECK CONSTRAINT [FK_CLOTHES_GENDER]
GO
ALTER TABLE [dbo].[RACKET]  WITH CHECK ADD  CONSTRAINT [FK_RACKET_BRAND] FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[BRAND] ([Brand_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RACKET] CHECK CONSTRAINT [FK_RACKET_BRAND]
GO
ALTER TABLE [dbo].[SHOES]  WITH CHECK ADD  CONSTRAINT [FK_SHOES_BRAND] FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[BRAND] ([Brand_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SHOES] CHECK CONSTRAINT [FK_SHOES_BRAND]
GO
ALTER TABLE [dbo].[SHOES]  WITH CHECK ADD  CONSTRAINT [FK_SHOES_GENDER] FOREIGN KEY([Gen_ID])
REFERENCES [dbo].[GENDER] ([Gen_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SHOES] CHECK CONSTRAINT [FK_SHOES_GENDER]
GO
USE [master]
GO
ALTER DATABASE [QL_CauLong] SET  READ_WRITE 
GO
