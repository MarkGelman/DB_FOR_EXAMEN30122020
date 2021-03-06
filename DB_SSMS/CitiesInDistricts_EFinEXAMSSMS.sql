USE [Cities_In_Districs]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1/6/2021 8:58:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[disctrict_id] [bigint] NOT NULL,
	[mayor] [varchar](50) NULL,
	[population] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 1/6/2021 8:58:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[population] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD FOREIGN KEY([disctrict_id])
REFERENCES [dbo].[Districts] ([id])
GO
