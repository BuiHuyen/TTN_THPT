USE [ThucTapNhom_QuanLyTruongTHPT]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 3/23/2018 1:41:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangDiem](
	[mahocsinh] [varchar](10) NOT NULL,
	[magiaovien] [varchar](10) NULL,
	[mamonhoc] [varchar](10) NOT NULL,
	[namhoc] [varchar](9) NOT NULL,
	[hocki] [int] NOT NULL,
	[diemtrungbinh] [float] NULL,
 CONSTRAINT [PK_BangDiem] PRIMARY KEY CLUSTERED 
(
	[mahocsinh] ASC,
	[mamonhoc] ASC,
	[namhoc] ASC,
	[hocki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[machucvu] [varchar](10) NOT NULL,
	[tenchucvu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[machucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenLop]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenLop](
	[mahocsinh] [varchar](10) NOT NULL,
	[ngaychuyen] [date] NOT NULL,
	[malopcu] [varchar](10) NOT NULL,
	[malopmoi] [varchar](10) NOT NULL,
	[lydochuyen] [varchar](100) NULL,
 CONSTRAINT [PK_ChuyenLop] PRIMARY KEY CLUSTERED 
(
	[mahocsinh] ASC,
	[ngaychuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiangDay]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiangDay](
	[magiaovien] [varchar](10) NOT NULL,
	[malop] [varchar](10) NOT NULL,
	[mamonhoc] [varchar](10) NULL,
	[thu] [nvarchar](50) NOT NULL,
	[tiet] [int] NOT NULL,
	[sotiet] [int] NULL,
 CONSTRAINT [PK_GiangDay] PRIMARY KEY CLUSTERED 
(
	[thu] ASC,
	[tiet] ASC,
	[malop] ASC,
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[magiaovien] [varchar](10) NOT NULL,
	[tengiaovien] [nvarchar](50) NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [bit] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[quequan] [nvarchar](50) NOT NULL,
	[sdt] [varchar](12) NULL,
	[email] [varchar](50) NULL,
	[trinhdo] [nvarchar](50) NULL,
	[luongcoban] [money] NULL,
	[machucvu] [varchar](10) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocSinh](
	[mahocsinh] [varchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[ngaysinh] [date] NULL,
	[dantoc] [nvarchar](50) NULL,
	[tongiao] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[quequan] [nvarchar](50) NULL,
	[thongtinphuhuynh] [nvarchar](50) NOT NULL,
	[sdtlienhe] [varchar](12) NULL,
	[malop] [varchar](10) NOT NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[mahocsinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[malop] [varchar](10) NOT NULL,
	[tenlop] [nvarchar](50) NOT NULL,
	[nambatdau] [int] NOT NULL,
	[namketthuc] [int] NOT NULL,
	[magvchunhiem] [varchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/23/2018 1:41:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[mamonhoc] [varchar](10) NOT NULL,
	[tenmonhoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChuyenLop] ADD  DEFAULT (getdate()) FOR [ngaychuyen]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__ngaysi__29572725]  DEFAULT (getdate()) FOR [ngaysinh]
GO
ALTER TABLE [dbo].[HocSinh] ADD  DEFAULT (getdate()) FOR [ngaysinh]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_GiaoVien_magiaovien] FOREIGN KEY([magiaovien])
REFERENCES [dbo].[GiaoVien] ([magiaovien])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_GiaoVien_magiaovien]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HocSinh_mahocsinh] FOREIGN KEY([mahocsinh])
REFERENCES [dbo].[HocSinh] ([mahocsinh])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_HocSinh_mahocsinh]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_MonHoc_mamonhoc] FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[MonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_MonHoc_mamonhoc]
GO
ALTER TABLE [dbo].[ChuyenLop]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenLop_HocSinh_mahocsinh] FOREIGN KEY([mahocsinh])
REFERENCES [dbo].[HocSinh] ([mahocsinh])
GO
ALTER TABLE [dbo].[ChuyenLop] CHECK CONSTRAINT [FK_ChuyenLop_HocSinh_mahocsinh]
GO
ALTER TABLE [dbo].[ChuyenLop]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenLop_Lopcu_malop] FOREIGN KEY([malopcu])
REFERENCES [dbo].[Lop] ([malop])
GO
ALTER TABLE [dbo].[ChuyenLop] CHECK CONSTRAINT [FK_ChuyenLop_Lopcu_malop]
GO
ALTER TABLE [dbo].[ChuyenLop]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenLop_Lopmoi_malop] FOREIGN KEY([malopcu])
REFERENCES [dbo].[Lop] ([malop])
GO
ALTER TABLE [dbo].[ChuyenLop] CHECK CONSTRAINT [FK_ChuyenLop_Lopmoi_malop]
GO
ALTER TABLE [dbo].[GiangDay]  WITH CHECK ADD  CONSTRAINT [FK_GiangDay_GiaoVien_magiaovien] FOREIGN KEY([magiaovien])
REFERENCES [dbo].[GiaoVien] ([magiaovien])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GiangDay_GiaoVien_magiaovien]
GO
ALTER TABLE [dbo].[GiangDay]  WITH CHECK ADD  CONSTRAINT [FK_GiangDay_Lop_malop] FOREIGN KEY([malop])
REFERENCES [dbo].[Lop] ([malop])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GiangDay_Lop_malop]
GO
ALTER TABLE [dbo].[GiangDay]  WITH CHECK ADD  CONSTRAINT [FK_GiangDay_MonHoc] FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[MonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GiangDay_MonHoc]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_ChucVu_machucvu] FOREIGN KEY([machucvu])
REFERENCES [dbo].[ChucVu] ([machucvu])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_ChucVu_machucvu]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop_malop] FOREIGN KEY([malop])
REFERENCES [dbo].[Lop] ([malop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop_malop]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_GiaoVien_magiaovien] FOREIGN KEY([magvchunhiem])
REFERENCES [dbo].[GiaoVien] ([magiaovien])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_GiaoVien_magiaovien]
GO
