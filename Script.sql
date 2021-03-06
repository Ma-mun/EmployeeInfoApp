USE [master]
GO
/****** Object:  Database [EmployeeInformationDB]    Script Date: 5/6/2015 12:46:10 PM ******/
CREATE DATABASE [EmployeeInformationDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeInformationDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeInformationDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeInformationDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeInformationDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeInformationDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeInformationDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeInformationDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeInformationDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeInformationDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeInformationDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeInformationDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeInformationDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeInformationDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeInformationDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeInformationDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeInformationDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeInformationDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeInformationDB]
GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 5/6/2015 12:46:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_tbl_employee_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_employee] ON 

INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (1, N'aTIB', N'jIGATOLA', N'ATIB@gmail.com', 30000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (8, N'Mehedi', N'dhanmondi', N'mehedi@gmail.com', 10000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (9, N'Mehedi Hasan', N'Dhanmondi', N'mehedi.hasan@yahoo.com', 1231)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (10, N'Atibur Rahman', N'mohakhali', N'atiburrahman09@gmail.com', 25000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (11, N'Erani', N'Mohammadpur', N'cse_erani@yahoo.com', 15000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (17, N'Sabiha Noor', N'MohammadPur', N'sabiha@gmail.com', 20000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (18, N'Protick', N'Savar', N'protick@yahoo.com', 25000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (19, N'Protick', N'Savar', N'protick@gmail.com', 25000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (20, N'Bappa', N'Jigatola', N'bappa@gmail.com', 30000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (21, N'Atibur RahmanAtib', N'Banani', N'atibur.rahman@yahoo.com', 23000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (22, N'Atibur', N'Uttora', N'atibur.rahman@hotmail.com', 3000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (23, N'atibur', N'uttorta', N'atibur@hotmail.com', 2000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (24, N'Jakir', N'Kakoli', N'jakir@gmail.com', 1500)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (25, N'jakaria', N'Azimpur', N'jakaria@hotmail.com', 65000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (26, N'abul', N'nougaon', N'abul@gmail.com', 10000)
INSERT [dbo].[tbl_employee] ([ID], [Name], [Address], [Email], [Salary]) VALUES (27, N'jahid', N'jigatola', N'jahid@gmail.com', 5000)
SET IDENTITY_INSERT [dbo].[tbl_employee] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_employee_1]    Script Date: 5/6/2015 12:46:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_employee_1] ON [dbo].[tbl_employee]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [EmployeeInformationDB] SET  READ_WRITE 
GO
