USE [master]
GO
/****** Object:  Database [AoGiac6]    Script Date: 15/12/2024 9:03:36 AM ******/
CREATE DATABASE [AoGiac6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AoGiac6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AoGiac6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AoGiac6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AoGiac6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AoGiac6] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AoGiac6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AoGiac6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AoGiac6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AoGiac6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AoGiac6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AoGiac6] SET ARITHABORT OFF 
GO
ALTER DATABASE [AoGiac6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AoGiac6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AoGiac6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AoGiac6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AoGiac6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AoGiac6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AoGiac6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AoGiac6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AoGiac6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AoGiac6] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AoGiac6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AoGiac6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AoGiac6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AoGiac6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AoGiac6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AoGiac6] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AoGiac6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AoGiac6] SET RECOVERY FULL 
GO
ALTER DATABASE [AoGiac6] SET  MULTI_USER 
GO
ALTER DATABASE [AoGiac6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AoGiac6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AoGiac6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AoGiac6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AoGiac6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AoGiac6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AoGiac6', N'ON'
GO
ALTER DATABASE [AoGiac6] SET QUERY_STORE = OFF
GO
USE [AoGiac6]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CVs]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CVs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileCV] [nvarchar](max) NOT NULL,
	[TenCV] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CVs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonUngTuyens]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonUngTuyens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileCV] [nvarchar](max) NULL,
	[TenCV] [nvarchar](max) NULL,
	[XetDuyet] [nvarchar](max) NULL,
	[StatusId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[PhieuDangTuyenId] [int] NOT NULL,
 CONSTRAINT [PK_DonUngTuyens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meets]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Method] [nvarchar](max) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Address] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[YeuCau] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[NhaTuyenDungId] [int] NOT NULL,
 CONSTRAINT [PK_Meets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaTuyenDungs]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaTuyenDungs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNTD] [nvarchar](max) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ChucVu] [nvarchar](max) NULL,
	[TenCty] [nvarchar](max) NULL,
	[GiayPhepKinhDoanh] [nvarchar](max) NULL,
	[MaSoThue] [nvarchar](max) NULL,
	[GiayChungThuc] [nvarchar](max) NULL,
	[TinhId] [int] NULL,
	[DiaDiem] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[QuyMo] [nvarchar](max) NULL,
	[HinhAnhCty] [nvarchar](max) NULL,
	[ThongTinCty] [nvarchar](max) NULL,
	[ImageDaiDien] [nvarchar](max) NULL,
	[ImageBangTin] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TinNhanThem] [nvarchar](max) NULL,
	[XetDuyet] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_NhaTuyenDungs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDangTuyens]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDangTuyens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNganh] [nvarchar](100) NOT NULL,
	[MucLuong] [nvarchar](max) NULL,
	[NamKN] [nvarchar](max) NULL,
	[TinhId] [int] NOT NULL,
	[TenViecLam] [nvarchar](100) NOT NULL,
	[ChucDanh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](500) NULL,
	[DiaDiem] [nvarchar](max) NULL,
	[NgayLapPhieu] [datetime2](7) NULL,
	[HanNopHoSo] [datetime2](7) NULL,
	[NhaTuyenDungId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_PhieuDangTuyens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [bit] NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tinhs]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTinh] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tinhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](13) NULL,
	[CCCD] [nvarchar](13) NULL,
	[Image] [nvarchar](max) NULL,
	[StatusId] [int] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 15/12/2024 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241207134117_DACN', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241212165908_profile', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241212170308_profile1', N'8.0.11')
GO
SET IDENTITY_INSERT [dbo].[CVs] ON 

INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (1, N'/CVs\df4535fd-f4c8-4d15-b2db-7c80a6777936\DaoThiE.pdf', N'DaoThiE.pdf', N'df4535fd-f4c8-4d15-b2db-7c80a6777936')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (2, N'/CVs\df4535fd-f4c8-4d15-b2db-7c80a6777936\LuuVanK.pdf', N'LuuVanK.pdf', N'df4535fd-f4c8-4d15-b2db-7c80a6777936')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (3, N'/CVs\0f5d7c80-a2af-49ba-be26-3861fd172df0\NguyenVanA.pdf', N'NguyenVanA.pdf', N'0f5d7c80-a2af-49ba-be26-3861fd172df0')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (4, N'/CVs\0f5d7c80-a2af-49ba-be26-3861fd172df0\NguyenVanC.pdf', N'NguyenVanC.pdf', N'0f5d7c80-a2af-49ba-be26-3861fd172df0')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (5, N'/CVs\04548691-4abe-4423-8795-8ffd477c1a82\PhungVanD.pdf', N'PhungVanD.pdf', N'04548691-4abe-4423-8795-8ffd477c1a82')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (6, N'/CVs\04548691-4abe-4423-8795-8ffd477c1a82\TranThiB.pdf', N'TranThiB.pdf', N'04548691-4abe-4423-8795-8ffd477c1a82')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (7, N'/CVs\df709456-0166-4a09-8d7c-820f97fbced6\DaoThiE.pdf', N'DaoThiE.pdf', N'df709456-0166-4a09-8d7c-820f97fbced6')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (8, N'/CVs\df709456-0166-4a09-8d7c-820f97fbced6\TranThiB.pdf', N'TranThiB.pdf', N'df709456-0166-4a09-8d7c-820f97fbced6')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (9, N'/CVs\99510f8f-37da-4c6d-a3c6-c5cf318b4317\NguyenVanC.pdf', N'NguyenVanC.pdf', N'99510f8f-37da-4c6d-a3c6-c5cf318b4317')
INSERT [dbo].[CVs] ([Id], [FileCV], [TenCV], [UserId]) VALUES (10, N'/CVs\99510f8f-37da-4c6d-a3c6-c5cf318b4317\PhungVanD.pdf', N'PhungVanD.pdf', N'99510f8f-37da-4c6d-a3c6-c5cf318b4317')
SET IDENTITY_INSERT [dbo].[CVs] OFF
GO
SET IDENTITY_INSERT [dbo].[DonUngTuyens] ON 

INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (1, N'/CVs\df4535fd-f4c8-4d15-b2db-7c80a6777936\LuuVanK.pdf', N'LuuVanK.pdf', N'Yes', 1, N'df4535fd-f4c8-4d15-b2db-7c80a6777936', 1)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (2, N'/CVs\df4535fd-f4c8-4d15-b2db-7c80a6777936\DaoThiE.pdf', N'DaoThiE.pdf', N'Waiting', 1, N'df4535fd-f4c8-4d15-b2db-7c80a6777936', 2)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (3, N'/CVs\df4535fd-f4c8-4d15-b2db-7c80a6777936\DaoThiE.pdf', N'DaoThiE.pdf', N'No', 1, N'df4535fd-f4c8-4d15-b2db-7c80a6777936', 3)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (4, N'/CVs\0f5d7c80-a2af-49ba-be26-3861fd172df0\NguyenVanA.pdf', N'NguyenVanA.pdf', N'No', 1, N'0f5d7c80-a2af-49ba-be26-3861fd172df0', 1)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (5, N'/CVs\0f5d7c80-a2af-49ba-be26-3861fd172df0\NguyenVanA.pdf', N'NguyenVanA.pdf', N'Waiting', 1, N'0f5d7c80-a2af-49ba-be26-3861fd172df0', 2)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (6, N'/CVs\0f5d7c80-a2af-49ba-be26-3861fd172df0\NguyenVanC.pdf', N'NguyenVanC.pdf', N'Yes', 1, N'0f5d7c80-a2af-49ba-be26-3861fd172df0', 3)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (7, N'/CVs\04548691-4abe-4423-8795-8ffd477c1a82\PhungVanD.pdf', N'PhungVanD.pdf', N'Yes', 1, N'04548691-4abe-4423-8795-8ffd477c1a82', 1)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (8, N'/CVs\04548691-4abe-4423-8795-8ffd477c1a82\TranThiB.pdf', N'TranThiB.pdf', N'Waiting', 1, N'04548691-4abe-4423-8795-8ffd477c1a82', 2)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (9, N'/CVs\04548691-4abe-4423-8795-8ffd477c1a82\PhungVanD.pdf', N'PhungVanD.pdf', N'Waiting', 1, N'04548691-4abe-4423-8795-8ffd477c1a82', 3)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (10, N'/CVs\df709456-0166-4a09-8d7c-820f97fbced6\DaoThiE.pdf', N'DaoThiE.pdf', N'Yes', 1, N'df709456-0166-4a09-8d7c-820f97fbced6', 1)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (11, N'/CVs\df709456-0166-4a09-8d7c-820f97fbced6\DaoThiE.pdf', N'DaoThiE.pdf', N'Waiting', 1, N'df709456-0166-4a09-8d7c-820f97fbced6', 2)
INSERT [dbo].[DonUngTuyens] ([Id], [FileCV], [TenCV], [XetDuyet], [StatusId], [UserId], [PhieuDangTuyenId]) VALUES (12, N'/CVs\df709456-0166-4a09-8d7c-820f97fbced6\TranThiB.pdf', N'TranThiB.pdf', N'Waiting', 1, N'df709456-0166-4a09-8d7c-820f97fbced6', 3)
SET IDENTITY_INSERT [dbo].[DonUngTuyens] OFF
GO
SET IDENTITY_INSERT [dbo].[Meets] ON 

INSERT [dbo].[Meets] ([Id], [Method], [Date], [Time], [Address], [Link], [YeuCau], [UserId], [NhaTuyenDungId]) VALUES (1, N'Offline', CAST(N'2024-12-18' AS Date), CAST(N'08:30:00' AS Time), N'abc, HCM', NULL, N'Ăn mặc nghiêm chỉnh và mang theo CV.', N'df4535fd-f4c8-4d15-b2db-7c80a6777936', 1)
INSERT [dbo].[Meets] ([Id], [Method], [Date], [Time], [Address], [Link], [YeuCau], [UserId], [NhaTuyenDungId]) VALUES (2, N'Offline', CAST(N'2024-12-18' AS Date), CAST(N'09:00:00' AS Time), N'abc, HCM', NULL, N'Ăn mặc nghiêm chỉnh và mang theo CV.', N'04548691-4abe-4423-8795-8ffd477c1a82', 1)
INSERT [dbo].[Meets] ([Id], [Method], [Date], [Time], [Address], [Link], [YeuCau], [UserId], [NhaTuyenDungId]) VALUES (3, N'Offline', CAST(N'2024-12-18' AS Date), CAST(N'09:30:00' AS Time), N'abc, HCM', NULL, N'Ăn mặc nghiêm chỉnh và mang theo CV.', N'df709456-0166-4a09-8d7c-820f97fbced6', 1)
SET IDENTITY_INSERT [dbo].[Meets] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaTuyenDungs] ON 

INSERT [dbo].[NhaTuyenDungs] ([Id], [TenNTD], [SDT], [Email], [ChucVu], [TenCty], [GiayPhepKinhDoanh], [MaSoThue], [GiayChungThuc], [TinhId], [DiaDiem], [Website], [QuyMo], [HinhAnhCty], [ThongTinCty], [ImageDaiDien], [ImageBangTin], [MoTa], [TinNhanThem], [XetDuyet], [UserId], [StatusId]) VALUES (1, N'Hogwort', N'0123456789', N'tranvanc@gmail.com', N'Quản lý', N'Công ty TNHH WoW', N'/images/GPKD.jpg', N'1552646', NULL, 50, N'abc, Tp.HCM', N'abc.com', N'Công ty đã hoạt động 2 năm', N'/images/AnhCty.jpg', N'Công ty chuyên cung cấp linh kiện điện tử', N'/images/AnhDD.png', NULL, NULL, N'Vui lòng xét duyệt sớm nhất', N'Yes', N'99510f8f-37da-4c6d-a3c6-c5cf318b4317', 1)
INSERT [dbo].[NhaTuyenDungs] ([Id], [TenNTD], [SDT], [Email], [ChucVu], [TenCty], [GiayPhepKinhDoanh], [MaSoThue], [GiayChungThuc], [TinhId], [DiaDiem], [Website], [QuyMo], [HinhAnhCty], [ThongTinCty], [ImageDaiDien], [ImageBangTin], [MoTa], [TinNhanThem], [XetDuyet], [UserId], [StatusId]) VALUES (2, N'Hogwort', N'0123456789', N'hehe@gmail.com', N'Quản lý', N'Công ty TNHH WoW', N'/images/GPKD.jpg', N'1552646', NULL, 50, N'abc, Tp.HCM', N'abc.com', N'Công ty đã hoạt động 2 năm', N'/images/AnhCty.jpg', N'Công ty chuyên cung cấp linh kiện điện tử', N'/images/AnhDD.png', NULL, NULL, N'Vui lòng xét duyệt sớm nhất', N'Waiting', N'e89114c5-5d36-4470-83d5-cf832b569237', 2)
SET IDENTITY_INSERT [dbo].[NhaTuyenDungs] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuDangTuyens] ON 

INSERT [dbo].[PhieuDangTuyens] ([Id], [TenNganh], [MucLuong], [NamKN], [TinhId], [TenViecLam], [ChucDanh], [MoTa], [DiaDiem], [NgayLapPhieu], [HanNopHoSo], [NhaTuyenDungId], [StatusId]) VALUES (1, N'Công nghệ thông tin', N'3 - 5 Triệu/Tháng', N'Thực tập sinh', 50, N'Lập trình viên', N'Nhân viên', N'Thực tập với dự án nhỏ', N'abc, Tp.HCM', CAST(N'2024-12-15T10:30:00.0000000' AS DateTime2), CAST(N'2024-12-30T10:30:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhieuDangTuyens] ([Id], [TenNganh], [MucLuong], [NamKN], [TinhId], [TenViecLam], [ChucDanh], [MoTa], [DiaDiem], [NgayLapPhieu], [HanNopHoSo], [NhaTuyenDungId], [StatusId]) VALUES (2, N'Kinh tế', N'15 - 18 Triệu/Tháng', N'6 tháng - 1 năm', 50, N'Chuyên viên tài chính', N'Nhân viên', N'Ngày làm 8h bao ăn trưa', N'abc, Tp.HCM', CAST(N'2024-12-15T13:00:00.0000000' AS DateTime2), CAST(N'2024-12-31T13:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhieuDangTuyens] ([Id], [TenNganh], [MucLuong], [NamKN], [TinhId], [TenViecLam], [ChucDanh], [MoTa], [DiaDiem], [NgayLapPhieu], [HanNopHoSo], [NhaTuyenDungId], [StatusId]) VALUES (3, N'Xây dựng', N'25 - 30 Triệu/Tháng', N'1-2 năm', 50, N'Trưởng phòng thiết kế', N'Quản lý', N'Chúng tôi cần xây thêm cơ sở phụ, cần gấp một nhà thiết kế', N'abc, Tp.HCM', CAST(N'2024-12-18T05:00:00.0000000' AS DateTime2), CAST(N'2024-12-30T06:00:00.0000000' AS DateTime2), 1, 1)
SET IDENTITY_INSERT [dbo].[PhieuDangTuyens] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'34b271c8-d5fe-4ea1-9351-0b153e41bf01', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'423066e0-3246-4c80-a3cf-ec978758a990', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7118e6ef-cf7c-4288-b68e-d3ecf5df35b0', N'Employer', N'EMPLOYER', NULL)
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (1, 1)
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (2, 0)
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Tinhs] ON 

INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (2, N'Hà Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (3, N'Cao Bằng')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (5, N'Tuyên Quang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (6, N'Lào Cai')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (7, N'Điện Biên')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (8, N'Lai Châu')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (9, N'Sơn La')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (10, N'Yên Bái')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (11, N'Hòa Bình')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (12, N'Thái Nguyên')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (13, N'Lạng Sơn')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (14, N'Quảng Ninh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (15, N'Bắc Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (16, N'Phú Thọ')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (17, N'Vĩnh Phúc')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (18, N'Bắc Ninh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (19, N'Hải Dương')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (20, N'Hải Phòng')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (21, N'Hưng Yên')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (22, N'Thái Bình')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (23, N'Hà Nam')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (24, N'Nam Định')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (25, N'Ninh Bình')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (26, N'Thanh Hóa')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (27, N'Nghệ An')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (28, N'Hà Tĩnh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (29, N'Quảng Bình')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (30, N'Quảng Trị')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (31, N'Thừa Thiên Huế')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (32, N'Đà Nẵng')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (33, N'Quảng Nam')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (34, N'Quảng Ngãi')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (35, N'Bình Định')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (36, N'Phú Yên')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (37, N'Khánh Hòa')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (39, N'Bình Thuận')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (40, N'Kon Tum')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (41, N'Gia Lai')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (42, N'Đắk Lắk')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (43, N'Đắk Nông')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (44, N'Lâm Đồng')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (45, N'Bình Phước')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (46, N'Tây Ninh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (47, N'Bình Dương')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (48, N'Đồng Nai')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (49, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (50, N'Hồ Chí Minh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (51, N'Long An')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (53, N'Bến Tre')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (54, N'Trà Vinh')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (56, N'Đồng Tháp')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (57, N'An Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (58, N'Kiên Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (60, N'Hậu Giang')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (61, N'Sóc Trăng')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (62, N'Bạc Liêu')
INSERT [dbo].[Tinhs] ([Id], [TenTinh]) VALUES (63, N'Cà Mau')
SET IDENTITY_INSERT [dbo].[Tinhs] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6b89ced7-0f43-4547-9970-703ade929fbc', N'34b271c8-d5fe-4ea1-9351-0b153e41bf01')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e0f90660-b366-40f2-9133-4404e19d221d', N'34b271c8-d5fe-4ea1-9351-0b153e41bf01')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'04548691-4abe-4423-8795-8ffd477c1a82', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'0f5d7c80-a2af-49ba-be26-3861fd172df0', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'40f8a947-eeac-43fa-bf14-3711889478cc', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'df4535fd-f4c8-4d15-b2db-7c80a6777936', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'df709456-0166-4a09-8d7c-820f97fbced6', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e89114c5-5d36-4470-83d5-cf832b569237', N'423066e0-3246-4c80-a3cf-ec978758a990')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'99510f8f-37da-4c6d-a3c6-c5cf318b4317', N'7118e6ef-cf7c-4288-b68e-d3ecf5df35b0')
GO
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04548691-4abe-4423-8795-8ffd477c1a82', N'user3', N'0123456789', N'012345678999', NULL, 1, N'nguyentanthuan.ltp21@gmail.com', N'NGUYENTANTHUAN.LTP21@GMAIL.COM', N'nguyentanthuan.ltp21@gmail.com', N'NGUYENTANTHUAN.LTP21@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHlrqoD+N31ehXFJHfJ7qRPuW1YTuuqMZWs5ItCQhJWzDxvgHhcDQPgy6jAq91pzSw==', N'ZOMWL3IF5ZMXFRS2RT7ZWWC2NQEHVJZ4', N'7fe6c7c5-7f62-49e8-94c5-1514da975c0e', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0f5d7c80-a2af-49ba-be26-3861fd172df0', N'user2', N'0123456789', N'012345678999', NULL, 1, N'phien200500@gmail.com', N'PHIEN200500@GMAIL.COM', N'phien200500@gmail.com', N'PHIEN200500@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEByF05fnTxmGMhK7D/YgJBxlGicmxvosDyvQ/E2NJrUJvlVE/RYUATzxHOcHjezkPQ==', N'OTMMUHTA5EQVKLQIVIIASDR7VUVIAW3L', N'07691cc2-61f8-47e6-9d27-888c32f1210b', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'40f8a947-eeac-43fa-bf14-3711889478cc', N'hehe', N'878641', N'6841354851', NULL, 2, N'User1@gmail.com', N'USER1@GMAIL.COM', NULL, N'USER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELQiZ0x/wDfPDJHFJmE1RJUDYk+wplXKvGCxt7Tyw/A8A/WxO7lV4xOJPtTgcMPTpQ==', N'M2UPHNAK3CBGERBWILYDKVBTWYFJKXEV', N'58941ff0-d88a-4632-a58b-4fba47b209ef', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6b89ced7-0f43-4547-9970-703ade929fbc', N'admin2', N'0123456789', N'01234567899', NULL, 1, N'Admin2@gmail.com', N'ADMIN2@GMAIL.COM', N'Admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGkoYFlwtj/XR2YYh+FEOdn8UcvdlTmmHvVTIY1f7oF+a2Ytvl6oFcwIL/kDpKdEjg==', N'NP4HOSJN6SFVKRIGPERK3ZVEWTCOEAHC', N'fc744a32-afad-4d73-b5ba-d652b7103110', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'99510f8f-37da-4c6d-a3c6-c5cf318b4317', N'employ', N'0123456787', N'012345678977', NULL, 1, N'Employer1@gmail.com', N'EMPLOYER1@GMAIL.COM', N'Employer1@gmail.com', N'EMPLOYER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEK/2YAEGLrCDT1z3Gg7R1JSo0cXM5r6/vpflEctrraKj/pcM8KEndPlnP5OOSA1CyA==', N'NJNTQZZZCBQ42CFC7NC3AKWJIUCW6XFZ', N'ccf90d45-fa14-436f-8987-af569075daf0', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df4535fd-f4c8-4d15-b2db-7c80a6777936', N'ABC', N'0123456788', N'012345678988', NULL, 1, N'triethihi71@gmail.com', N'TRIETHIHI71@GMAIL.COM', N'triethihi71@gmail.com', N'TRIETHIHI71@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMJeH4tcgFlcsUQXOd7HZXJD/dMir4T0qhFPj55lzKyqmGOYZPrf/wPhX8UXYguR8g==', N'4UJLCDMXYB3NOZJ5KFISVUVKHS5M36GX', N'28c799a7-c20c-4b54-83a5-d9d4e29febd6', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df709456-0166-4a09-8d7c-820f97fbced6', N'user4', N'0123456789', N'012345678998', NULL, 1, N'nguyenkhang2k04@gmail.com', N'NGUYENKHANG2K04@GMAIL.COM', N'nguyenkhang2k04@gmail.com', N'NGUYENKHANG2K04@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJ8iR7+lEr3A5UivLA5pUssajAgooVqCvpQcTXzuphPsd5xSYXT7L/qSVm4StDGkMA==', N'OC77NMTO66SD3YWKPRHWVYMVNZG7N26T', N'b80c148a-df6c-4645-86d1-650637c4ad83', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e0f90660-b366-40f2-9133-4404e19d221d', N'admin', N'0123456789', N'012345678999', NULL, 1, N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFtvvsITmZ+hI3Z6Ngf7AqM3twRo+mq9sgLURJNBlomf8bE1V1bOSQM5RmlUwnxMXQ==', N'EOT3TNQ3OIOYA5ZEGHZJWMG7RJFZAQKG', N'19c42baf-9de1-4ffd-8865-adc547a58f4f', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FullName], [PhoneNumber], [CCCD], [Image], [StatusId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e89114c5-5d36-4470-83d5-cf832b569237', N'employ2', N'0123456789', N'012345678999', NULL, 1, N'Employer2@gmail.com', N'EMPLOYER2@GMAIL.COM', N'Employer2@gmail.com', N'EMPLOYER2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENhmCT+fmo/GsZOuns+XpCFB0o0eHpyxH0OKmIsB1A658O+J/o10RMpvc2BqmYjzFQ==', N'WGRHHVEE62A3ID4Y46ERKRIAKWLDMM2T', N'48c331e0-70ca-4123-9740-e4e6bbbddfa6', 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CVs_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_CVs_UserId] ON [dbo].[CVs]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DonUngTuyens_PhieuDangTuyenId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_DonUngTuyens_PhieuDangTuyenId] ON [dbo].[DonUngTuyens]
(
	[PhieuDangTuyenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DonUngTuyens_StatusId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_DonUngTuyens_StatusId] ON [dbo].[DonUngTuyens]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DonUngTuyens_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_DonUngTuyens_UserId] ON [dbo].[DonUngTuyens]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Meets_NhaTuyenDungId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Meets_NhaTuyenDungId] ON [dbo].[Meets]
(
	[NhaTuyenDungId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Meets_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Meets_UserId] ON [dbo].[Meets]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhaTuyenDungs_StatusId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhaTuyenDungs_StatusId] ON [dbo].[NhaTuyenDungs]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhaTuyenDungs_TinhId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhaTuyenDungs_TinhId] ON [dbo].[NhaTuyenDungs]
(
	[TinhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NhaTuyenDungs_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhaTuyenDungs_UserId] ON [dbo].[NhaTuyenDungs]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhieuDangTuyens_NhaTuyenDungId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_PhieuDangTuyens_NhaTuyenDungId] ON [dbo].[PhieuDangTuyens]
(
	[NhaTuyenDungId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhieuDangTuyens_StatusId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_PhieuDangTuyens_StatusId] ON [dbo].[PhieuDangTuyens]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhieuDangTuyens_TinhId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_PhieuDangTuyens_TinhId] ON [dbo].[PhieuDangTuyens]
(
	[TinhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_StatusId]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Users_StatusId] ON [dbo].[Users]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 15/12/2024 9:03:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CVs]  WITH CHECK ADD  CONSTRAINT [FK_CVs_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[CVs] CHECK CONSTRAINT [FK_CVs_Users_UserId]
GO
ALTER TABLE [dbo].[DonUngTuyens]  WITH CHECK ADD  CONSTRAINT [FK_DonUngTuyens_PhieuDangTuyens_PhieuDangTuyenId] FOREIGN KEY([PhieuDangTuyenId])
REFERENCES [dbo].[PhieuDangTuyens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonUngTuyens] CHECK CONSTRAINT [FK_DonUngTuyens_PhieuDangTuyens_PhieuDangTuyenId]
GO
ALTER TABLE [dbo].[DonUngTuyens]  WITH CHECK ADD  CONSTRAINT [FK_DonUngTuyens_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[DonUngTuyens] CHECK CONSTRAINT [FK_DonUngTuyens_Statuses_StatusId]
GO
ALTER TABLE [dbo].[DonUngTuyens]  WITH CHECK ADD  CONSTRAINT [FK_DonUngTuyens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DonUngTuyens] CHECK CONSTRAINT [FK_DonUngTuyens_Users_UserId]
GO
ALTER TABLE [dbo].[Meets]  WITH CHECK ADD  CONSTRAINT [FK_Meets_NhaTuyenDungs_NhaTuyenDungId] FOREIGN KEY([NhaTuyenDungId])
REFERENCES [dbo].[NhaTuyenDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meets] CHECK CONSTRAINT [FK_Meets_NhaTuyenDungs_NhaTuyenDungId]
GO
ALTER TABLE [dbo].[Meets]  WITH CHECK ADD  CONSTRAINT [FK_Meets_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Meets] CHECK CONSTRAINT [FK_Meets_Users_UserId]
GO
ALTER TABLE [dbo].[NhaTuyenDungs]  WITH CHECK ADD  CONSTRAINT [FK_NhaTuyenDungs_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[NhaTuyenDungs] CHECK CONSTRAINT [FK_NhaTuyenDungs_Statuses_StatusId]
GO
ALTER TABLE [dbo].[NhaTuyenDungs]  WITH CHECK ADD  CONSTRAINT [FK_NhaTuyenDungs_Tinhs_TinhId] FOREIGN KEY([TinhId])
REFERENCES [dbo].[Tinhs] ([Id])
GO
ALTER TABLE [dbo].[NhaTuyenDungs] CHECK CONSTRAINT [FK_NhaTuyenDungs_Tinhs_TinhId]
GO
ALTER TABLE [dbo].[NhaTuyenDungs]  WITH CHECK ADD  CONSTRAINT [FK_NhaTuyenDungs_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[NhaTuyenDungs] CHECK CONSTRAINT [FK_NhaTuyenDungs_Users_UserId]
GO
ALTER TABLE [dbo].[PhieuDangTuyens]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDangTuyens_NhaTuyenDungs_NhaTuyenDungId] FOREIGN KEY([NhaTuyenDungId])
REFERENCES [dbo].[NhaTuyenDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDangTuyens] CHECK CONSTRAINT [FK_PhieuDangTuyens_NhaTuyenDungs_NhaTuyenDungId]
GO
ALTER TABLE [dbo].[PhieuDangTuyens]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDangTuyens_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDangTuyens] CHECK CONSTRAINT [FK_PhieuDangTuyens_Statuses_StatusId]
GO
ALTER TABLE [dbo].[PhieuDangTuyens]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDangTuyens_Tinhs_TinhId] FOREIGN KEY([TinhId])
REFERENCES [dbo].[Tinhs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDangTuyens] CHECK CONSTRAINT [FK_PhieuDangTuyens_Tinhs_TinhId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Statuses_StatusId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [AoGiac6] SET  READ_WRITE 
GO
