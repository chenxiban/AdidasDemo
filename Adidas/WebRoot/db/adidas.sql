USE [Adidas]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [varchar](20) NOT NULL,
	[Pwd] [varchar](20) NOT NULL,
	[Sex] [varchar](2) NULL,
	[Birthday] [varchar](30) NULL,
	[Phone] [varchar](11) NULL,
	[CreateTime] [datetime] NULL,
	[Flag] [int] NULL,
	[Email] [varchar](50) NULL,
	[Aid] [varchar](500) NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](200) NULL,
 CONSTRAINT [PK__UserInfo__C5B69A4A7F60ED59] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__UserInfo__9C5CAF9A023D5A04] UNIQUE NONCLUSTERED 
(
	[Uname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (1, N'陈永佳', N'123456', N'男', N'1998-01-02', N'15638589820', CAST(0x0000A84100A63C7C AS DateTime), 1, N'867647213@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (2, N'郭士才', N'123456', N'男', N'1996-11-02', N'15839055205', CAST(0x0000A84100A63C7C AS DateTime), 1, N'1024503678@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (3, N'王梦霞', N'123456', N'女', N'1997-06-26', N'15736709693', CAST(0x0000A84100A63C7C AS DateTime), 1, N'2934128615@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (4, N'戚国强', N'123456', N'男', N'1998-02-01', N'18737439833', CAST(0x0000A84100A63C7C AS DateTime), 1, N'961663768@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (5, N'张三', N'654321', N'男', N'1998-01-02', N'13036698756', CAST(0x0000A84100A63C7C AS DateTime), 0, N'13036698756@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (6, N'李四', N'321654', N'女', N'1998-02-02', N'13036698766', CAST(0x0000A84100A63C7C AS DateTime), 0, N'13036698766@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (7, N'王五', N'123456', N'男', N'1998-03-10', N'15638589890', CAST(0x0000A84E00F61F8E AS DateTime), 0, N'13036698977@qq.com', N'', NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (8, N'马六', N'123456', N'男', N'1998-04-02', N'13036698786', CAST(0x0000A85100AF2FA6 AS DateTime), 0, N'13036698786@qq.com', N'河南省洛阳市涧西区银川路46号', NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (9, N'周琦', N'123456', N'男', N'1998-05-02', N'13036698796', CAST(0x0000A84100A63C7C AS DateTime), 0, N'13036698796@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (10, N'姚明', N'123456', N'男', N'1998-06-02', N'13036698706', CAST(0x0000A84100A63C7C AS DateTime), 0, N'13036698706@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (43, N'w867647213', N'123456', N'女', N'2017-12-01', N'13525422796', CAST(0x0000A84900EAD307 AS DateTime), 0, N'867647213@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (44, N'哈哈哈', N'123456', N'男', N'1998-01-02', N'15638589845', CAST(0x0000A85600F0D9E9 AS DateTime), 2, N'8676472132@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (45, N'旺旺旺', N'123456', N'男', N'1996-11-02', N'15839055888', CAST(0x0000A85600F0D9E9 AS DateTime), 2, N'10245036783@qq.com', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Uid], [Uname], [Pwd], [Sex], [Birthday], [Phone], [CreateTime], [Flag], [Email], [Aid], [Ext1], [Ext2]) VALUES (46, N'汪汪汪', N'123456', N'女', N'1997-06-26', N'15799999955', CAST(0x0000A85600F0D9E9 AS DateTime), 2, N'29341286155@qq.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[TitleType]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TitleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Pid] [int] NOT NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TitleType] ON
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (1, N'男子', 0, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (2, N'女子', 0, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (3, N'童装 ', 0, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (4, N'运动', 0, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (5, N'品牌', 0, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (7, N'最新活动', 1, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (8, N'鞋类', 1, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (9, N'服饰类', 1, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (10, N'附配件类', 1, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (11, N'最新活动', 2, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (12, N'鞋类', 2, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (13, N'服饰类', 2, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (14, N'附配件类', 2, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (15, N'最新活动', 3, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (16, N'大童(8-14)', 3, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (17, N'小童(4-8)', 3, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (18, N'婴幼儿(0-4)', 3, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (19, N'跑步', 4, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (20, N'训练', 4, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (21, N'篮球', 4, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (22, N'户外', 4, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (23, N'originals', 5, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (24, N'ADIDAS ATHLETICS', 5, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (25, N'adidas neo', 5, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (26, N'sfello mocarfney', 5, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (27, N'新品上市', 7, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (28, N'CLIMAHEAT', 7, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (29, N'adidas neo生来好动', 7, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (30, N'跑步IUltraBOOST', 7, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (31, N'跑步IPureBOOST', 7, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (32, N'Originals', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (33, N'跑步', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (34, N'adidas neo', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (35, N'篮球', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (36, N'户外', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (37, N'足球', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (38, N'训练', 8, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (39, N'上衣', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (40, N'T恤', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (41, N'运动卫衣', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (42, N'运动下装', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (43, N'泳裤', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (44, N'比赛服', 9, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (45, N'包', 10, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (46, N'足球/篮球', 10, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (47, N'运动装备', 10, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (48, N'新品上市', 11, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (49, N'CLIMAHEAT', 11, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (50, N'adidas neo生来好动', 11, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (51, N'跑步IUltraBOOST', 11, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (52, N'跑步IPureBOOST', 11, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (53, N'Originals', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (54, N'adidas neo', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (55, N'跑步', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (56, N'户外', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (57, N'网球', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (58, N'训练', 12, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (59, N'上衣', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (60, N'T恤', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (61, N'运动卫衣', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (62, N'运动下装', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (63, N'运动胸衣', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (64, N'泳裤/比基尼', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (65, N'短裙/连衣裙', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (66, N'棉服/羽绒服', 13, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (67, N'包', 14, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (68, N'球类', 14, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (69, N'运动装备', 14, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (70, N'新品上市', 15, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (71, N'运动表现', 15, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (72, N'男大童:鞋类', 16, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (73, N'女大童:鞋类', 16, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (74, N'男大童:服装', 16, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (75, N'女大童:服装', 16, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (76, N'男小童:鞋类', 17, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (77, N'女小童:鞋类', 17, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (78, N'男小童:服装', 17, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (79, N'女小童:服装', 17, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (80, N'男婴童:鞋类', 18, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (81, N'女婴童:鞋类', 18, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (82, N'男婴童:服装', 18, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (83, N'女婴童:服装', 18, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (84, N'跑步鞋', 19, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (85, N'跑步服饰', 19, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (86, N'UltraBOOST', 19, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (87, N'UPureBOOST', 19, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (88, N'训练鞋', 20, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (89, N'训练服饰', 20, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (90, N'运动装备', 20, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (91, N'CLima', 20, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (92, N'冬季运动夹克', 20, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (93, N'篮球鞋', 21, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (94, N'篮球服饰', 21, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (95, N'James Harden', 21, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (96, N'Damian Lillard', 21, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (97, N'游泳', 22, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (98, N'户外鞋', 22, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (99, N'户外服饰', 22, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (100, N'运动装备', 22, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (101, N'户外徒步系列', 22, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (102, N'城市户外系列', 22, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (103, N'鞋类', 23, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (104, N'服装', 23, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (105, N'新品上市', 23, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (106, N'男子服饰', 24, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (107, N'女子服饰', 24, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (108, N'新品上市', 24, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (109, N'鞋类', 25, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (110, N'服装', 25, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (111, N'新品上市', 25, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (112, N'鞋类', 26, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (113, N'服装', 26, NULL, NULL)
INSERT [dbo].[TitleType] ([Id], [Name], [Pid], [Ext1], [Ext2]) VALUES (114, N'新品上市', 26, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TitleType] OFF
/****** Object:  Table [dbo].[Specification]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Content] [varchar](500) NULL,
	[Construction] [varchar](200) NULL,
	[TuDesign] [varchar](80) NULL,
	[Cut] [varchar](80) NULL,
	[Bag] [varchar](80) NULL,
	[Size] [varchar](80) NULL,
	[MaoZi] [varchar](80) NULL,
	[HXiuDesign] [varchar](80) NULL,
	[TxDesign] [varchar](80) NULL,
	[PicUrl] [varchar](500) NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Specification] ON
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (1, N'跑步:缓震', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (4, N'跑鞋类型:缓震', N'techfit鞋面自然、灵活；设计更舒适贴脚。', N'boost能量反馈性能让每一步都能获得源源动能。', N'TORSIONSYSTEM为足中部提供完整支撑；EVA中底保护足部不受拉伸挤压；舒适的织物衬里', N'合理的设计增强了稳定性。', N'跑步鞋类型:中性鞋底偏厚', N'各类尺码，适合各类脚型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (5, N'跑鞋类型:气垫', N'techfit鞋面自然、灵活；设计更舒适贴脚。', N'boost能量反馈性能让每一步都能获得源源动能。', N'TORSIONSYSTEM为足中部提供完整支撑；EVA中底保护足部不受拉伸挤压；舒适的织物衬里', N'合理的设计增强了稳定性。', N'跑步鞋类型:中性鞋底偏薄', N'各类尺码，适合各类脚型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (6, N'服饰类型:上衣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (7, N'服饰类型:T恤', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (8, N'服饰类型:运动卫衣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (9, N'服饰类型:运动胸衣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (10, N'服饰类型:运动下装', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (11, N'服饰类型:泳衣/比基尼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (12, N'服饰类型:泳衣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (13, N'服饰类型:比赛服', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (14, N'服饰类型:上衣', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (15, N'服饰类型:运动胸衣', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (16, N'服饰类型:T恤', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (17, N'服饰类型:运动卫衣', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (18, N'服饰类型:泳衣/比基尼', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (19, N'服饰类型:泳衣', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (20, N'服饰类型:比赛服', N'服饰自然、灵活；设计更舒适贴身。', N'衣服的合理设计，增强了用户体验性！', N'服饰类型:中性 适体舒适', N'各类尺码，适合各类体型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (21, N'鞋子类型：篮球', N'篮球鞋面自然、灵活；设计更舒适贴脚。', N'鞋子的合理设计，增强了用户体验性！', N'鞋子类型:篮球 适脚舒适', N'合理的设计增强了稳定性。', N'鞋子类型:男子鞋底防滑', N'各类尺码，适合各类脚型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (22, N'跑鞋类型：缓震', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (23, N'童鞋：足球鞋', N'足球鞋面自然、灵活；设计更舒适贴脚。', N'鞋子的合理设计，增强了用户体验性！', N'鞋子类型:足球鞋 适脚舒适', N'合理的设计增强了稳定性。', N'鞋子类型:男子鞋底设计更为合理', N'各类尺码，适合各类脚型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (24, N'童装', N'为每位儿童定制，只为穿得舒适，放心！', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (25, N'中性：originals', N'中性：originals鞋面自然、灵活；设计更舒适贴脚。', N'鞋子的合理设计，增强了用户体验性！', N'鞋子类型:中性 适脚舒适', N'合理的设计增强了稳定性。', N'鞋子类型:中性鞋底偏薄', N'各类尺码，适合各类脚型，只为你而生', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specification] ([Id], [Type], [Content], [Construction], [TuDesign], [Cut], [Bag], [Size], [MaoZi], [HXiuDesign], [TxDesign], [PicUrl], [Ext1], [Ext2]) VALUES (26, N'中性：originals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Specification] OFF
/****** Object:  Table [dbo].[Positions]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Positions] ON
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (1, N'首页一号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (2, N'首页二号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (3, N'首页三号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (6, N'详情一号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (7, N'购物一号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (8, N'检索一号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (9, N'男子四号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (10, N'女子五号位')
INSERT [dbo].[Positions] ([Id], [Name]) VALUES (11, N'童装六号位')
SET IDENTITY_INSERT [dbo].[Positions] OFF
/****** Object:  Table [dbo].[DataPageCount]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPageCount](
	[Id] [uniqueidentifier] NOT NULL,
	[RC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [varchar](100) NULL,
	[TyId] [int] NOT NULL,
	[SellPrice] [money] NULL,
	[DisPrice] [money] NULL,
	[Type] [varchar](50) NULL,
	[PicUrl] [varchar](500) NULL,
	[Size] [varchar](100) NULL,
	[Color] [varchar](100) NULL,
	[CanUse] [varchar](2) NOT NULL,
	[OnsaleTime] [datetime] NULL,
	[ProductStore] [int] NOT NULL,
	[Sid] [int] NOT NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](2000) NULL,
 CONSTRAINT [PK__Product__3214EC071A14E395] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (2, N'AW BBALL LO经典鞋', 1, 2199.0000, NULL, N'中性,originals', N'1001-o', N'38,39,40,41,42,43', N'夜空绿/夜空绿/一号黑色[DA9309]', N'是', CAST(0x0000A8570159F8A0 AS DateTime), 100, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (3, N'NMD_CS1 GTX PK 经典鞋', 32, 1999.0000, NULL, N'中性,originals', N'1002-o', N'38,39,40,41,42,43', N'亮白[BY9409]/一号黑色[BY9405]', N'否', CAST(0x0000A85800FA8FAD AS DateTime), 99, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (4, N'CC BBALL RR经典鞋', 3, 688.0000, NULL, N'男子  adidas neo', N'1001-neo', N'38,39,40,41,42,43', N'1号黑色/深橙黄(CQ2154)', N'是', CAST(0x0000A8570107672B AS DateTime), 134, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (5, N'EQT RACING ADV W经典鞋', 54, 999.0000, NULL, N'女子  adidas neo', N'1004-neo', N'38,39,40,41,42,43', N'1号黑色/深橙黄(CQ2154)', N'是', CAST(0x0000A84A00E348A9 AS DateTime), 20, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (6, N'CRAZY 8 ADV PK 经典鞋aaa', 84, 1299.0000, NULL, N'女子  originals', N'1010-o', N'38,39,40,41,42,43', N'夜空货物绿(BY3604)', N'是', CAST(0x0000A85801185800 AS DateTime), 20, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (7, N'EQT SUPPORT ADV W经典鞋', 53, 999.0000, NULL, N'女子  originals', N'1007-o', N'38,39,40,41,42,43', N'1号黑色/五度灰(CQ2249)', N'是', CAST(0x0000A84A00E53B34 AS DateTime), 20, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (10, N'EQT SUPPORT ADV W经典鞋', 53, 999.0000, NULL, N'女子  originals', N'1007-o', N'38,39,40,41,42,43', N'1号黑色/五度灰(CQ2249)', N'是', CAST(0x0000A84A00E5568B AS DateTime), 18, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (23, N'PROPHERE经典鞋', 32, 1099.0000, NULL, N'男子  originals', N'1013-o', N'38,39,40,41,42,43', N'1号黑色/红荧光(CQ3022)', N'是', CAST(0x0000A84A00E76CDB AS DateTime), 4, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (28, N'TUBULAR X 2.0 PK 经典鞋', 32, 1299.0000, NULL, N'男子  originals', N'1016-o', N'38,39,40,41,42,43', N'1号黑色/石墨黑/亮白(CQ1374)', N'是', CAST(0x0000A84A00E7A75D AS DateTime), 5, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (33, N'HARDEN篮球鞋', 35, 1399.0000, NULL, N'男子 运动表现 篮球', N'1022-lan', N'38,39,40,41,42,43', N'红/影迹浅猩红(AH2119)', N'是', CAST(0x0000A84A00E9BAA6 AS DateTime), 300, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (39, N'HARDEN篮球鞋', 35, 1399.0000, NULL, N'男子 运动表现 篮球', N'1019-lan', N'38,39,40,41,42,43', N'CORE BLACK/CARBON/HI-RES RED(AH2116)', N'是', CAST(0x0000A84A00EA3A86 AS DateTime), 10, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (45, N'alphabounce rc 女子鞋', 55, 799.0000, NULL, N'女子  运动表现  跑步', N'1025-pao', N'38,39,40,41,42,43', N'1号黑色/亮白/石墨黑(B42656)', N'是', CAST(0x0000A84A00EB59F6 AS DateTime), 10, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (46, N'aerobounce rac跑步鞋', 55, 799.0000, NULL, N'女子  运动表现  跑步', N'1028-pao', N'38,39,40,41,42,43', N'1号黑色/1号黑色/五度灰(BW1564)', N'是', CAST(0x0000A84A00EB59F6 AS DateTime), 10, 5, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (52, N'aerobounce rac跑步鞋', 55, 799.0000, NULL, N'女子  运动表现  跑步', N'1028-pao', N'38,39,40,41,42,43', N'1号黑色/1号黑色/五度灰(BW1564)', N'是', CAST(0x0000A84A00EB5C17 AS DateTime), 11, 5, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (55, N'All Terrain m 跑步鞋', 33, 899.0000, NULL, N'男子  运动表现  跑步', N'1031-pao', N'38,39,40,41,42,43', N'1号黑色/亮白(CG2739)', N'是', CAST(0x0000A84A00ED0836 AS DateTime), 10, 4, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (56, N'asupernova m 跑步鞋', 33, 1099.0000, NULL, N'男子  运动表现  跑步', N'1034-pao', N'38,39,40,41,42,43', N'蒸汽蓝/夜蓝/基础蓝(BB3475)', N'是', CAST(0x0000A84A00ED0836 AS DateTime), 10, 5, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (65, N'PREDATOR 18.1 FG J足球鞋', 72, 669.0000, NULL, N'男童  运动表现  足球', N'1037-hai', N'38,39,40,41,42,43', N'CORE BLACK/FTWR WHITE/SOLAR RED(CP8872)', N'是', CAST(0x0000A84A00EEDC46 AS DateTime), 10, 23, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (66, N'PREDATOR 18.4 TF J足球鞋', 72, 369.0000, NULL, N'男童  运动表现  足球', N'1040-hai', N'38,39,40,41,42,43', N'1号黑色/亮白(CP9095)', N'是', CAST(0x0000A84A00EEDC46 AS DateTime), 0, 23, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (71, N'足球训练短裤', 42, 99.0000, NULL, N'男子  运动表现  足球', N'1001-xiayi', N'S,M,L,XL,XXL,XXXL', N'钴蓝/白(S99153)', N'是', CAST(0x0000A85E0153BB20 AS DateTime), 50, 10, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (72, N'足球训练短裤', 42, 99.0000, NULL, N'男子  运动表现  足球', N'1002-xiayi', N'S,M,L,XL,XXL,XXXL', N'白/黑(BJ9227)', N'是', CAST(0x0000A85E0153BB20 AS DateTime), 50, 10, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (73, N'足球短袖上装', 39, 129.0000, NULL, N'男子  运动表现  足球', N'1001-shangyi', N'S,M,L,XL,XXL,XXXL', N'白/黑(CD8438)', N'是', CAST(0x0000A85E01588F9B AS DateTime), 60, 14, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (74, N'足球短袖上装', 39, 599.0000, NULL, N'男子  运动表现  足球', N'1002-shangyi', N'S,M,L,XL,XXL,XXXL', N'白/鲜蓝(AZ8059)', N'是', CAST(0x0000A85E01588F9B AS DateTime), 60, 14, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (77, N' 德国主场短袖比赛服', 44, 559.0000, NULL, N'男子  运动表现  足球', N'1001-bisai', N'S,M,L,XL,XXL,XXXL', N'白/清澈蓝/黑(BQ9324)', N'是', CAST(0x0000A85E015A80F6 AS DateTime), 60, 20, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (78, N'日本2017比赛服', 44, 999.0000, NULL, N'男子  运动表现  足球', N'1002-bisai', N'S,M,L,XL,XXL,XXXL', N'蓝(AZ5634))', N'是', CAST(0x0000A85E015A80F6 AS DateTime), 60, 20, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (79, N'平角泳裤', 43, 229.0000, NULL, N'男子  运动表现  游泳', N'1001-yongzhuang', N'S,M,L,XL,XXL,XXXL', N'黑/白(BP9503)', N'是', CAST(0x0000A85E015DB643 AS DateTime), 98, 12, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (80, N'平角泳裤', 43, 269.0000, NULL, N'男子  运动表现  游泳', N'1002-yongzhuang', N'S,M,L,XL,XXL,XXXL', N'黑/白(BQ0631)', N'是', CAST(0x0000A85E015DB643 AS DateTime), 100, 12, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (81, N'三角泳裤', 43, 229.0000, NULL, N'男子  运动表现  游泳', N'1003-yongzhuang', N'S,M,L,XL,XXL,XXXL', N'蓝/简单绿/黑(BK1812)', N'是', CAST(0x0000A85E015DB643 AS DateTime), 100, 12, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (82, N'网球短袖T恤', 40, 499.0000, NULL, N'男子  运动表现  网球', N'1001-T', N'S,M,L,XL,XXL,XXXL', N'粉白(BR3561)', N'是', CAST(0x0000A85E0161448F AS DateTime), 50, 7, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (83, N'短袖上衣', 40, 349.0000, NULL, N'男子  originals', N'1002-T', N'S,M,L,XL,XXL,XXXL', N'白/黄/醒目粉(CG0850))', N'是', CAST(0x0000A85E0161448F AS DateTime), 50, 7, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (84, N'X BY O 短袖上衣', 40, 229.0000, NULL, N'男子  originals', N'1003-T', N'S,M,L,XL,XXL,XXXL', N'蓝(CF1130)', N'是', CAST(0x0000A85E0161448F AS DateTime), 50, 7, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (85, N'T恤衫', 40, 329.0000, NULL, N'男子  运动表现  训练', N'1004-T', N'S,M,L,XL,XXL,XXXL', N'PRINT/PANTONE/semi solar lime(DH1182))', N'是', CAST(0x0000A85E0161448F AS DateTime), 50, 7, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (86, N'背包', 45, 329.0000, NULL, N'中性  originals', N'1001-bao', N'M', N'学院藏青蓝(BK6724)', N'是', CAST(0x0000A85E016372B6 AS DateTime), 50, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (87, N'腰包', 45, 549.0000, NULL, N'中性  originals', N'1002-bao', N'M', N'粉白(CW1403)', N'是', CAST(0x0000A85E016372B6 AS DateTime), 50, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (88, N'双肩背包', 67, 269.0000, NULL, N'中性  运动表现  训练', N'1003-bao', N'M', N'黑/黑/白(BR8973)', N'是', CAST(0x0000A85E016372B6 AS DateTime), 50, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (89, N'肩包', 67, 399.0000, NULL, N'中性  originals', N'1004-bao', N'M', N'黑(CE3667', N'是', CAST(0x0000A85E016372B6 AS DateTime), 50, 25, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (90, N'2018世界杯足球', 46, 199.0000, NULL, N'男子  运动表现  足球', N'1001-zuqiu', N'5', N'白/黑/银金属(CE8096)', N'是', CAST(0x0000A85F010631B5 AS DateTime), 10, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (91, N'2018世界杯足球', 46, 299.0000, NULL, N'男子  运动表现  足球', N'1002-zuqiu', N'5', N'白/黑/银金属(CE8091)', N'是', CAST(0x0000A85F010631B5 AS DateTime), 10, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (92, N'2018世界杯比赛用球', 46, 1299.0000, NULL, N'男子  运动表现  足球', N'1003-zuqiu', N'5', N'白/黑/银金属(CE8083)', N'是', CAST(0x0000A85F010631B5 AS DateTime), 10, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (93, N'2018世界杯足球', 46, 399.0000, NULL, N'男子  运动表现  足球', N'1004-zuqiu', N'5', N'白/黑/银金属(CE8085', N'是', CAST(0x0000A85F010631B5 AS DateTime), 10, 21, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (94, N'针织衫', 59, 699.0000, NULL, N'女子  originals', N'1003-shangyi', N'S,M,L,XL,XXL,XXXL', N'粉白(CE3761)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 14, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (95, N'长袖上衣', 59, 499.0000, NULL, N'女子  originals', N'1004-shangyi', N'S,M,L,XL,XXL,XXXL', N'白/粉白(BQ8023)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 14, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (96, N'裙子', 65, 599.0000, NULL, N'女子  originals', N'1001-lianyi', N'S,M,L,XL,XXL,XXXL', N'中麻灰(BR5132)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 50, 18, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (97, N'裙子', 65, 2199.0000, NULL, N'女子  originals', N'1002-lianyi', N'S,M,L,XL,XXL,XXXL', N'粉白/学院橙黄/浅猩红(BR8963)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 50, 18, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (98, N'游泳衣', 64, 229.0000, NULL, N'女子  运动表现  游泳', N'1004-yongzhuang', N'S,M,L,XL,XXL,XXXL', N'黑/石墨黑(BP5384)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 50, 19, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (99, N'羽绒服', 66, 1799.0000, NULL, N'女子  originals', N'1001-yurong', N'S,M,L,XL,XXL,XXXL', N'浓咖啡棕(CE2357)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 50, 19, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (100, N'中棉茄克', 61, 799.0000, NULL, N'女子  运动表现  训练', N'1002-yurong', N'S,M,L,XL,XXL,XXXL', N'亮白(BQ1951)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 50, 19, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (101, N'绑腿裤', 62, 449.0000, NULL, N'女子  originals', N'1003-xiayi', N'S,M,L,XL,XXL,XXXL', N'传奇墨水蓝(BS4360)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 10, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (102, N'运动裤', 62, 699.0000, NULL, N'女子  originals', N'1004-xiayi', N'S,M,L,XL,XXL,XXXL', N'黑(BR4479)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 10, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (103, N'短袖T恤', 60, 269.0000, NULL, N'女子  ADIDAS ATHLETICS', N'1005-T', N'S,M,L,XL,XXL,XXXL', N'白/黑(CW2449)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 16, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (104, N'短袖T恤', 60, 299.0000, NULL, N'女子  ADIDAS ATHLETICS', N'1006-T', N'S,M,L,XL,XXL,XXXL', N'黑(CE7835)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 16, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (105, N'跑步长袖T恤', 60, 299.0000, NULL, N'女子  运动表现  跑步', N'1007-T', N'S,M,L,XL,XXL,XXXL', N'黑/金(CF2121)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 16, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (106, N'W TrailCros LS 户外长袖T恤', 60, 599.0000, NULL, N'女子  运动表现  户外', N'1008-T', N'S,M,L,XL,XXL,XXXL', N'冰冻黄/冰冻黄(CG2464)', N'是', CAST(0x0000A85F0116ED09 AS DateTime), 100, 16, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (107, N'针织套服', 74, 549.0000, NULL, N'男童  运动表现  训练', N'1001-nanda', N'S,M,L,XL,XXL,XXXL', N'Top:黑/白Bottom:黑/白(CE8595)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (108, N'套头卫衣', 74, 329.0000, NULL, N'男童  运动表现  训练', N'1002-nanda', N'S,M,L,XL,XXL,XXXL', N'黑/白(CF2441)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (109, N'针织长裤', 75, 299.0000, NULL, N'女童  运动表现  训练', N'1001-nvda', N'S,M,L,XL,XXL,XXXL', N'黑/白/白(CF1837)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (110, N'大童针织茄克', 75, 699.0000, NULL, N'女童  运动表现  训练', N'1002-nvda', N'S,M,L,XL,XXL,XXXL', N'云母粉/黑(CW0763)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (111, N'小童针织套服', 78, 599.0000, NULL, N'男童  运动表现  训练', N'1003-nanxiao', N'S,M,L,XL,XXL,XXXL', N'Top:黑/鲜红/白 Bottom:黑/白(CX3495)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (112, N'梭织夹克', 78, 449.0000, NULL, N'男童  运动表现  训练', N'1004-nanxiao', N'S,M,L,XL,XXL,XXXL', N'夜蓝/神秘沥青蓝/白(BQ0438)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (113, N'运动套装', 79, 549.0000, NULL, N'女童  运动表现  训练', N'1003-nvxiao', N'S,M,L,XL,XXL,XXXL', N'航空粉(CD8441)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (114, N'小童针织套服', 79, 599.0000, NULL, N'女子  originals', N'1004-nvxiao', N'S,M,L,XL,XXL,XXXL', N'黑/鲜红(DM3232)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (115, N'运动套装', 82, 499.0000, NULL, N'男童  originals', N'1005-nanyou', N'S,M,L,XL,XXL,XXXL', N'浅猩红(CE1979)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (116, N'阿根廷国家队主场婴童比赛服', 82, 399.0000, NULL, N'男童  运动表现  足球', N'1006-nanyou', N'S,M,L,XL,XXL,XXXL', N'Top:白/清澈蓝/黑Bottom:黑/清澈蓝/白(BQ9314)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (117, N'运动套装', 83, 449.0000, NULL, N'女子  originals', N'1005-nvyou', N'S,M,L,XL,XXL,XXXL', N'Top:天然粉/白 Bottom:天然粉/白(CE1157)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Pname], [TyId], [SellPrice], [DisPrice], [Type], [PicUrl], [Size], [Color], [CanUse], [OnsaleTime], [ProductStore], [Sid], [Ext1], [Ext2]) VALUES (118, N'婴童针织套服', 83, 499.0000, NULL, N'女子  运动表现  训练', N'1006-nvyou', N'S,M,L,XL,XXL,XXXL', N'牛奶粉/中麻灰(DM4035)', N'是', CAST(0x0000A85F01275BBE AS DateTime), 50, 24, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  StoredProcedure [dbo].[proc_Data_Paged]    Script Date: 01/10/2018 20:02:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 通用分页存储过程
CREATE proc [dbo].[proc_Data_Paged]        
@objName varchar(50),  --表或视图的名称 
@colNames varchar(500),--要取的列名
@pageNum int,        --第几页
@pagesize int,        --每页记录数
@whereSql varchar(500), --where条件部分
@orderSql varchar(500),  --排序部分
@rowcount int output	--本次查询满足条件的记录数
as
declare @s varchar(4000),@pid uniqueidentifier =newid()
set @s=
' select P_SB_ID,'+@colNames+'        
from(select row_number() over ('+@orderSql+') as P_SB_ID,'+@colNames+'       
FROM '+@objName+' '+@whereSql+') as T        
where P_SB_ID between (('+str(@pageNum)+'-1)*'+str(@pageSize)+'+1) and ('
	+str(@pageNum)+')*'+str(@pagesize)+';insert into dbo.DataPageCount     
select '''+convert(varchar(100),@pid)+''',count(*) as Nums from  '+@objName+' '+@whereSql+' '        
exec(@s) 
select @rowcount=RC from dbo.DataPageCount where Id=@pid
delete from dbo.DataPageCount where Id=@pid
GO
/****** Object:  Table [dbo].[Addrees]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Addrees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [int] NOT NULL,
	[ShengFen] [varchar](20) NULL,
	[City] [varchar](20) NULL,
	[Name] [varchar](20) NULL,
	[Addrees] [varchar](500) NULL,
	[Phone] [varchar](11) NULL,
	[Postcode] [varchar](10) NULL,
	[County] [varchar](30) NULL,
	[Ext2] [varchar](200) NULL,
 CONSTRAINT [PK__Addrees__3214EC0721B6055D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Addrees] ON
INSERT [dbo].[Addrees] ([Id], [Uid], [ShengFen], [City], [Name], [Addrees], [Phone], [Postcode], [County], [Ext2]) VALUES (2, 8, N'河南省   ', N'洛阳市', N'陈佳', N'河南省洛阳市涧西区银川路46号', N'15638589820', N'471000', NULL, NULL)
INSERT [dbo].[Addrees] ([Id], [Uid], [ShengFen], [City], [Name], [Addrees], [Phone], [Postcode], [County], [Ext2]) VALUES (3, 9, N'河南省', N'驻马店市', N'王梦霞', N'河南省驻马店市上蔡县袁寨村520号收', N'15736709693', N'471002', NULL, NULL)
INSERT [dbo].[Addrees] ([Id], [Uid], [ShengFen], [City], [Name], [Addrees], [Phone], [Postcode], [County], [Ext2]) VALUES (4, 10, N'河南省', N'驻马店市', N'女神霞', N'河南省驻马店市上蔡县袁寨村521号收', N'15736709693', N'471002', NULL, NULL)
INSERT [dbo].[Addrees] ([Id], [Uid], [ShengFen], [City], [Name], [Addrees], [Phone], [Postcode], [County], [Ext2]) VALUES (14, 7, N'河南省', N'洛阳市', N'陈永佳', N'河南省洛阳市涧西区46', N'15638589820', N'471000', NULL, NULL)
INSERT [dbo].[Addrees] ([Id], [Uid], [ShengFen], [City], [Name], [Addrees], [Phone], [Postcode], [County], [Ext2]) VALUES (15, 8, N'佳佳   ', N'佳佳佳佳', N'撒大大', N'啊啊撒打算打打算打算打打', N'15638589820', N'471000', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Addrees] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [varchar](50) NOT NULL,
	[OrderTime] [datetime] NULL,
	[Uid] [int] NULL,
	[TotalMoney] [money] NULL,
	[Status] [varchar](20) NULL,
	[ShipName] [varchar](20) NULL,
	[ShipTime] [datetime] NULL,
	[Aid] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Ext1] [int] NULL,
	[ShipOrder] [varchar](50) NULL,
 CONSTRAINT [PK__Orders__3214EC072D27B809] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Orders] ([Id], [OrderTime], [Uid], [TotalMoney], [Status], [ShipName], [ShipTime], [Aid], [Remark], [Ext1], [ShipOrder]) VALUES (N'41AB15F8-8F6D-4B7A-BA43-BA04DAF567F1', CAST(0x0000A85700034775 AS DateTime), 8, 3888.0000, N'未发货', N'顺丰快递', NULL, 2, N'要黑色的，尽快发货哦，尽快', NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderTime], [Uid], [TotalMoney], [Status], [ShipName], [ShipTime], [Aid], [Remark], [Ext1], [ShipOrder]) VALUES (N'51AB88F8-8F6D-4B7A-BA43-BA04DAF313F1', CAST(0x0000A85800034775 AS DateTime), 8, 6666.0000, N'已发货', N'顺丰快递', CAST(0x0000A85800034775 AS DateTime), 15, N'要黑色的，尽快发货哦，尽快', NULL, N'd85988d11a7842d88561d5f3dcca3c4c')
INSERT [dbo].[Orders] ([Id], [OrderTime], [Uid], [TotalMoney], [Status], [ShipName], [ShipTime], [Aid], [Remark], [Ext1], [ShipOrder]) VALUES (N'61AB43F8-8F6D-4B7A-BA43-BA04DAF456F1', CAST(0x0000A85800034775 AS DateTime), 8, 9999.0000, N'已评价', N'顺丰快递', CAST(0x0000A85800034775 AS DateTime), 15, N'要黑色的，尽快发货哦，尽快', NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderTime], [Uid], [TotalMoney], [Status], [ShipName], [ShipTime], [Aid], [Remark], [Ext1], [ShipOrder]) VALUES (N'6523BF2B-5C62-4C0B-A4D1-0BC23C298EE6', CAST(0x0000A84E00EE67E5 AS DateTime), 8, 3888.0000, N'已评价', N'顺丰快递', CAST(0x0000A860015C7AF4 AS DateTime), 2, N'要黑色的，尽快发货哦，尽快', NULL, N'2fcb55d2832c4c28902c9b3c81e991d6')
/****** Object:  Table [dbo].[Shopping]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shopping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pid] [int] NOT NULL,
	[Uid] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[Ext1] [varchar](50) NULL,
	[Ext2] [varchar](2000) NULL,
 CONSTRAINT [PK__Shopping__3214EC07182C9B23] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Shopping] ON
INSERT [dbo].[Shopping] ([Id], [Pid], [Uid], [Num], [Ext1], [Ext2]) VALUES (69, 84, 6, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Shopping] OFF
/****** Object:  Table [dbo].[Review]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [int] NOT NULL,
	[Pid] [int] NOT NULL,
	[Content] [varchar](2000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[HContent] [varchar](2000) NULL,
	[HCreateTime] [datetime] NULL,
	[Stars] [int] NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](2000) NULL,
 CONSTRAINT [PK__Review__CAF055CA1A14E395] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (1, 8, 33, N'阿迪达斯大品牌质量好，这是一款不错的鞋！', CAST(0x0000A85100C6B678 AS DateTime), N'谢谢您的评论，欢迎下次光临！', CAST(0x0000A85200C6B678 AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (2, 8, 39, N'阿迪达斯大品牌质量好，这是一款不错的鞋，赞赞赞！', CAST(0x0000A85100C6B678 AS DateTime), N'规范化和规范化废话废话废话', CAST(0x0000A86400F7F96F AS DateTime), 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (3, 8, 45, N'阿迪达斯大品牌质量好，这是一款不错的鞋，666666！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (4, 8, 46, N'阿迪达斯大品牌质量好，这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (5, 8, 55, N'阿迪达斯大品牌质量好，Good Good Good！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (6, 8, 56, N'这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (7, 8, 65, N'这是一款不错的鞋，良心制作，Good Good Good！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (8, 8, 66, N'阿迪达斯大品牌质量好，下功夫了贴合用户需求，Good Good Good！', CAST(0x0000A85100C6B678 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (9, 7, 33, N'阿迪达斯大品牌质量好，这是一款不错的鞋！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (10, 7, 39, N'阿迪达斯大品牌质量好，这是一款不错的鞋，赞赞赞！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (11, 7, 45, N'阿迪达斯大品牌质量好，这是一款不错的鞋，666666！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (12, 7, 46, N'阿迪达斯大品牌质量好，这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (13, 7, 55, N'阿迪达斯大品牌质量好，Good Good Good！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (14, 7, 56, N'这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (15, 7, 65, N'这是一款不错的鞋，良心制作，Good Good Good！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (16, 7, 66, N'阿迪达斯大品牌质量好，下功夫了贴合用户需求，Good Good Good！', CAST(0x0000A85100F09FCF AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (17, 9, 33, N'阿迪达斯大品牌质量好，这是一款不错的鞋！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (18, 9, 39, N'阿迪达斯大品牌质量好，这是一款不错的鞋，赞赞赞！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (19, 9, 45, N'阿迪达斯大品牌质量好，这是一款不错的鞋，666666！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (20, 9, 46, N'阿迪达斯大品牌质量好，这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (21, 9, 55, N'阿迪达斯大品牌质量好，Good Good Good！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (22, 9, 56, N'这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (23, 9, 65, N'这是一款不错的鞋，良心制作，Good Good Good！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (24, 9, 66, N'阿迪达斯大品牌质量好，下功夫了贴合用户需求，Good Good Good！', CAST(0x0000A85100F0B7CB AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (25, 10, 33, N'阿迪达斯大品牌质量好，这是一款不错的鞋！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (26, 10, 39, N'阿迪达斯大品牌质量好，这是一款不错的鞋，赞赞赞！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (27, 10, 45, N'阿迪达斯大品牌质量好，这是一款不错的鞋，666666！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (28, 10, 46, N'阿迪达斯大品牌质量好，这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (29, 10, 55, N'阿迪达斯大品牌质量好，Good Good Good！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (30, 10, 56, N'这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (31, 10, 65, N'这是一款不错的鞋，良心制作，Good Good Good！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (32, 10, 66, N'阿迪达斯大品牌质量好，下功夫了贴合用户需求，Good Good Good！', CAST(0x0000A85100F0D086 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (33, 5, 33, N'阿迪达斯大品牌质量好，这是一款不错的鞋！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (34, 6, 39, N'阿迪达斯大品牌质量好，这是一款不错的鞋，赞赞赞！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (35, 7, 45, N'阿迪达斯大品牌质量好，这是一款不错的鞋，666666！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (36, 8, 46, N'阿迪达斯大品牌质量好，这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (37, 9, 55, N'阿迪达斯大品牌质量好，Good Good Good！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (38, 10, 56, N'这是一款不错的鞋，Good Good Good！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (39, 43, 65, N'这是一款不错的鞋，良心制作，Good Good Good！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (40, 43, 66, N'阿迪达斯大品牌质量好，下功夫了贴合用户需求，Good Good Good！', CAST(0x0000A85100F105E4 AS DateTime), NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (43, 8, 3, N'不错不错很赞', CAST(0x0000A860011E40C0 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (45, 8, 4, N'不错不错很不错的一双鞋，赞赞赞！', CAST(0x0000A860015A9CF8 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (47, 8, 4, N'很不错的一双鞋子，良心制作赞赞赞！', CAST(0x0000A860015BC3F5 AS DateTime), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (48, 8, 5, N'这双鞋子一般般，价格与实用性不符合！', CAST(0x0000A860015CAD56 AS DateTime), NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Review] ([Rid], [Uid], [Pid], [Content], [CreateTime], [HContent], [HCreateTime], [Stars], [Ext1], [Ext2]) VALUES (50, 8, 5, N'爱迪生看得见哈数据库等哈看到哈市科技等哈说尽快的哈是可敬的哈萨克德哈卡德哈卡电话卡！', CAST(0x0000A860015EBF5D AS DateTime), NULL, NULL, 5, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Review] OFF
/****** Object:  Table [dbo].[ProductPic]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductPic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pid] [int] NOT NULL,
	[PicUrl] [varchar](500) NULL,
	[PicUrlType] [varchar](50) NOT NULL,
	[Wigther] [int] NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPic] ON
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (1, 4, N'1002-neo', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (2, 4, N'1003-neo', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (3, 2, N'1001-o2', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (4, 2, N'1001-o3', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (5, 3, N'1002-o2', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (6, 3, N'1002-o3', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (7, 5, N'1005-neo', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (8, 5, N'1006-neo', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (9, 6, N'1011-o', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (10, 6, N'1012-o', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (11, 7, N'1008-neo', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (12, 7, N'1009-neo', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (13, 23, N'1014-o', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (14, 23, N'1015-o', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (15, 28, N'1017-o', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (16, 28, N'1018-o', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (17, 33, N'1023-lan', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (18, 33, N'1024-lan', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (19, 39, N'1020-lan', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (20, 39, N'1021-lan', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (21, 45, N'1026-pao', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (22, 45, N'1027-pao', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (23, 46, N'1029-pao', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (24, 46, N'1030-pao', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (25, 55, N'1032-pao', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (26, 55, N'1033-pao', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (27, 56, N'1035-pao', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (28, 56, N'1036-pao', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (29, 65, N'1038-hai', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (30, 65, N'1039-hai', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (31, 66, N'1041-hai', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (32, 66, N'1042-hai', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (33, 71, N'1001-xiayi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (34, 71, N'1001-xiayi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (35, 72, N'1002-xiayi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (36, 72, N'1002-xiayi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (37, 73, N'1001-shangyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (38, 73, N'1001-shangyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (39, 74, N'1002-shangyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (40, 74, N'1002-shangyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (41, 77, N'1001-bisai1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (42, 77, N'1001-bisai2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (43, 78, N'1002-bisai1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (44, 78, N'1002-bisai2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (45, 79, N'1001-yongzhuang1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (46, 79, N'1001-yongzhuang2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (47, 80, N'1002-yongzhuang1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (48, 80, N'1002-yongzhuang2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (49, 81, N'1003-yongzhuang1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (50, 81, N'1003-yongzhuang2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (51, 82, N'1001-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (52, 82, N'1001-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (53, 83, N'1002-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (54, 83, N'1002-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (55, 84, N'1003-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (56, 84, N'1003-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (57, 85, N'1004-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (58, 85, N'1004-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (59, 86, N'1001-bao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (60, 86, N'1001-bao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (61, 87, N'1002-bao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (62, 87, N'1002-bao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (63, 88, N'1003-bao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (64, 88, N'1003-bao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (65, 89, N'1004-bao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (66, 89, N'1004-bao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (67, 90, N'1001-zuqiu1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (68, 90, N'1001-zuqiu2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (69, 91, N'1002-zuqiu1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (70, 91, N'1002-zuqiu2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (71, 92, N'1003-zuqiu1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (72, 92, N'1003-zuqiu2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (73, 93, N'1004-zuqiu1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (74, 93, N'1004-zuqiu2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (75, 94, N'1003-shangyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (76, 94, N'1003-shangyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (77, 95, N'1004-shangyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (78, 95, N'1004-shangyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (79, 96, N'1001-lianyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (80, 96, N'1001-lianyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (81, 97, N'1002-lianyi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (82, 97, N'1002-lianyi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (83, 98, N'1004-yongzhuang1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (84, 98, N'1004-yongzhuang2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (85, 99, N'1001-yurong1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (86, 99, N'1001-yurong2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (87, 100, N'1002-yurong1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (88, 100, N'1002-yurong2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (89, 101, N'1003-xiayi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (90, 101, N'1003-xiayi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (91, 102, N'1004-xiayi1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (92, 102, N'1004-xiayi2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (93, 103, N'1005-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (94, 103, N'1005-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (95, 104, N'1006-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (96, 104, N'1006-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (97, 105, N'1007-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (98, 105, N'1007-T2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (99, 106, N'1008-T1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (100, 106, N'1008-T2', N'细图', 1, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (101, 107, N'1001-nanda1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (102, 107, N'1001-nanda2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (103, 108, N'1002-nanda1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (104, 108, N'1002-nanda2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (105, 109, N'1001-nvda1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (106, 109, N'1001-nvda2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (107, 110, N'1002-nvda1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (108, 110, N'1002-nvda2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (109, 111, N'1003-nanxiao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (110, 111, N'1003-nanxiao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (111, 112, N'1004-nanxiao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (112, 112, N'1004-nanxiao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (113, 113, N'1003-nvxiao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (114, 113, N'1003-nvxiao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (115, 114, N'1004-nvxiao1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (116, 114, N'1004-nvxiao2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (117, 115, N'1005-nanyou1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (118, 115, N'1005-nanyou2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (119, 116, N'1006-nanyou1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (120, 116, N'1006-nanyou2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (121, 117, N'1005-nvyou1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (122, 117, N'1005-nvyou2', N'细图', 1, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (123, 118, N'1006-nvyou1', N'细图', 2, NULL, NULL)
INSERT [dbo].[ProductPic] ([Id], [Pid], [PicUrl], [PicUrlType], [Wigther], [Ext1], [Ext2]) VALUES (124, 118, N'1006-nvyou2', N'细图', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductPic] OFF
/****** Object:  Table [dbo].[ZhuPosition]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZhuPosition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pid] [int] NOT NULL,
	[PirUrl] [varchar](80) NULL,
	[Posid] [int] NOT NULL,
	[Type] [varchar](20) NULL,
	[Weight] [int] NULL,
 CONSTRAINT [PK__ZhuPosit__3214EC0760A75C0F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ZhuPosition] ON
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (2, 72, NULL, 3, N'商品', 7)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (3, 73, NULL, 3, N'商品', 6)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (4, 77, NULL, 3, N'商品', 5)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (5, 88, NULL, 3, N'商品', 4)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (6, 7, NULL, 3, N'商品', 3)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (7, 4, NULL, 3, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (8, 6, NULL, 3, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (9, 5, N'main2', 11, N'广告', 3)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (10, 4, N'main_1', 1, N'广告', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (11, 4, N'main_3', 1, N'广告', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (12, 85, NULL, 6, N'商品', 8)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (13, 86, NULL, 6, N'商品', 7)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (14, 4, NULL, 6, N'商品', 6)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (15, 5, NULL, 6, N'商品', 5)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (16, 6, NULL, 6, N'商品', 4)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (17, 7, NULL, 6, N'商品', 3)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (18, 45, NULL, 6, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (19, 10, NULL, 6, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (21, 84, NULL, 7, N'商品', 8)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (22, 23, NULL, 7, N'商品', 7)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (23, 87, NULL, 7, N'商品', 6)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (24, 78, NULL, 7, N'商品', 5)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (25, 3, NULL, 7, N'商品', 4)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (26, 2, NULL, 7, N'商品', 3)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (27, 65, NULL, 7, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (28, 33, NULL, 7, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (34, 79, NULL, 3, N'商品', 8)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (35, 72, NULL, 8, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (36, 73, NULL, 8, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (37, 4, NULL, 8, N'商品', 4)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (38, 82, NULL, 8, N'商品', 3)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (39, 71, NULL, 9, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (40, 4, NULL, 9, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (41, 117, NULL, 10, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (42, 98, NULL, 10, N'商品', 1)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (43, 118, NULL, 11, N'商品', 2)
INSERT [dbo].[ZhuPosition] ([Id], [Pid], [PirUrl], [Posid], [Type], [Weight]) VALUES (44, 66, NULL, 11, N'商品', 1)
SET IDENTITY_INSERT [dbo].[ZhuPosition] OFF
/****** Object:  View [dbo].[View_Review]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[View_Review]
as
select r.*,p.Pname as Pname,a.Uname as Uname from Review r,Product p,UserInfo a where r.Pid=p.Id and r.Uid=a.Uid
GO
/****** Object:  Table [dbo].[OrdersDetail]    Script Date: 01/10/2018 20:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdersDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Oid] [varchar](50) NOT NULL,
	[Pid] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Remark] [varchar](200) NULL,
	[Ext1] [int] NULL,
	[Ext2] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersDetail] ON
INSERT [dbo].[OrdersDetail] ([Id], [Oid], [Pid], [Quantity], [Remark], [Ext1], [Ext2]) VALUES (1, N'41AB15F8-8F6D-4B7A-BA43-BA04DAF567F1', 2, 3, N'要黑色的鞋子，尽快发货哦！', NULL, NULL)
INSERT [dbo].[OrdersDetail] ([Id], [Oid], [Pid], [Quantity], [Remark], [Ext1], [Ext2]) VALUES (2, N'51AB88F8-8F6D-4B7A-BA43-BA04DAF313F1', 3, 6, N'尽快发货哦！', NULL, NULL)
INSERT [dbo].[OrdersDetail] ([Id], [Oid], [Pid], [Quantity], [Remark], [Ext1], [Ext2]) VALUES (3, N'61AB43F8-8F6D-4B7A-BA43-BA04DAF456F1', 4, 9, N'尽快发货哦！', NULL, NULL)
INSERT [dbo].[OrdersDetail] ([Id], [Oid], [Pid], [Quantity], [Remark], [Ext1], [Ext2]) VALUES (4, N'6523BF2B-5C62-4C0B-A4D1-0BC23C298EE6', 5, 3, N'尽快发货哦！', NULL, NULL)
INSERT [dbo].[OrdersDetail] ([Id], [Oid], [Pid], [Quantity], [Remark], [Ext1], [Ext2]) VALUES (6, N'41AB15F8-8F6D-4B7A-BA43-BA04DAF567F1', 3, 7, N'要蓝色的鞋子，尽快发货哦！', NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrdersDetail] OFF
/****** Object:  Default [DF__Orders__OrderTim__2F10007B]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__OrderTim__2F10007B]  DEFAULT (getdate()) FOR [OrderTime]
GO
/****** Object:  Default [DF__Orders__ShipName__31EC6D26]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__ShipName__31EC6D26]  DEFAULT ('顺丰快递') FOR [ShipName]
GO
/****** Object:  Default [DF__Product__CanUse__1CF15040]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__CanUse__1CF15040]  DEFAULT ('是') FOR [CanUse]
GO
/****** Object:  Default [DF__Review__CreateTi__286302EC]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF__Review__CreateTi__286302EC]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__UserInfo__Create__0519C6AF]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF__UserInfo__Create__0519C6AF]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__UserInfo__Flag__060DEAE8]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF__UserInfo__Flag__060DEAE8]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Check [CK__Orders__Status__30F848ED]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [CK__Orders__Status__30F848ED] CHECK  (([Status]='未付款' OR [Status]='未发货' OR [Status]='已发货' OR [Status]='未评价' OR [Status]='已评价'))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [CK__Orders__Status__30F848ED]
GO
/****** Object:  Check [CK__Product__CanUse__1DE57479]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CK__Product__CanUse__1DE57479] CHECK  (([CanUse]='是' OR [CanUse]='否'))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CK__Product__CanUse__1DE57479]
GO
/****** Object:  Check [CK__UserInfo__Flag__07020F21]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [CK__UserInfo__Flag__07020F21] CHECK  (([Flag]='0' OR [Flag]='1' OR [Flag]='2'))
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [CK__UserInfo__Flag__07020F21]
GO
/****** Object:  Check [CK__UserInfo__Sex__0425A276]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [CK__UserInfo__Sex__0425A276] CHECK  (([Sex]='男' OR [Sex]='女'))
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [CK__UserInfo__Sex__0425A276]
GO
/****** Object:  ForeignKey [FK__Addrees__Uid__239E4DCF]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Addrees]  WITH CHECK ADD  CONSTRAINT [FK__Addrees__Uid__239E4DCF] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserInfo] ([Uid])
GO
ALTER TABLE [dbo].[Addrees] CHECK CONSTRAINT [FK__Addrees__Uid__239E4DCF]
GO
/****** Object:  ForeignKey [FK__Orders__Aid__32E0915F]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Aid__32E0915F] FOREIGN KEY([Aid])
REFERENCES [dbo].[Addrees] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Aid__32E0915F]
GO
/****** Object:  ForeignKey [FK__Orders__Uid__300424B4]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Uid__300424B4] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserInfo] ([Uid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Uid__300424B4]
GO
/****** Object:  ForeignKey [FK__OrdersDetai__Oid__37A5467C]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrdersDetai__Oid__37A5467C] FOREIGN KEY([Oid])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrdersDetail] CHECK CONSTRAINT [FK__OrdersDetai__Oid__37A5467C]
GO
/****** Object:  ForeignKey [FK__OrdersDetai__Pid__38996AB5]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrdersDetai__Pid__38996AB5] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrdersDetail] CHECK CONSTRAINT [FK__OrdersDetai__Pid__38996AB5]
GO
/****** Object:  ForeignKey [FK__Product__Sid__1ED998B2]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Sid__1ED998B2] FOREIGN KEY([Sid])
REFERENCES [dbo].[Specification] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Sid__1ED998B2]
GO
/****** Object:  ForeignKey [FK__Product__TyId__1BFD2C07]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__TyId__1BFD2C07] FOREIGN KEY([TyId])
REFERENCES [dbo].[TitleType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__TyId__1BFD2C07]
GO
/****** Object:  ForeignKey [FK__ProductPic__Pid__4316F928]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[ProductPic]  WITH CHECK ADD  CONSTRAINT [FK__ProductPic__Pid__4316F928] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductPic] CHECK CONSTRAINT [FK__ProductPic__Pid__4316F928]
GO
/****** Object:  ForeignKey [FK__Review__Pid__29572725]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__Pid__29572725] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__Pid__29572725]
GO
/****** Object:  ForeignKey [FK__Review__Uid__286302EC]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__Uid__286302EC] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserInfo] ([Uid])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__Uid__286302EC]
GO
/****** Object:  ForeignKey [FK__Shopping__Pid__3D5E1FD2]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Shopping]  WITH CHECK ADD  CONSTRAINT [FK__Shopping__Pid__3D5E1FD2] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Shopping] CHECK CONSTRAINT [FK__Shopping__Pid__3D5E1FD2]
GO
/****** Object:  ForeignKey [FK__Shopping__Uid__3E52440B]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[Shopping]  WITH CHECK ADD  CONSTRAINT [FK__Shopping__Uid__3E52440B] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserInfo] ([Uid])
GO
ALTER TABLE [dbo].[Shopping] CHECK CONSTRAINT [FK__Shopping__Uid__3E52440B]
GO
/****** Object:  ForeignKey [FK__ZhuPositi__Posid__6383C8BA]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[ZhuPosition]  WITH CHECK ADD  CONSTRAINT [FK__ZhuPositi__Posid__6383C8BA] FOREIGN KEY([Posid])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[ZhuPosition] CHECK CONSTRAINT [FK__ZhuPositi__Posid__6383C8BA]
GO
/****** Object:  ForeignKey [FK__ZhuPosition__Pid__628FA481]    Script Date: 01/10/2018 20:02:16 ******/
ALTER TABLE [dbo].[ZhuPosition]  WITH CHECK ADD  CONSTRAINT [FK__ZhuPosition__Pid__628FA481] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ZhuPosition] CHECK CONSTRAINT [FK__ZhuPosition__Pid__628FA481]
GO
