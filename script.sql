USE [Adresses]
GO
/****** Object:  Table [dbo].[PersonalInform]    Script Date: 15.07.2022 22:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonalInform](
	[PersonalInformID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[phone] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonalInformID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Streets]    Script Date: 15.07.2022 22:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Streets](
	[StreetsID] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[country] [varchar](100) NULL,
	[region] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StreetsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[StreetsAndInformations]    Script Date: 15.07.2022 22:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[StreetsAndInformations] 
(		
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
	

	* from PersonalInform Pı
	
)

GO
/****** Object:  UserDefinedFunction [dbo].[StreetsAndInforms]    Script Date: 15.07.2022 22:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[StreetsAndInforms] 
(		
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
	

	* from PersonalInform Pı
	
)

GO
SET IDENTITY_INSERT [dbo].[PersonalInform] ON 

INSERT [dbo].[PersonalInform] ([PersonalInformID], [name], [phone]) VALUES (1, N'Eve Lopez', N'1-557-861-9514')
INSERT [dbo].[PersonalInform] ([PersonalInformID], [name], [phone]) VALUES (2, N'Eric Padilla', N'1-388-874-3279')
INSERT [dbo].[PersonalInform] ([PersonalInformID], [name], [phone]) VALUES (3, N'Pandora Walter', N'(285) 554-1496')
INSERT [dbo].[PersonalInform] ([PersonalInformID], [name], [phone]) VALUES (4, N'Violet Perkins', N'1-848-918-6839')
INSERT [dbo].[PersonalInform] ([PersonalInformID], [name], [phone]) VALUES (5, N'Iris Miranda', N'(689) 597-7786')
SET IDENTITY_INSERT [dbo].[PersonalInform] OFF
SET IDENTITY_INSERT [dbo].[Streets] ON 

INSERT [dbo].[Streets] ([StreetsID], [address], [country], [region]) VALUES (1, N'P.O. Box 498, 9150 At Av.', N'Austria', N'Carmarthenshire')
INSERT [dbo].[Streets] ([StreetsID], [address], [country], [region]) VALUES (2, N'496-1034 Mi St.', N'Germany', N'South Island')
INSERT [dbo].[Streets] ([StreetsID], [address], [country], [region]) VALUES (3, N'425-6929 Elit. Street', N'Ireland', N'Kaduna')
INSERT [dbo].[Streets] ([StreetsID], [address], [country], [region]) VALUES (4, N'1261 Lorem Street', N'Canada', N'Limousin')
INSERT [dbo].[Streets] ([StreetsID], [address], [country], [region]) VALUES (5, N'274-5769 Diam Ave', N'China', N'Baden Württemberg')
SET IDENTITY_INSERT [dbo].[Streets] OFF
