USE [learnasp]
GO

/****** Object:  Table [dbo].[tb_posts]    Script Date: 06/22/2017 16:27:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_posts](
	[seq] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NOT NULL,
	[content] [text] NULL,
	[status] [text] NULL,
	[deleted] [char](10) NOT NULL,
 CONSTRAINT [PK_tb_posts] PRIMARY KEY CLUSTERED 
(
	[seq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


