USE [master]
GO
/****** Object:  Database [ClothesShop]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE DATABASE [ClothesShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothesShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HOANG\MSSQL\DATA\ClothesShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClothesShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HOANG\MSSQL\DATA\ClothesShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ClothesShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothesShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothesShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothesShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothesShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothesShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothesShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothesShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClothesShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothesShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothesShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothesShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothesShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothesShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothesShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothesShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothesShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClothesShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothesShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothesShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothesShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothesShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothesShop] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ClothesShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothesShop] SET RECOVERY FULL 
GO
ALTER DATABASE [ClothesShop] SET  MULTI_USER 
GO
ALTER DATABASE [ClothesShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothesShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothesShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothesShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClothesShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ClothesShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ClothesShop', N'ON'
GO
ALTER DATABASE [ClothesShop] SET QUERY_STORE = OFF
GO
USE [ClothesShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/22/2023 10:28:32 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](600) NULL,
	[Image] [nvarchar](max) NULL,
	[Sex] [tinyint] NOT NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderedSizedItems]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedSizedItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizedItemId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderedAmount] [int] NOT NULL,
 CONSTRAINT [PK_OrderedSizedItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderStatus] [smallint] NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[TotalSum] [float] NOT NULL,
	[Notes] [nvarchar](300) NULL,
	[Address] [nvarchar](300) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Commentaries] [nvarchar](300) NULL,
	[ResponseTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizedItems]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizedItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_SizedItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 7/22/2023 10:28:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230423145013_addCategoryToDatabase', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424111156_AddSizeToDatabase', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424121836_AddItemsToDatabase', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424130525_removedItemRequitred', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230425122838_AddedSizedItemsToDatabase', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230430203230_ChangedFKNameForSizeInSizedItem', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230506180633_IdentityRazorClassLib', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230507125951_addFirstNameAndLastNameToUser', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230510175805_AddAddressUserColumn', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230511173554_AddOrderDataToDatabase', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230511173910_UpdateOrderModel', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230511183353_AddPhoneNumberToOrderModel', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230512135218_AddAdminCommentsToOrderModel4', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513171043_removeTotalCountFromOrderModel', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513171438_minorUpdates', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513183714_addResponseTimeToOrderModel', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230514132105_DescriptionSizeIncreased', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230716183242_InitialDB', N'7.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'088a3e23-5ea5-451e-b795-ad9cd5e3d795', N'Admin', N'ADMIN', N'05a020e1-9bdf-4499-b165-1d05370566ac')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c732cb2d-ce67-4119-b141-3ceb3afe2587', N'Customer', N'CUSTOMER', N'5764725a-fd62-4c27-8553-6110aaa27336')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'614d2333-e3b2-40bf-bb43-0d958adcc5a6', N'088a3e23-5ea5-451e-b795-ad9cd5e3d795')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a52e1f55-8d6e-421c-88b2-904aff602840', N'088a3e23-5ea5-451e-b795-ad9cd5e3d795')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'329d1fb2-ad19-433c-aa23-910ed9678b4d', N'c732cb2d-ce67-4119-b141-3ceb3afe2587')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Address]) VALUES (N'329d1fb2-ad19-433c-aa23-910ed9678b4d', N'hoang@gmail.com', N'HOANG@GMAIL.COM', N'hoang@gmail.com', N'HOANG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEB+s2zJkJ10sxnvpfSeiEd/MHNAQD1oWPkWbgHqyP0PPZXVYcayQRMvKkj+sF9t7g==', N'JQQKVA6DCYZXZAZDS2AMAS4S6XRVPWEJ', N'73549063-cdc6-4c6c-a5a5-ba751d930a35', N'0983427517', 0, 0, NULL, 1, 0, N'User', N'Hoang', N'NV', N'Hoa Lac')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Address]) VALUES (N'614d2333-e3b2-40bf-bb43-0d958adcc5a6', N'hoangbboy2210@gmail.com', N'HOANGBBOY2210@GMAIL.COM', N'hoangbboy2210@gmail.com', N'HOANGBBOY2210@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJSa6XSeXwJV+PB3UF3lMgnzdoRGC8hbM1w3SnDwaJp2Q/I/uf3XRe8YKQK2oubKsw==', N'Q5PWGG4GA7VDWYKFFXUKLJJSOYTTXMUQ', N'd0e4c873-b777-4762-9e43-c59365ad8b3c', N'0983427518', 0, 0, NULL, 1, 0, N'User', N'NV', N'Hoang', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Address]) VALUES (N'a52e1f55-8d6e-421c-88b2-904aff602840', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMtrx5nbLJP3dvFk3Je1EItmYOAH1Mv25BwbosIfkJ3TbtfiDee01yUxvgBrQOPNfw==', N'BDAK3IJU4NO46DWXRM2IBPEA66N4TF3L', N'5a6dd294-5328-4da1-81c8-d7fdca1cd99a', N'0983427518', 0, 0, NULL, 1, 0, N'User', N'admin', N'n', NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Code], [Name], [DisplayOrder]) VALUES (1, N'Quần', 1)
INSERT [dbo].[Categories] ([Code], [Name], [DisplayOrder]) VALUES (2, N'Áo', 1)
INSERT [dbo].[Categories] ([Code], [Name], [DisplayOrder]) VALUES (3, N'Túi', 1)
INSERT [dbo].[Categories] ([Code], [Name], [DisplayOrder]) VALUES (5, N'Đồ bơi', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (3, N'Áo Polo Nam Tay Ngắn Vải Gân Túi Đắp Trơn Form Regular - 10S23POL025', N'
Áo Polo', N'5ea3d687-82bd-4f6c-91ae-574946e415de.jpg', 1, 441, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (4, N'Áo Thun Tay Ngắn Nam Phối Dây Rút Form Loose - 10F23TSS042', N'Áo thun', N'0f69cc6c-d460-4cc5-b098-6c617c1d5d1d.jpg', 1, 422, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (5, N'Áo Khoác Nam Cộc Tay Trơn Phối Túi Hộp Form Regular - 10S23JAC001', N'Áo Khoác', N'b97a43f5-24ff-42e2-b708-68c9d9cf5f52.jpg', 1, 568, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (6, N'Áo Tanktop Nữ Cộc Tay Cổ Halter Form Slim Crop - 10S23TTOW004', N'Áo TankTop', N'be811c52-5fe2-42c7-90af-f8981b8c114b.jpg', 2, 245, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (7, N'ÁO KHOÁC DÙ NỮ - TOTODAY - DAYDREAM', N'Áo Khoác nữ', N'25d1e38e-fced-4956-9e81-51544305b612.jpg', 2, 345, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (8, N'ÁO THUN NỮ-TOTODAY - AN UNIQUE DAY', N'Áo thun nữ', N'7ec96163-6f97-4a57-8388-18b27c27b75a.jpg', 2, 225, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (9, N'Quần Váy Nữ Twill Thắt Dây Ống Rộng Trơn Form Skirtpant - 10S23PFOW023', N'Quần váy ', N'0c78c518-7c52-4d6a-a7bd-c9638e74bee4.jpg', 2, 569, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (10, N'Quần Vải Nữ Ống Rộng Kẻ Caro Xếp Ly Form Wide Leg - 10S23PFOW019', N'Quần vải', N'afa3aace-c7d4-4492-97a5-1157e990190a.jpg', 2, 221, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (11, N'Quần Vải Nữ Túi Xéo Trơn Form Carrot - 10F22PFOW007', N'Quần vải', N'cc00d74a-4980-4f2a-8494-8eb71b41e4e6.jpg', 2, 287, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (12, N'Quần Short Nam Nylon Rút Dây Trơn Có Túi Sau Form Relax - 10S23PSH029', N'Quần nam', N'dc58874f-6da3-4f4d-965d-4c0e56255834.jpg', 1, 0, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (13, N'Quần Kaki Nam Cotton Gập Ly Trơn Form Slim Crop - 10S23PCA001', N'Quần Kaki', N'd8993e31-a4ed-401d-bf92-604165d3c7ed.jpg', 1, 540, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (14, N'Quần Short Nam Linen Họa Tiết In Form Relax - 10S23PSH022', N'Quần Short', N'af11a117-7565-4505-81ba-bac1a980611f.jpg', 1, 422, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (15, N'Túi Đeo Chéo Phối Màu Thời Trang - 10S23BAGU002', N'túi đeo chéo', N'a8429ac9-6252-41f8-b8e1-f1acb6d00c5d.jpg', 3, 234, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (16, N'Balo Da Trơn Form Basic - 10S23BAG016', N'Balo', N'deba789a-8fa3-48dd-8ab6-746d91b2f694.jpg', 3, 111, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (17, N'Túi Tote Organic Cotton Thêu Chữ "Coffee Lover" - 10S23BAGU004', N'Túi ', N'ef2f345e-677f-4fae-9127-59705ca4c107.jpg', 3, 124, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (19, N'Đồ bơi nữ', N'Đồ bơi', N'9471eade-21ca-4317-9be5-fa484e3ccc5e.jpg', 2, 100, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Image], [Sex], [Price], [CategoryId]) VALUES (20, N'Quần bơi Nam', N'Quần ', N'd09cb85a-22d0-4419-ba56-ba42435dd8f6.png', 1, 80, 5)
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderedSizedItems] ON 

INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (2, 5, 2, 4)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (3, 5, 3, 4)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (4, 5, 4, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (5, 6, 5, 2)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (6, 11, 7, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (7, 11, 6, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (8, 11, 8, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (9, 14, 9, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (10, 14, 10, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (11, 17, 11, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (12, 18, 11, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (13, 11, 12, 1)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (14, 11, 13, 2)
INSERT [dbo].[OrderedSizedItems] ([Id], [SizedItemId], [OrderId], [OrderedAmount]) VALUES (15, 46, 13, 1)
SET IDENTITY_INSERT [dbo].[OrderedSizedItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (2, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-17T22:23:01.9474302' AS DateTime2), 1764, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-17T22:27:07.4153794' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (3, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-17T22:23:03.2530467' AS DateTime2), 1764, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:46:12.9412127' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (4, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-17T22:23:42.2457158' AS DateTime2), 441, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:44:26.2911080' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (5, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-17T22:30:18.0904765' AS DateTime2), 882, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-17T22:31:06.1055708' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (6, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-18T15:56:27.3536805' AS DateTime2), 568, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:45:22.9183631' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (7, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-18T15:56:27.6499253' AS DateTime2), 568, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:45:15.5277365' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (8, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-18T15:56:29.7537973' AS DateTime2), 568, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:45:07.4972632' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (9, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-18T16:13:47.4301095' AS DateTime2), 245, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:45:02.2556047' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (10, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 3, CAST(N'2023-07-21T03:43:56.5609671' AS DateTime2), 245, NULL, N'Hoa Lac', N'0983427517', NULL, CAST(N'2023-07-21T03:46:06.4731028' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (11, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 1, CAST(N'2023-07-21T03:59:10.6853565' AS DateTime2), 690, NULL, N'Hoa Lac', N'0983427517', NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (12, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 1, CAST(N'2023-07-21T13:45:28.5600283' AS DateTime2), 568, NULL, N'Hoa Lac', N'0983427517', NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderStatus], [OrderTime], [TotalSum], [Notes], [Address], [PhoneNumber], [Commentaries], [ResponseTime]) VALUES (13, N'329d1fb2-ad19-433c-aa23-910ed9678b4d', 1, CAST(N'2023-07-22T08:51:54.9119198' AS DateTime2), 1260, NULL, N'Hoa Lac', N'0983427517', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[SizedItems] ON 

INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (5, 3, 1, 100)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (6, 3, 2, 50)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (7, 3, 3, 70)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (8, 4, 1, 82)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (9, 4, 2, 78)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (10, 4, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (11, 5, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (12, 5, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (13, 5, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (14, 6, 1, 90)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (15, 6, 2, 90)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (16, 6, 3, 90)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (17, 7, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (18, 7, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (19, 7, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (20, 8, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (21, 8, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (22, 8, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (23, 9, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (24, 9, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (25, 9, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (26, 10, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (27, 10, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (28, 10, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (29, 11, 1, 11)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (30, 11, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (31, 11, 3, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (32, 12, 1, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (33, 12, 2, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (34, 12, 3, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (35, 13, 1, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (36, 13, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (37, 13, 3, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (38, 14, 1, 66)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (39, 14, 2, 66)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (40, 14, 3, 66)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (41, 15, 1, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (42, 16, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (43, 16, 2, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (44, 17, 1, 10)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (45, 17, 2, 87)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (46, 17, 3, 88)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (48, 19, 1, 100)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (49, 19, 2, 90)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (50, 20, 1, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (51, 20, 2, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (52, 20, 3, 99)
INSERT [dbo].[SizedItems] ([Id], [ItemId], [SizeId], [Amount]) VALUES (53, 20, 4, 9)
SET IDENTITY_INSERT [dbo].[SizedItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Code], [Name]) VALUES (1, N'35')
INSERT [dbo].[Sizes] ([Code], [Name]) VALUES (2, N'36')
INSERT [dbo].[Sizes] ([Code], [Name]) VALUES (3, N'37')
INSERT [dbo].[Sizes] ([Code], [Name]) VALUES (4, N'38')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_CategoryId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Items_CategoryId] ON [dbo].[Items]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderedSizedItems_OrderId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderedSizedItems_OrderId] ON [dbo].[OrderedSizedItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderedSizedItems_SizedItemId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderedSizedItems_SizedItemId] ON [dbo].[OrderedSizedItems]
(
	[SizedItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SizedItems_ItemId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_SizedItems_ItemId] ON [dbo].[SizedItems]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SizedItems_SizeId]    Script Date: 7/22/2023 10:28:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_SizedItems_SizeId] ON [dbo].[SizedItems]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [PhoneNumber]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Code])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories_CategoryId]
GO
ALTER TABLE [dbo].[OrderedSizedItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderedSizedItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderedSizedItems] CHECK CONSTRAINT [FK_OrderedSizedItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderedSizedItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderedSizedItems_SizedItems_SizedItemId] FOREIGN KEY([SizedItemId])
REFERENCES [dbo].[SizedItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderedSizedItems] CHECK CONSTRAINT [FK_OrderedSizedItems_SizedItems_SizedItemId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SizedItems]  WITH CHECK ADD  CONSTRAINT [FK_SizedItems_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SizedItems] CHECK CONSTRAINT [FK_SizedItems_Items_ItemId]
GO
ALTER TABLE [dbo].[SizedItems]  WITH CHECK ADD  CONSTRAINT [FK_SizedItems_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Code])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SizedItems] CHECK CONSTRAINT [FK_SizedItems_Sizes_SizeId]
GO
USE [master]
GO
ALTER DATABASE [ClothesShop] SET  READ_WRITE 
GO
