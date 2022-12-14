USE [master]
GO
/****** Object:  Database [Penggajian]    Script Date: 21/09/2022 07:36:20 ******/
CREATE DATABASE [Penggajian]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Penggajian', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Penggajian.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Penggajian_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Penggajian_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Penggajian] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Penggajian].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Penggajian] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Penggajian] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Penggajian] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Penggajian] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Penggajian] SET ARITHABORT OFF 
GO
ALTER DATABASE [Penggajian] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Penggajian] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Penggajian] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Penggajian] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Penggajian] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Penggajian] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Penggajian] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Penggajian] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Penggajian] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Penggajian] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Penggajian] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Penggajian] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Penggajian] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Penggajian] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Penggajian] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Penggajian] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Penggajian] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Penggajian] SET RECOVERY FULL 
GO
ALTER DATABASE [Penggajian] SET  MULTI_USER 
GO
ALTER DATABASE [Penggajian] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Penggajian] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Penggajian] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Penggajian] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Penggajian] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Penggajian]
GO
/****** Object:  User [mccdts]    Script Date: 21/09/2022 07:36:20 ******/
CREATE USER [mccdts] FOR LOGIN [mccdts] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mccdts]
GO
/****** Object:  Table [dbo].[Cabang]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cabang](
	[Id_Cabang] [int] NOT NULL,
	[Nama_Cabang] [varchar](50) NOT NULL,
	[Uang_Akomodasi] [int] NULL,
 CONSTRAINT [PK_Cabang] PRIMARY KEY CLUSTERED 
(
	[Id_Cabang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departement]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departement](
	[Id_Departemen] [int] NOT NULL,
	[Nama_Departemen] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departemen] PRIMARY KEY CLUSTERED 
(
	[Id_Departemen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gaji]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gaji](
	[Id_Gaji] [int] NOT NULL,
	[Gaji_Pokok] [int] NULL,
	[Tunjangan_Jabatan] [int] NULL,
	[Uang_Akomodasi] [int] NULL,
	[Nama_Bank] [varchar](50) NOT NULL,
	[No_Rekening] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gaji] PRIMARY KEY CLUSTERED 
(
	[Id_Gaji] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jabatan]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jabatan](
	[Id_Jabatan] [int] NOT NULL,
	[Nama_Jabatan] [varchar](50) NOT NULL,
	[Tunjangan_Jabatan] [int] NULL,
 CONSTRAINT [PK_Jabatan] PRIMARY KEY CLUSTERED 
(
	[Id_Jabatan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Karyawan]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Karyawan](
	[Id_Karyawan] [int] NOT NULL,
	[Nama_Karyawan] [varchar](50) NOT NULL,
	[No_Ktp] [varchar](16) NULL,
	[No_Telepon] [varchar](13) NOT NULL,
	[Id_Jabatan] [int] NULL,
	[Id_Cabang] [int] NULL,
	[Id_Departemen] [int] NULL,
	[Id_Gaji] [int] NULL,
 CONSTRAINT [PK_Karyawan] PRIMARY KEY CLUSTERED 
(
	[Id_Karyawan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registrasi]    Script Date: 21/09/2022 07:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registrasi](
	[id_registrasi] [int] NOT NULL,
	[id_karyawan] [int] NULL,
	[username] [varchar](15) NULL,
	[password] [varchar](15) NULL,
 CONSTRAINT [PK_Registrasi] PRIMARY KEY CLUSTERED 
(
	[id_registrasi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cabang] ([Id_Cabang], [Nama_Cabang], [Uang_Akomodasi]) VALUES (1, N'Jawa Barat', 1000000)
INSERT [dbo].[Cabang] ([Id_Cabang], [Nama_Cabang], [Uang_Akomodasi]) VALUES (2, N'Jakarta', 1500000)
INSERT [dbo].[Cabang] ([Id_Cabang], [Nama_Cabang], [Uang_Akomodasi]) VALUES (3, N'Bogor', 1500000)
INSERT [dbo].[Cabang] ([Id_Cabang], [Nama_Cabang], [Uang_Akomodasi]) VALUES (4, N'Depok', 1200000)
INSERT [dbo].[Cabang] ([Id_Cabang], [Nama_Cabang], [Uang_Akomodasi]) VALUES (5, N'Yogyakarta', 1600000)
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (1, N'Human Resource')
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (2, N'IT')
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (3, N'Research And Depelovment')
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (4, N'Accounting and Finance')
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (5, N'Marketing')
INSERT [dbo].[Departement] ([Id_Departemen], [Nama_Departemen]) VALUES (6, N'Production')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (1, 5000000, 500000, 500000, N'BRI', N'2325432547325435')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (2, 5000000, 500000, 500000, N'Mandiri', N'232543254736')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (3, 5000000, 500000, 500000, N'BCA', N'2325432547365735')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (4, 5000000, 500000, 500000, N'BNI', N'2325432547325755')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (5, 5000000, 500000, 500000, N'BRI', N'2325432547325435')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (6, 5000000, 500000, 500000, N'Mandiri', N'2325432547325435')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (7, 5000000, 500000, 500000, N'BCA', N'2325432547325435')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (8, 5000000, 500000, 500000, N'BNI', N'2325432547325435')
INSERT [dbo].[Gaji] ([Id_Gaji], [Gaji_Pokok], [Tunjangan_Jabatan], [Uang_Akomodasi], [Nama_Bank], [No_Rekening]) VALUES (9, 6000000, 1200000, 500000, N'BRI', N'237468356345947')
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (1, N'Direksi', 2000000)
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (2, N'Direktur Utama', 1500000)
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (3, N'Direktur Keuangan', 1500000)
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (4, N'Direktur', 1500000)
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (5, N'Manajer', 1500000)
INSERT [dbo].[Jabatan] ([Id_Jabatan], [Nama_Jabatan], [Tunjangan_Jabatan]) VALUES (6, N'Staff', 1000000)
INSERT [dbo].[Karyawan] ([Id_Karyawan], [Nama_Karyawan], [No_Ktp], [No_Telepon], [Id_Jabatan], [Id_Cabang], [Id_Departemen], [Id_Gaji]) VALUES (1, N'Sri', N'3210010068655123', N'085846669065', 1, 1, 2, 1)
INSERT [dbo].[Karyawan] ([Id_Karyawan], [Nama_Karyawan], [No_Ktp], [No_Telepon], [Id_Jabatan], [Id_Cabang], [Id_Departemen], [Id_Gaji]) VALUES (2, N'Indah', N'3210010068651234', N'085846667578', 2, 2, 1, 2)
INSERT [dbo].[Karyawan] ([Id_Karyawan], [Nama_Karyawan], [No_Ktp], [No_Telepon], [Id_Jabatan], [Id_Cabang], [Id_Departemen], [Id_Gaji]) VALUES (3, N'Nurida', N'3210010068658767', N'085846669878', 3, 2, 3, 5)
INSERT [dbo].[Karyawan] ([Id_Karyawan], [Nama_Karyawan], [No_Ktp], [No_Telepon], [Id_Jabatan], [Id_Cabang], [Id_Departemen], [Id_Gaji]) VALUES (4, N'Qurani', N'3210010068676748', N'085846669867', 4, 4, 3, 7)
INSERT [dbo].[Registrasi] ([id_registrasi], [id_karyawan], [username], [password]) VALUES (1, 1, N'SriIndah2112', N'@SriIndah211299')
INSERT [dbo].[Registrasi] ([id_registrasi], [id_karyawan], [username], [password]) VALUES (2, 2, N'Indah2112', N'@Indah211299')
INSERT [dbo].[Registrasi] ([id_registrasi], [id_karyawan], [username], [password]) VALUES (3, 3, N'Nurida2112', N'@Nurida211299')
INSERT [dbo].[Registrasi] ([id_registrasi], [id_karyawan], [username], [password]) VALUES (4, 4, N'Qurani2112', N'@Qurani211299')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Karyawan__5BEEF01E212140E5]    Script Date: 21/09/2022 07:36:20 ******/
ALTER TABLE [dbo].[Karyawan] ADD UNIQUE NONCLUSTERED 
(
	[No_Ktp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_Username_Registrasi]    Script Date: 21/09/2022 07:36:20 ******/
ALTER TABLE [dbo].[Registrasi] ADD  CONSTRAINT [UQ_Username_Registrasi] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Karyawan]  WITH CHECK ADD  CONSTRAINT [FK_Karyawan_Cabang_IdCabang] FOREIGN KEY([Id_Cabang])
REFERENCES [dbo].[Cabang] ([Id_Cabang])
GO
ALTER TABLE [dbo].[Karyawan] CHECK CONSTRAINT [FK_Karyawan_Cabang_IdCabang]
GO
ALTER TABLE [dbo].[Karyawan]  WITH CHECK ADD  CONSTRAINT [FK_Karyawan_Departemen_IdDepartemen] FOREIGN KEY([Id_Departemen])
REFERENCES [dbo].[Departement] ([Id_Departemen])
GO
ALTER TABLE [dbo].[Karyawan] CHECK CONSTRAINT [FK_Karyawan_Departemen_IdDepartemen]
GO
ALTER TABLE [dbo].[Karyawan]  WITH CHECK ADD  CONSTRAINT [FK_Karyawan_Gaji_IdGaji] FOREIGN KEY([Id_Gaji])
REFERENCES [dbo].[Gaji] ([Id_Gaji])
GO
ALTER TABLE [dbo].[Karyawan] CHECK CONSTRAINT [FK_Karyawan_Gaji_IdGaji]
GO
ALTER TABLE [dbo].[Karyawan]  WITH CHECK ADD  CONSTRAINT [FK_Karyawan_Jabatan_IdJabatan] FOREIGN KEY([Id_Jabatan])
REFERENCES [dbo].[Jabatan] ([Id_Jabatan])
GO
ALTER TABLE [dbo].[Karyawan] CHECK CONSTRAINT [FK_Karyawan_Jabatan_IdJabatan]
GO
ALTER TABLE [dbo].[Registrasi]  WITH CHECK ADD  CONSTRAINT [FK_Registrasi_Karyawan_IdRegistrasi] FOREIGN KEY([id_karyawan])
REFERENCES [dbo].[Karyawan] ([Id_Karyawan])
GO
ALTER TABLE [dbo].[Registrasi] CHECK CONSTRAINT [FK_Registrasi_Karyawan_IdRegistrasi]
GO
USE [master]
GO
ALTER DATABASE [Penggajian] SET  READ_WRITE 
GO
