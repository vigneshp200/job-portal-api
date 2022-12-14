USE [master]
GO
/****** Object:  Database [JobPortal]    Script Date: 15-11-2022 11:29:44 ******/
CREATE DATABASE [JobPortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JobPortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JobPortal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JobPortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JobPortal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JobPortal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobPortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobPortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobPortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobPortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobPortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobPortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobPortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobPortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobPortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobPortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JobPortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobPortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobPortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobPortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobPortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobPortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JobPortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobPortal] SET RECOVERY FULL 
GO
ALTER DATABASE [JobPortal] SET  MULTI_USER 
GO
ALTER DATABASE [JobPortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobPortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobPortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobPortal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JobPortal] SET DELAYED_DURABILITY = DISABLED 
GO
USE [JobPortal]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Contact] [varchar](10) NOT NULL,
	[Company] [nvarchar](150) NOT NULL,
	[CurrentCtc] [int] NOT NULL,
	[AboutProject] [nvarchar](500) NOT NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateFile]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateFile](
	[CandidateId] [int] NOT NULL,
	[FileId] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CandidateFile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidatePosition]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidatePosition](
	[CandidateId] [int] NOT NULL,
	[PositionId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CandidatePosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateTechnology]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateTechnology](
	[CandidateId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CandidateTechnology] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Path] [nchar](1000) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1500) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdateOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 15-11-2022 11:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdateOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF_Position_CreatedOn]  DEFAULT (sysdatetime()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CandidateFile]  WITH CHECK ADD  CONSTRAINT [FK_CandidateFile_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[CandidateFile] CHECK CONSTRAINT [FK_CandidateFile_Candidate]
GO
ALTER TABLE [dbo].[CandidateFile]  WITH CHECK ADD  CONSTRAINT [FK_CandidateFile_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([FileId])
GO
ALTER TABLE [dbo].[CandidateFile] CHECK CONSTRAINT [FK_CandidateFile_File]
GO
ALTER TABLE [dbo].[CandidatePosition]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePosition_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[CandidatePosition] CHECK CONSTRAINT [FK_CandidatePosition_Candidate]
GO
ALTER TABLE [dbo].[CandidatePosition]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePosition_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([PositionId])
GO
ALTER TABLE [dbo].[CandidatePosition] CHECK CONSTRAINT [FK_CandidatePosition_Position]
GO
ALTER TABLE [dbo].[CandidateTechnology]  WITH CHECK ADD  CONSTRAINT [FK_CandidateTechnology_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[CandidateTechnology] CHECK CONSTRAINT [FK_CandidateTechnology_Candidate]
GO
ALTER TABLE [dbo].[CandidateTechnology]  WITH CHECK ADD  CONSTRAINT [FK_CandidateTechnology_Technology] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([Id])
GO
ALTER TABLE [dbo].[CandidateTechnology] CHECK CONSTRAINT [FK_CandidateTechnology_Technology]
GO
USE [master]
GO
ALTER DATABASE [JobPortal] SET  READ_WRITE 
GO
