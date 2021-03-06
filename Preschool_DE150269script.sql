USE [PreSchool]
GO
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [CK__Teacher__TeaTel__6DCC4D03]
GO
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [CK__Teacher__Gender__6FB49575]
GO
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [CK__Teacher__Email__6EC0713C]
GO
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [CK__Student__Gender__793DFFAF]
GO
ALTER TABLE [dbo].[Parent] DROP CONSTRAINT [CK__Parent__ParentTe__72910220]
GO
ALTER TABLE [dbo].[Parent] DROP CONSTRAINT [CK__Parent__Email__73852659]
GO
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK__Student__ParentI__7A3223E8]
GO
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK__Student__ClassID__7B264821]
GO
ALTER TABLE [dbo].[Class] DROP CONSTRAINT [FK__Class__TeaID__76619304]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 11/11/2021 9:11:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/11/2021 9:11:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 11/11/2021 9:11:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent]') AND type in (N'U'))
DROP TABLE [dbo].[Parent]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/11/2021 9:11:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Class]') AND type in (N'U'))
DROP TABLE [dbo].[Class]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/11/2021 9:11:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
DROP TABLE [dbo].[Admin]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/11/2021 9:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin] [nvarchar](20) NOT NULL,
	[Password] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/11/2021 9:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1000,1) NOT NULL,
	[ClassName] [nvarchar](20) NOT NULL,
	[GroupClassID] [varchar](20) NOT NULL,
	[TeaID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 11/11/2021 9:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[ParentID] [int] IDENTITY(100,1) NOT NULL,
	[ParentFname] [nvarchar](20) NOT NULL,
	[ParentLname] [nvarchar](8) NOT NULL,
	[ParentBirthday] [date] NOT NULL,
	[ParentNo] [int] NOT NULL,
	[ParentTel] [varchar](12) NOT NULL,
	[Address] [nvarchar](40) NULL,
	[Email] [varchar](30) NULL,
	[Password] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/11/2021 9:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StuID] [int] IDENTITY(200,1) NOT NULL,
	[StuFname] [nvarchar](20) NOT NULL,
	[StuLname] [nvarchar](8) NOT NULL,
	[StuBirthday] [date] NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 11/11/2021 9:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeaID] [int] IDENTITY(1,1) NOT NULL,
	[TeaFname] [nvarchar](20) NOT NULL,
	[TeaLname] [nvarchar](8) NOT NULL,
	[TeaBirthday] [date] NOT NULL,
	[TeaNo] [int] NOT NULL,
	[TeaTel] [varchar](12) NOT NULL,
	[Address] [nvarchar](40) NULL,
	[Email] [varchar](30) NULL,
	[Gender] [varchar](1) NOT NULL,
	[Degree] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Admin], [Password]) VALUES (N'preschool', N'a')
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1000, N'Lớp Chồi 1', N'12-18 tháng', 1)
INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1001, N'Lớp Chồi 2', N'19-24 tháng', 2)
INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1002, N'Lớp Chồi 3', N'25-36 tháng', 3)
INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1003, N'Lớp Lá 1', N'3-4 tu?i', 4)
INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1004, N'Lớp Lá 2', N'4-5 tu?i', 5)
INSERT [dbo].[Class] ([ClassID], [ClassName], [GroupClassID], [TeaID]) VALUES (1005, N'Lớp Lá 3', N'5-6 tu?i', 6)
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Parent] ON 

INSERT [dbo].[Parent] ([ParentID], [ParentFname], [ParentLname], [ParentBirthday], [ParentNo], [ParentTel], [Address], [Email], [Password]) VALUES (100, N'Nguyen', N'Quan', CAST(N'1950-12-16' AS Date), 123456671, N'0934 345634', N'Nghe An', N'Vinh@gmail.com', N'abcd')
INSERT [dbo].[Parent] ([ParentID], [ParentFname], [ParentLname], [ParentBirthday], [ParentNo], [ParentTel], [Address], [Email], [Password]) VALUES (101, N'Nguyen Van', N'A', CAST(N'1950-12-13' AS Date), 123456672, N'0934 345633', N'Binh Dinh', N'A@gmail.com', N'abcd')
INSERT [dbo].[Parent] ([ParentID], [ParentFname], [ParentLname], [ParentBirthday], [ParentNo], [ParentTel], [Address], [Email], [Password]) VALUES (102, N'Nguyen van', N'B', CAST(N'1950-12-14' AS Date), 123456673, N'0934 345635', N'Vung Tau', N'B@gmail.com', N'abcd')
INSERT [dbo].[Parent] ([ParentID], [ParentFname], [ParentLname], [ParentBirthday], [ParentNo], [ParentTel], [Address], [Email], [Password]) VALUES (103, N'Nguyen Van', N'C', CAST(N'1950-12-15' AS Date), 123456674, N'0934 345637', N'Ben Tre', N'C@gmail.com', N'abcd')
SET IDENTITY_INSERT [dbo].[Parent] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StuID], [StuFname], [StuLname], [StuBirthday], [Gender], [ParentID], [ClassID]) VALUES (200, N'Nguyen Minh', N'B', CAST(N'2020-02-16' AS Date), N'M', 100, 1000)
INSERT [dbo].[Student] ([StuID], [StuFname], [StuLname], [StuBirthday], [Gender], [ParentID], [ClassID]) VALUES (201, N'Nguyen Minh', N'A', CAST(N'2019-03-12' AS Date), N'M', 101, 1003)
INSERT [dbo].[Student] ([StuID], [StuFname], [StuLname], [StuBirthday], [Gender], [ParentID], [ClassID]) VALUES (202, N'Nguyen Minh', N'C', CAST(N'2019-04-13' AS Date), N'M', 102, 1003)
INSERT [dbo].[Student] ([StuID], [StuFname], [StuLname], [StuBirthday], [Gender], [ParentID], [ClassID]) VALUES (203, N'Nguyen Minh', N'D', CAST(N'2019-05-13' AS Date), N'M', 103, 1003)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (1, N'Nguyễn Văn', N'An', CAST(N'1987-02-12' AS Date), 523456789, N'0912 345678', N'Nha Trang', N'An@gmail.com', N'F', N'Mầm non')
INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (2, N'Phan Bui', N'Vien', CAST(N'1976-05-23' AS Date), 223456789, N'0934 518615', N'Da Nang', N'Vien@gmail.com', N'F', N'Mầm non')
INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (3, N'Phan Thanh', N'Hang', CAST(N'1977-04-13' AS Date), 323456789, N'0978 678563', N'Hue', N'Hang@gmail.com', N'F', N'Mầm non')
INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (4, N'Duong Bui', N'Quan', CAST(N'1980-07-16' AS Date), 723456789, N'0945 456544', N'Nghe An', N'Quan@gmail.com', N'F', N'')
INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (5, N'Phan Duy', N'Hoc', CAST(N'1987-05-13' AS Date), 323456782, N'0978 678363', N'Hue', N'Hoc@gmail.com', N'F', N'Mầm non')
INSERT [dbo].[Teacher] ([TeaID], [TeaFname], [TeaLname], [TeaBirthday], [TeaNo], [TeaTel], [Address], [Email], [Gender], [Degree]) VALUES (6, N'Nguyen Trinh', N'Ngoc', CAST(N'1943-03-23' AS Date), 323426789, N'0978 674563', N'LA', N'Ngoc@gmail.com', N'F', N'Mầm non')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([TeaID])
REFERENCES [dbo].[Teacher] ([TeaID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parent] ([ParentID])
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD CHECK  (([Email] like '[a-z]%@[a-z]%.[a-z]%'))
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD CHECK  (([ParentTel] like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' OR [ParentTel] like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Gender]='M' OR [Gender]='F'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Email] like '[a-z]%@[a-z]%.[a-z]%'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Gender]='M' OR [Gender]='F'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([TeaTel] like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' OR [TeaTel] like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
