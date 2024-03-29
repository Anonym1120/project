USE [master]
GO
/****** Object:  Database [myDB]    Script Date: 2020/12/13 上午 03:35:29 ******/
CREATE DATABASE [myDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'myDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\myDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'myDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\myDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [myDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [myDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [myDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [myDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [myDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [myDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [myDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [myDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [myDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [myDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [myDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [myDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [myDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [myDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [myDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [myDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [myDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [myDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [myDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [myDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [myDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [myDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [myDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [myDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [myDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [myDB] SET  MULTI_USER 
GO
ALTER DATABASE [myDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [myDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [myDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [myDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [myDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [myDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [myDB] SET QUERY_STORE = OFF
GO
USE [myDB]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2020/12/13 上午 03:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [nvarchar](50) NULL,
	[Customer] [nvarchar](50) NULL,
	[Restaurant] [nvarchar](50) NULL,
	[OrderItems] [nvarchar](50) NULL,
	[UnitPrice] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [nvarchar](50) NULL,
	[OrderTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2020/12/13 上午 03:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Level] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (1, N'101', N'user1', N'米寶便當', N'黃金排骨便當', 85, 2, N'170', N'10/20/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (2, N'101', N'user1', N'極品拉麵', N'黃金排骨便當', 85, 1, N'75', N'10/20/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (3, N'101', N'user1', N'米寶便當', N'黃金排骨便當', 85, 2, N'170', N'10/20/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (4, N'101', N'user1', N'米寶便當', N'懷舊排骨便當', 105, 2, N'210', N'10/20/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (5, N'101', N'user1', N'米寶便當', N'黃金排骨便當', 85, 2, N'170', N'10/21/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (6, N'101', N'user1', N'極品拉麵', N'黃金排骨便當', 85, 4, N'300', N'10/21/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (7, N'101', N'user3', N'米寶便當', N'黃金排骨便當', 85, 5, N'425', N'12/02/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (8, N'101', N'user3', N'極品拉麵', N'正宗池上便當', 90, 5, N'425', N'12/02/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (9, N'101', N'user3', N'極品拉麵', N'正宗池上便當', 90, 5, N'425', N'12/02/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (10, N'101', N'user2', N'米寶便當', N'懷舊排骨便當', 105, 5, N'525', N'12/02/2020')
INSERT [dbo].[OrderDetail] ([Id], [Grade], [Customer], [Restaurant], [OrderItems], [UnitPrice], [Quantity], [TotalPrice], [OrderTime]) VALUES (11, N'101', N'user2', N'極品拉麵', N'懷舊排骨便當', 105, 5, N'425', N'12/02/2020')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Password], [Level]) VALUES (1, N'user1', N'123', 1)
INSERT [dbo].[User] ([Id], [Username], [Password], [Level]) VALUES (2, N'user2', N'456', 2)
INSERT [dbo].[User] ([Id], [Username], [Password], [Level]) VALUES (3, N'user3', N'789', 3)
INSERT [dbo].[User] ([Id], [Username], [Password], [Level]) VALUES (4, N'user4', N'4', 3)
INSERT [dbo].[User] ([Id], [Username], [Password], [Level]) VALUES (5, N'user5', N'5', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [myDB] SET  READ_WRITE 
GO
