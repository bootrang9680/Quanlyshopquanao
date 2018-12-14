USE [master]
GO
/****** Object:  Database [Quanlyshopquanao]    Script Date: 12/14/2018 3:42:52 PM ******/
CREATE DATABASE [Quanlyshopquanao]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quanlyshopquanao', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Quanlyshopquanao.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Quanlyshopquanao_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Quanlyshopquanao_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Quanlyshopquanao] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlyshopquanao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlyshopquanao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Quanlyshopquanao] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlyshopquanao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlyshopquanao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlyshopquanao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Quanlyshopquanao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlyshopquanao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Quanlyshopquanao] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlyshopquanao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlyshopquanao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlyshopquanao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlyshopquanao] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Quanlyshopquanao]
GO
/****** Object:  Table [dbo].[Chi]    Script Date: 12/14/2018 3:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi](
	[id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Tongchi] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhsachsanpham]    Script Date: 12/14/2018 3:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhsachsanpham](
	[id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[Soluong] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 12/14/2018 3:42:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Tongthu] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Chi] ([id], [Name], [Soluong], [Tongchi]) VALUES (N'A03', N'Áo jacket', 50, 100000)
GO
INSERT [dbo].[Chi] ([id], [Name], [Soluong], [Tongchi]) VALUES (N'Q01', N'Quần baggy', 20, 100000)
GO
INSERT [dbo].[Danhsachsanpham] ([id], [Name], [Gia], [Soluong]) VALUES (N'Q01', N'Quần baggy', 50000, 30)
GO
INSERT [dbo].[Danhsachsanpham] ([id], [Name], [Gia], [Soluong]) VALUES (N'Q02', N'Quần short', 50000, 50)
GO
INSERT [dbo].[Danhsachsanpham] ([id], [Name], [Gia], [Soluong]) VALUES (N'A03', N'Áo jacket', 20000, 20)
GO
INSERT [dbo].[Danhsachsanpham] ([id], [Name], [Gia], [Soluong]) VALUES (N'A04', N'Áo hoodie', 10000, 30)
GO
INSERT [dbo].[DoanhThu] ([id], [Name], [Soluong], [Tongthu]) VALUES (N'Q01', N'Quần baggy', 2, 100000)
GO
INSERT [dbo].[DoanhThu] ([id], [Name], [Soluong], [Tongthu]) VALUES (N'A03', N'Áo jacket', 3, 40000)
GO
USE [master]
GO
ALTER DATABASE [Quanlyshopquanao] SET  READ_WRITE 
GO

