USE [master]
GO
/****** Object:  Database [DbAirline]    Script Date: 23/04/2019 2:18:31 PM ******/
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
/****** Object:  Table [dbo].[tbAdmin]    Script Date: 23/04/2019 2:18:32 PM ******/
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
/****** Object:  Table [dbo].[tbBooking]    Script Date: 23/04/2019 2:18:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBooking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaneNo] [varchar](50) NULL,
	[PlaneName] [varchar](50) NULL,
	[Departure] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[tbContact]    Script Date: 23/04/2019 2:18:33 PM ******/
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
/****** Object:  Table [dbo].[tbPlane]    Script Date: 23/04/2019 2:18:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPlane](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaneNo] [int] NULL,
	[PlaneName] [varchar](50) NULL,
	[Departure] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
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

INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (1, N'2', N'jetairways', N'india', N'nz', 12000, N'sanchit', 3, N'36000', NULL)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (2, N'2', N'jetairways', N'india', N'nz', 12000, N'sanchit', 3, N'04/10/2019', 36000)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (3, N'55', N'JetStar', N'wellington', N'auckland', 120, N'john', 1, N'12/04/2018', 120)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (4, N'55', N'JetStar', N'wellington', N'auckland', 120, N'john', 1, N'12/04/2018', 120)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (5, N'55', N'JetStar', N'wellington', N'auckland', 120, N'john', 1, N'12/04/2018', 120)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (6, N'99', N'jetStar', N'auckland', N'wellington', 150, N'john', 2, N'01/04/2015', 300)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (7, N'44', N'jetstar', N'auckland', N'wellington', 100, N'chris', 2, N'11/11/2019', 200)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (8, N'44', N'jetstar', N'auckland', N'wellington', 100, N'chris', 2, N'11/11/2019', 200)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (1003, N'545', N'Emirates', N'new york', N'london', 54465, N'sumeet sardul singh saroe', 2, N'11/11/2018', 108930)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (1004, N'876', N'AirNewzealand', N'wellington', N'auckland', 60, N'stuart', 5, N'4/5/2019', 300)
INSERT [dbo].[tbBooking] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price], [CustomerName], [Tickets], [Sdate], [TotalPrice]) VALUES (1005, N'267', N'AirNewzealand', N'delhi', N'auckland', 1250, N'Jatinder', 5, N'05/05/2019', 6250)
SET IDENTITY_INSERT [dbo].[tbBooking] OFF
SET IDENTITY_INSERT [dbo].[tbContact] ON 

INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (1, N'rupinder', N'rsd@.com', N'as')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (2, N'Bikram', N'ok@ok.vom', N'upup')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (3, N'ranjit', N'ok@ok.vom', N'upup')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (1004, N'johnson', N'jh@jh.com', N'jhh')
INSERT [dbo].[tbContact] ([ID], [Sname], [Semail], [Smsg]) VALUES (1005, N'Jatinder', N'jatinder303@gmail.com', N'hiiii')
SET IDENTITY_INSERT [dbo].[tbContact] OFF
SET IDENTITY_INSERT [dbo].[tbPlane] ON 

INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (6, 545, N'Emirates', N'new york', N'london', 54465)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (7, 55, N'JetStar', N'wellington', N'auckland', 120)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (8, 44, N'jetstar', N'auckland', N'wellington', 100)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1005, 8, N'AirNewzealand', N'auckland', N'sydney', 1000)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1006, 377, N'jetstar', N'christchurch', N'auckland', 300)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1007, 89, N'jetstar', N'auckland', N'christchurch', 250)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1008, 267, N'AirNewzealand', N'delhi', N'auckland', 1250)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1009, 123, N'Ethihad', N'wellington', N'melbourne', 1111)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1010, 342, N'Qantas', N'perth', N'auckland', 900)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1011, 432, N'AirNewzealand', N'auckland', N'perth', 800)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1012, 657, N'Jetstar', N'hamilton', N'queenstown', 120)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1013, 876, N'AirNewzealand', N'wellington', N'auckland', 60)
INSERT [dbo].[tbPlane] ([ID], [PlaneNo], [PlaneName], [Departure], [Destination], [Price]) VALUES (1014, 556, N'indigo', N'delhi', N'auckland', 1500)
SET IDENTITY_INSERT [dbo].[tbPlane] OFF
USE [master]
GO
ALTER DATABASE [DbAirline] SET  READ_WRITE 
GO
