CREATE TABLE [dbo].[dnt_templates] (
    [templateid]  SMALLINT       IDENTITY (1, 1) NOT NULL,
    [directory]   VARCHAR (100)  NOT NULL,
    [name]        NVARCHAR (50)  NOT NULL,
    [author]      NVARCHAR (100) NOT NULL,
    [createdate]  NVARCHAR (50)  NOT NULL,
    [ver]         NVARCHAR (100) NOT NULL,
    [fordntver]   NVARCHAR (100) NOT NULL,
    [copyright]   NVARCHAR (100) NOT NULL,
    [templateurl] NVARCHAR (100) CONSTRAINT [DF_dnt_templates_templateurl] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_dnt_templates] PRIMARY KEY CLUSTERED ([templateid] ASC)
);

