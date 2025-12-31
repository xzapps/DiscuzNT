CREATE TABLE [dbo].[dnt_navs] (
    [id]           INT        IDENTITY (1, 1) NOT NULL,
    [parentid]     INT        CONSTRAINT [DF_dnt_navs_parentid] DEFAULT ((0)) NOT NULL,
    [name]         CHAR (50)  NOT NULL,
    [title]        CHAR (255) NOT NULL,
    [url]          CHAR (255) NOT NULL,
    [target]       TINYINT    CONSTRAINT [DF_dnt_navs_target] DEFAULT ((0)) NOT NULL,
    [type]         TINYINT    CONSTRAINT [DF_dnt_navs_type] DEFAULT ((0)) NOT NULL,
    [available]    TINYINT    CONSTRAINT [DF_dnt_navs_available] DEFAULT ((0)) NOT NULL,
    [displayorder] INT        NOT NULL,
    [highlight]    TINYINT    CONSTRAINT [DF_dnt_navs_highlight] DEFAULT ((0)) NOT NULL,
    [level]        TINYINT    CONSTRAINT [DF_dnt_navs_level] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_navs_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

