USE [master]
GO
/****** Object:  Database [Employee_PriyankaSaxena]    Script Date: 6/29/2022 10:38:33 PM ******/
CREATE DATABASE [Employee_PriyankaSaxena]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee_PriyankaSaxena', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Employee_PriyankaSaxena.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Employee_PriyankaSaxena_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Employee_PriyankaSaxena_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employee_PriyankaSaxena].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET  MULTI_USER 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Employee_PriyankaSaxena]
GO
/****** Object:  Table [dbo].[TblDesignation]    Script Date: 6/29/2022 10:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblDesignation](
	[DesId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationDesc] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[DesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblEmployee]    Script Date: 6/29/2022 10:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[DOB] [date] NULL,
	[Email] [varchar](255) NULL,
	[MobileNo] [varchar](255) NULL,
	[DesignationId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblLogin]    Script Date: 6/29/2022 10:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblLogin](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TblDesignation] ON 

INSERT [dbo].[TblDesignation] ([DesId], [DesignationDesc]) VALUES (1, N'Project Manager')
INSERT [dbo].[TblDesignation] ([DesId], [DesignationDesc]) VALUES (2, N'Team Leader')
INSERT [dbo].[TblDesignation] ([DesId], [DesignationDesc]) VALUES (3, N'Team Member')
SET IDENTITY_INSERT [dbo].[TblDesignation] OFF
SET IDENTITY_INSERT [dbo].[TblEmployee] ON 

INSERT [dbo].[TblEmployee] ([Id], [Name], [DOB], [Email], [MobileNo], [DesignationId]) VALUES (1, N'priyanka saxena', CAST(N'1998-06-06' AS Date), N'saxenapriyanka95@gmail.com', N'7317404161', 1)
INSERT [dbo].[TblEmployee] ([Id], [Name], [DOB], [Email], [MobileNo], [DesignationId]) VALUES (6, N'Aman Sharma', CAST(N'2000-01-17' AS Date), N'aman123@gmail.com', N'9598479883', 2)
INSERT [dbo].[TblEmployee] ([Id], [Name], [DOB], [Email], [MobileNo], [DesignationId]) VALUES (7, N'Pooja Saxena', CAST(N'1995-05-22' AS Date), N'pooja123@gmail.com', N'9590452203', 3)
SET IDENTITY_INSERT [dbo].[TblEmployee] OFF
SET IDENTITY_INSERT [dbo].[TblLogin] ON 

INSERT [dbo].[TblLogin] ([LoginId], [Username], [Password]) VALUES (1, N'Admin', N'Admin')
INSERT [dbo].[TblLogin] ([LoginId], [Username], [Password]) VALUES (2, N'User', N'User')
INSERT [dbo].[TblLogin] ([LoginId], [Username], [Password]) VALUES (3, N'Temp', N'Temp')
SET IDENTITY_INSERT [dbo].[TblLogin] OFF
/****** Object:  StoredProcedure [dbo].[Proc_Detail]    Script Date: 6/29/2022 10:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proc_Detail](
@action nvarchar(255) =null,
@Name nvarchar(255)=0,
@DOB nvarchar(255)=null,
@Email nvarchar (255) =null,
@MobileNo nvarchar(100)=0,
@DesignationId int=0)
As Begin
if(@action='Insert')
begin
insert into TblEmployee(Name,DOB,Email,MobileNo,DesignationId)
values (@Name,Convert(Date,@DOB,103),@Email,@MobileNo,@DesignationId)
end
if(@action='SelectDesc')
begin
Select DesId,DesignationDesc from TblDesignation 
end
if(@action='Select')
begin
Select Id,Name,DOB,Email,MobileNo,DesignationId,DesignationDesc from TblEmployee
inner join TblDesignation on TblEmployee.DesignationId=TblDesignation.DesId
end
end

GO
/****** Object:  StoredProcedure [dbo].[Proc_LoginDetail]    Script Date: 6/29/2022 10:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Proc_LoginDetail]
(@Username nvarchar(255) = null,
@Password nvarchar(255) = null
)
As Begin 
Select * from TblLogin where Username=@Username and Password=@Password
End
GO
USE [master]
GO
ALTER DATABASE [Employee_PriyankaSaxena] SET  READ_WRITE 
GO
