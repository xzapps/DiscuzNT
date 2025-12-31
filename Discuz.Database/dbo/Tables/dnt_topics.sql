CREATE TABLE [dbo].[dnt_topics] (
    [tid]          INT           IDENTITY (1, 1) NOT NULL,
    [fid]          SMALLINT      NOT NULL,
    [iconid]       TINYINT       CONSTRAINT [DF_dnt_topics_iconid] DEFAULT ((0)) NOT NULL,
    [typeid]       INT           CONSTRAINT [DF_dnt_topics_typeid] DEFAULT ((0)) NOT NULL,
    [readperm]     INT           CONSTRAINT [DF_dnt_topics_readperm] DEFAULT ((0)) NOT NULL,
    [price]        SMALLINT      CONSTRAINT [DF_dnt_topics_price] DEFAULT ((0)) NOT NULL,
    [poster]       NCHAR (20)    CONSTRAINT [DF_dnt_topics_poster] DEFAULT ('') NOT NULL,
    [posterid]     INT           CONSTRAINT [DF_dnt_topics_posterid] DEFAULT ((0)) NOT NULL,
    [title]        NCHAR (60)    NOT NULL,
    [attention]    INT           CONSTRAINT [DF_dnt_topics_attention] DEFAULT ((0)) NOT NULL,
    [postdatetime] DATETIME      CONSTRAINT [DF_dnt_topics_postdatetime] DEFAULT (getdate()) NOT NULL,
    [lastpost]     DATETIME      CONSTRAINT [DF_dnt_topics_lastpost] DEFAULT (getdate()) NOT NULL,
    [lastpostid]   INT           CONSTRAINT [DF_dnt_topics_lastpostid] DEFAULT ((0)) NOT NULL,
    [lastposter]   NCHAR (20)    CONSTRAINT [DF_dnt_topics_lastposter] DEFAULT ('') NOT NULL,
    [lastposterid] INT           CONSTRAINT [DF_dnt_topics_lastposterid] DEFAULT ((0)) NOT NULL,
    [views]        INT           CONSTRAINT [DF_dnt_topics_views] DEFAULT ((0)) NOT NULL,
    [replies]      INT           CONSTRAINT [DF_dnt_topics_replies] DEFAULT ((0)) NOT NULL,
    [displayorder] INT           CONSTRAINT [DF_dnt_topics_displayorder] DEFAULT ((0)) NOT NULL,
    [highlight]    VARCHAR (500) CONSTRAINT [DF_dnt_topics_highlight] DEFAULT ('') NOT NULL,
    [digest]       TINYINT       CONSTRAINT [DF_dnt_topics_digest] DEFAULT ((0)) NOT NULL,
    [rate]         INT           CONSTRAINT [DF_dnt_topics_rate] DEFAULT ((0)) NOT NULL,
    [hide]         INT           CONSTRAINT [DF_dnt_topics_blog] DEFAULT ((0)) NOT NULL,
    [attachment]   INT           CONSTRAINT [DF_dnt_topics_attachment] DEFAULT ((0)) NOT NULL,
    [moderated]    TINYINT       CONSTRAINT [DF_dnt_topics_moderated] DEFAULT ((0)) NOT NULL,
    [closed]       INT           CONSTRAINT [DF_dnt_topics_closed] DEFAULT ((0)) NOT NULL,
    [magic]        INT           CONSTRAINT [DF_dnt_topics_magic] DEFAULT ((0)) NOT NULL,
    [identify]     INT           CONSTRAINT [DF_dnt_topics_identify] DEFAULT ('0') NOT NULL,
    [special]      TINYINT       CONSTRAINT [DF_dnt_topics_special] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_topics] PRIMARY KEY NONCLUSTERED ([tid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fid_displayorder]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC);


GO
CREATE NONCLUSTERED INDEX [displayorder_fid]
    ON [dbo].[dnt_topics]([displayorder] ASC, [fid] ASC);


GO
CREATE NONCLUSTERED INDEX [list_views]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC, [postdatetime] ASC, [views] ASC);


GO
CREATE NONCLUSTERED INDEX [list_replies]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC, [postdatetime] ASC, [replies] ASC);


GO
CREATE NONCLUSTERED INDEX [list_tid]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC, [tid] ASC);


GO
CREATE NONCLUSTERED INDEX [list_date]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC, [postdatetime] ASC, [lastpostid] DESC);


GO
CREATE NONCLUSTERED INDEX [fid]
    ON [dbo].[dnt_topics]([fid] ASC);


GO
CREATE NONCLUSTERED INDEX [displayorder]
    ON [dbo].[dnt_topics]([displayorder] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [list]
    ON [dbo].[dnt_topics]([fid] ASC, [displayorder] ASC, [lastpostid] DESC);

