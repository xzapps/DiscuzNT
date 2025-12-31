CREATE TABLE [dbo].[dnt_forumfields] (
    [fid]              INT            NOT NULL,
    [password]         NVARCHAR (16)  NOT NULL,
    [icon]             VARCHAR (255)  NULL,
    [postcredits]      VARCHAR (255)  NULL,
    [replycredits]     VARCHAR (255)  NULL,
    [redirect]         VARCHAR (255)  NULL,
    [attachextensions] VARCHAR (255)  NULL,
    [rules]            TEXT           NULL,
    [topictypes]       TEXT           NULL,
    [viewperm]         TEXT           NULL,
    [postperm]         TEXT           NULL,
    [replyperm]        TEXT           NULL,
    [getattachperm]    TEXT           NULL,
    [postattachperm]   TEXT           NULL,
    [moderators]       NTEXT          NULL,
    [description]      NTEXT          NULL,
    [applytopictype]   TINYINT        CONSTRAINT [DF_dnt_forumfields_applytopictype] DEFAULT ((0)) NOT NULL,
    [postbytopictype]  TINYINT        CONSTRAINT [DF_dnt_forumfields_postbytopictype] DEFAULT ((0)) NOT NULL,
    [viewbytopictype]  TINYINT        CONSTRAINT [DF_dnt_forumfields_viewbytopictype] DEFAULT ((0)) NOT NULL,
    [topictypeprefix]  TINYINT        CONSTRAINT [DF_dnt_forumfields_topictypeprefix] DEFAULT ((0)) NOT NULL,
    [permuserlist]     NTEXT          NULL,
    [seokeywords]      NVARCHAR (500) NULL,
    [seodescription]   NVARCHAR (500) NULL,
    [rewritename]      NVARCHAR (20)  NULL
);


GO
CREATE NONCLUSTERED INDEX [dnt_forumfields_fid]
    ON [dbo].[dnt_forumfields]([fid] ASC);

