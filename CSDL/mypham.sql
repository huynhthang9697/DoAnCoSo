USE [MyPham]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [uniqueidentifier] NOT NULL,
	[HinhAnh] [nvarchar](100) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenMuc]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMuc](
	[ID] [uniqueidentifier] NOT NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuyenMuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [uniqueidentifier] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](150) NULL,
	[ThongTin] [nvarchar](150) NULL,
	[MoTa] [ntext] NULL,
	[DanhGia] [int] NULL,
	[GiaTien] [money] NULL,
	[NgayNhapHang] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slideshow]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slideshow](
	[ID] [uniqueidentifier] NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[ID] [uniqueidentifier] NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[TenThanhVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 9/25/2019 10:34:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ID] [uniqueidentifier] NOT NULL,
	[TenTinTuc] [nvarchar](150) NULL,
	[MoTa] [nvarchar](150) NULL,
	[ChiTiet] [ntext] NULL,
	[HinhAnh] [nvarchar](150) NULL,
	[NgayVietTin] [datetime] NULL,
	[ChuyenMucID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'9da66cb6-6ea6-479d-ab7a-15d96107643e', N'3.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'58feb3f9-28fb-4186-98bc-363410af2fa9', N'1.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'719e9c5b-d752-4162-a65d-47b5c3bf331a', N'2.jpg')
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang]) VALUES (N'e25c22e8-4775-4bdd-8564-5005a528bd51', N'A', N'1.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 2, 10000000.0000, CAST(N'2019-02-09 00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang]) VALUES (N'81d958a0-52d3-4d89-bab2-766f8efc319e', N'B', N'2.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 1, 20000000.0000, CAST(N'2019-03-09 00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang]) VALUES (N'a22977f8-9fbd-40c4-bb13-98553f486cd5', N'C', N'3.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 5, 30000000.0000, CAST(N'2019-05-08 00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang]) VALUES (N'f8fd9f3d-20db-4645-9f98-ed4d692f3afb', N'D', N'4.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 5, 40000000.0000, CAST(N'2019-07-06 00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang]) VALUES (N'772e258c-00f0-4f02-9abc-ff3057022ab4', N'E', N'5.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 4, 50000000.0000, CAST(N'2019-10-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Slideshow] ([ID], [HinhAnh]) VALUES (N'f77ff3d2-11d3-46b0-9c47-453cbf3757f5', N'slide1.jpg')
INSERT [dbo].[Slideshow] ([ID], [HinhAnh]) VALUES (N'1ea01b1f-02b1-42a5-83e9-d14f2acfd300', N'slide2.png')
