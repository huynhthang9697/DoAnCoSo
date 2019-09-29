USE [MyPham]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 9/29/2019 5:38:13 PM ******/
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
/****** Object:  Table [dbo].[ChuyenMuc]    Script Date: 9/29/2019 5:38:13 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/29/2019 5:38:13 PM ******/
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
	[GiamGia] [money] NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slideshow]    Script Date: 9/29/2019 5:38:13 PM ******/
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
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 9/29/2019 5:38:13 PM ******/
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
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 9/29/2019 5:38:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[ID] [uniqueidentifier] NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 9/29/2019 5:38:13 PM ******/
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
	[NgayDang] [datetime] NULL,
	[ChuyenMucID] [uniqueidentifier] NULL,
	[NguoiDang] [nvarchar](50) NULL,
	[Video] [nvarchar](150) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'9da66cb6-6ea6-479d-ab7a-15d96107643e', N'banner1.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'58feb3f9-28fb-4186-98bc-363410af2fa9', N'banner2.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'65d4fa66-61f4-4828-98d7-3689c27e1f71', N'1.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'719e9c5b-d752-4162-a65d-47b5c3bf331a', N'banner3.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'5a09b658-3bba-4027-85f9-642290c228fd', N'2.jpg')
INSERT [dbo].[Banner] ([ID], [HinhAnh]) VALUES (N'a73b0de3-e8e3-4d71-a912-8522a6fd2c55', N'3.jpg')
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang], [GiamGia], [TenDanhMuc]) VALUES (N'e25c22e8-4775-4bdd-8564-5005a528bd51', N'A', N'1.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 2, 100000.0000, CAST(N'2019-02-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang], [GiamGia], [TenDanhMuc]) VALUES (N'81d958a0-52d3-4d89-bab2-766f8efc319e', N'B', N'2.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 1, 200000.0000, CAST(N'2019-03-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang], [GiamGia], [TenDanhMuc]) VALUES (N'a22977f8-9fbd-40c4-bb13-98553f486cd5', N'Son', N'3.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 5, 300000.0000, CAST(N'2019-05-08 00:00:00.000' AS DateTime), 200000.0000, N'Son')
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang], [GiamGia], [TenDanhMuc]) VALUES (N'f8fd9f3d-20db-4645-9f98-ed4d692f3afb', N'Nước hoa', N'4.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 5, 400000.0000, CAST(N'2019-07-06 00:00:00.000' AS DateTime), NULL, N'Nước Hoa')
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [HinhAnh], [ThongTin], [MoTa], [DanhGia], [GiaTien], [NgayNhapHang], [GiamGia], [TenDanhMuc]) VALUES (N'772e258c-00f0-4f02-9abc-ff3057022ab4', N'Kem', N'5.jpg', N'aaaaaaaaaaaaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbbbbbbbbbb', 4, 500000.0000, CAST(N'2019-10-09 00:00:00.000' AS DateTime), NULL, N'Kem')
INSERT [dbo].[Slideshow] ([ID], [HinhAnh]) VALUES (N'f77ff3d2-11d3-46b0-9c47-453cbf3757f5', N'slide1.jpg')
INSERT [dbo].[Slideshow] ([ID], [HinhAnh]) VALUES (N'1ea01b1f-02b1-42a5-83e9-d14f2acfd300', N'slide2.png')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'2ef0532c-1a73-4516-92f2-2da6a2f41762', N'1.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'6a94c520-b8fa-4e95-9727-2ebbac49fce4', N'2.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'458f52ce-eb2d-465b-8a49-30c7a4717d39', N'3.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'f3d52b37-5d8b-4a78-bb44-36556a8d7624', N'12.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'fc0e9050-c3cf-4184-b189-3d63ded729cb', N'13.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'89b7f105-544a-4315-8583-49885f7c861d', N'4.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'341055b3-57c9-406f-afb1-6146cb8021c0', N'5.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'a2660af3-47fb-4ef8-801a-720fbf32b7c7', N'6.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'd88d7a84-b060-4d73-8f39-72afb1eb13f7', N'7.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'3fe39ef4-9c31-46af-a3e0-83dafd92b1a6', N'8.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'bbab04f2-be22-4813-8310-a4547590a8eb', N'9.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'aef3a0c8-a4f6-49f7-acb9-c520cbc1477e', N'14.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'5bd54ec8-b07e-4b4e-9154-e5636c175f50', N'10.jpg')
INSERT [dbo].[ThuongHieu] ([ID], [HinhAnh]) VALUES (N'7351c722-9d13-4449-8252-f28608957ad5', N'11.jpg')
INSERT [dbo].[TinTuc] ([ID], [TenTinTuc], [MoTa], [ChiTiet], [HinhAnh], [NgayDang], [ChuyenMucID], [NguoiDang], [Video]) VALUES (N'7056b926-2cce-44f7-812a-1a242697ef4e', N'A', N'123456789', N'qwertyuiopasdfghjklzxcvbnm', NULL, CAST(N'2019-02-10 00:00:00.000' AS DateTime), NULL, N'Admin', N'https://www.youtube.com/embed/DR2c266yWEA')
INSERT [dbo].[TinTuc] ([ID], [TenTinTuc], [MoTa], [ChiTiet], [HinhAnh], [NgayDang], [ChuyenMucID], [NguoiDang], [Video]) VALUES (N'39e01b0f-4c27-4ee5-905e-ebf957fb35ba', N'B', N'123456789', N'qwertyuiopasdfghjklzxcvbnm', N'img_blog3.jpg', CAST(N'2019-03-18 00:00:00.000' AS DateTime), NULL, N'Admin', NULL)
