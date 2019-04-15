USE [master]
GO
/****** Object:  Database [DbAirline]    Script Date: 16/04/2019 9:49:37 AM ******/
CREATE DATABASE [DbAirline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbAirline_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DbAirline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DbAirline_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DbAirline.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DbAirline] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbAirline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbAirline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbAirline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbAirline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbAirline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbAirline] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbAirline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbAirline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbAirline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbAirline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbAirline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbAirline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbAirline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbAirline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbAirline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbAirline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbAirline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbAirline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbAirline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbAirline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbAirline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbAirline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbAirline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbAirline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbAirline] SET  MULTI_USER 
GO
ALTER DATABASE [DbAirline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbAirline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbAirline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbAirline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbAirline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbAirline] SET QUERY_STORE = OFF
GO
USE [DbAirline]
GO
/****** Object:  Table [dbo].[tbAdmin]    Script Date: 16/04/2019 9:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NULL,
	[SPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbBooking]    Script Date: 16/04/2019 9:49:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBooking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaneNo] [varchar](50) NULL,
	[PlaneName] [varchar](50) NULL,
	[Arrival] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[Price] [int] NULL,
	[CustomerName] [varchar](50) NULL,
	[Tickets] [int] NULL,
	[Sdate] [varchar](50) NULL,
	[TotalPrice] [int] NULL,
 CONSTRAINT [PK_tbBooking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbContact]    Script Date: 16/04/2019 9:49:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbContact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](50) NULL,
	[Semail] [varchar](50) NULL,
	[Smsg] [varchar](50) NULL,
 CONSTRAINT [PK_tbContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPlane]    Script Date: 16/04/2019 9:49:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPlane](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaneNo] [int] NULL,
	[PlaneName] [varchar](50) NULL,
	[Arrival] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_tbPlane] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbAdmin] ON 

INSERT [dbo].[tbAdmin] ([ID], [SName], [SPassword]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tbAdmin] OFF
SET IDENTITY_INSERT [dbo].[tbBooking] ON 

INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (1, N'2', N'jetairways', N'india', N'nz', 12000, N'sanchit', 3, N'36000', NULL)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (2, N'2', N'jetairways', N'india', N'nz', 12000, N'sanchit', 3, N'04/10/2019', 36000)
SET IDENTITY_INSERT [dbo].[tbBooking] OFF
SET IDENTITY_INSERT [dbo].[tbContact] ON 

INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (1, N'rupinder', N'rsd@.com', N'as')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (2, N'Bikram', N'ok@ok.vom', N'upup')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (3, N'ranjit', N'ok@ok.vom', N'upup')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (4, N'singh', N'singh@.com', N'hii')
SET IDENTITY_INSERT [dbo].[tbContact] OFF
SET IDENTITY_INSERT [dbo].[tbPlane] ON 

INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (1, 2, N'jetairways', N'india', N'newzeland', 12000)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (2, 63, N'indigo', N'amritsar', N'new zealand', 63000)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (3, 77, N'Air Newzealand', N'auckland', N'new zealand', 1200)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (4, 77, N'AirNewzealand', N'auckland', N'delhi', 1200)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (5, 99, N'jetStar', N'auckland', N'wellington', 150)
SET IDENTITY_INSERT [dbo].[tbPlane] OFF
USE [master]
GO
ALTER DATABASE [DbAirline] SET  READ_WRITE 
GO
