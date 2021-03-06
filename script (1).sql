USE [PRJ321E5_PROJECT]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[contents] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contact_1] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[username] [nvarchar](50) NOT NULL,
	[content] [nvarchar](50) NOT NULL,
	[pid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[OrderTotalPrice] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [int] NOT NULL,
	[OrderID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[ProductImage] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24/03/2021 1:52:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'abc', N'abc@gmail.com', N'0987654321', N'I love your cake')
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'Ã¡dasdsds', N'nguyen23012000@gmail.com', N'0342300469', N'dáº¥dasdsds')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (6, 1, 299000, 8, N'ha')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (7, 1, 299000, 8, N'ha')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (9, 1, 300000, 2, N'admin')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (10, 1, 300000, 3, N'nguyen')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (11, 1, 300000, 6, N'nguyen')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (12, 10, 3000000, 3, N'nguyen')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (2, N'9D G08-TWS', 900000, N'Q2.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (3, N'MB Jazzwalker', 1000000, N'Q3.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (5, N' Haylou GT1', 790000, N'Q5.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (6, N'BOSE QUIETCONTROL 30', 8490000, N'Q6.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (7, N'Sony TWS D76', 305000, N'Q7.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (8, N'Sony WH-CH510', 1040000, N'Q8.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (9, N'Airpods Pro Rep 1:1', 1080000, N'Q9.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (11, N' Stereo Headset SBH50', 1300000, N'Q11.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (12, N'Sony WH-XB900N', 4200000, N'Q12.jpg')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage]) VALUES (13, N'nguyeooj', 1231, N'qư.jpg')
INSERT [dbo].[User] ([username], [password], [email], [phone]) VALUES (N'admin', N'admin', N'admin@gmail.com', N'0987654321')
INSERT [dbo].[User] ([username], [password], [email], [phone]) VALUES (N'ha', N'123', N'hathanh1999@gmail.com', N'0382181359')
INSERT [dbo].[User] ([username], [password], [email], [phone]) VALUES (N'nguyen', N'123456', N'nguyen23012000@gmail.com', N'0342300469')
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
