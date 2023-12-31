USE [test]
GO
/****** Object:  Table [dbo].[tblRevenue]    Script Date: 08/19/2015 17:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRevenue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [bigint] NULL,
	[quarter] [varchar](4) NULL,
	[year] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblRevenue] ON
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (1, 1000, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (2, 1200, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (3, 1200, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (4, 500, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (5, 500, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (6, 450, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (7, 60, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (8, 670, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (9, 6700, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (10, 6700, N'Q1', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (11, 6700, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (12, 700, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (13, 700, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (14, 700, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (15, 670, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (16, 70, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (17, 70, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (18, 780, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (19, 7809, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (20, 7889, N'Q2', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (21, 900, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (22, 4500, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (23, 400, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (24, 2300, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (25, 120, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (26, 12023, N'Q3', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (27, 4023, N'Q4', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (28, 4023, N'Q4', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (29, 4023, N'Q4', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (30, 7023, N'Q4', N'2010')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (31, 7023, N'Q4', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (32, 7023, N'Q4', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (33, 7423, N'Q4', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (34, 7434, N'Q4', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (35, 232, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (36, 2326, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (37, 1234, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (38, 5634, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (39, 7856, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (40, 856, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (41, 8566, N'Q1', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (42, 8566, N'Q2', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (43, 5566, N'Q2', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (44, 5566, N'Q2', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (45, 1266, N'Q2', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (46, 1266, N'Q2', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (47, 1266, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (48, 9266, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (49, 2344, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (50, 2342, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (51, 544, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (52, 433, N'Q3', N'2011')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (53, 433, N'Q3', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (54, 4335, N'Q1', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (55, 3335, N'Q1', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (56, 11135, N'Q1', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (57, 11135, N'Q1', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (58, 11135, N'Q2', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (59, 4564, N'Q2', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (60, 2343, N'Q2', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (61, 5676, N'Q2', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (62, 5676, N'Q3', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (63, 7876, N'Q3', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (64, 7876, N'Q3', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (65, 2321, N'Q3', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (66, 1500, N'Q4', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (67, 14500, N'Q4', N'2012')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (68, 5000, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (69, 5000, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (70, 1200, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (71, 3000, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (72, 1200, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (73, 1200, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (74, 1200, N'Q1', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (75, 12000, N'Q2', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (76, 12000, N'Q2', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (77, 11000, N'Q3', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (78, 11000, N'Q3', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (79, 6000, N'Q3', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (80, 13000, N'Q4', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (81, 232, N'Q4', N'2013')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (82, 232, N'Q1', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (83, 23452, N'Q1', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (84, 5654, N'Q1', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (85, 5654, N'Q2', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (86, 5654, N'Q2', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (87, 5654, N'Q2', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (88, 5654, N'Q2', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (89, 6766, N'Q3', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (90, 6766, N'Q3', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (91, 6766, N'Q3', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (92, 6766, N'Q3', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (93, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (94, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (95, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (96, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (97, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (98, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (99, 3444, N'Q4', N'2014')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (100, 3444, N'Q4', N'2014')
GO
print 'Processed 100 total records'
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (101, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (102, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (103, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (104, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (105, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (106, 3444, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (107, 7654, N'Q1', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (108, 7654, N'Q2', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (109, 7654, N'Q2', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (110, 7654, N'Q2', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (111, 7654, N'Q2', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (112, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (113, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (114, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (115, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (116, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (117, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (118, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (119, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (120, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (121, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (122, 2345, N'Q3', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (123, 5445, N'Q4', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (124, 5445, N'Q4', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (125, 5445, N'Q4', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (126, 5445, N'Q4', N'2015')
INSERT [dbo].[tblRevenue] ([Id], [amount], [quarter], [year]) VALUES (127, 5445, N'Q4', N'2015')
SET IDENTITY_INSERT [dbo].[tblRevenue] OFF
