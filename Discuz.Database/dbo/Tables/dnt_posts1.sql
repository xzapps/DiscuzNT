CREATE TABLE [dbo].[dnt_posts1] (
    [pid]          INT           CONSTRAINT [DF_dnt_posts1_pid] DEFAULT ((0)) NOT NULL,
    [fid]          INT           NOT NULL,
    [tid]          INT           NOT NULL,
    [parentid]     INT           CONSTRAINT [DF_dnt_posts1_parentid] DEFAULT ((0)) NOT NULL,
    [layer]        INT           CONSTRAINT [DF_dnt_posts1_layer] DEFAULT ((0)) NOT NULL,
    [poster]       NVARCHAR (20) CONSTRAINT [DF_dnt_posts1_poster] DEFAULT ('') NOT NULL,
    [posterid]     INT           CONSTRAINT [DF_dnt_posts1_posterid] DEFAULT ((0)) NOT NULL,
    [title]        NVARCHAR (60) NOT NULL,
    [postdatetime] DATETIME      CONSTRAINT [DF_dnt_posts1_postdatetime] DEFAULT (getdate()) NOT NULL,
    [message]      NTEXT         CONSTRAINT [DF_dnt_posts1_message] DEFAULT ('') NOT NULL,
    [ip]           NVARCHAR (15) CONSTRAINT [DF_dnt_posts1_ip] DEFAULT ('') NOT NULL,
    [lastedit]     NVARCHAR (50) CONSTRAINT [DF_dnt_posts1_lastedit] DEFAULT ('') NOT NULL,
    [invisible]    INT           CONSTRAINT [DF_dnt_posts1_invisible] DEFAULT ((0)) NOT NULL,
    [usesig]       INT           CONSTRAINT [DF_dnt_posts1_usesig] DEFAULT ((0)) NOT NULL,
    [htmlon]       INT           CONSTRAINT [DF_dnt_posts1_htmlon] DEFAULT ((0)) NOT NULL,
    [smileyoff]    INT           CONSTRAINT [DF_dnt_posts1_smileyoff] DEFAULT ((0)) NOT NULL,
    [parseurloff]  INT           CONSTRAINT [DF_dnt_posts1_parseurloff] DEFAULT ((0)) NOT NULL,
    [bbcodeoff]    INT           CONSTRAINT [DF_dnt_posts1_bbcodeoff] DEFAULT ((0)) NOT NULL,
    [attachment]   INT           CONSTRAINT [DF_dnt_posts1_attachment] DEFAULT ((0)) NOT NULL,
    [rate]         INT           CONSTRAINT [DF_dnt_posts1_rate] DEFAULT ((0)) NOT NULL,
    [ratetimes]    INT           CONSTRAINT [DF_dnt_posts1_ratetimes] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_posts1] PRIMARY KEY CLUSTERED ([pid] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [showtopic]
    ON [dbo].[dnt_posts1]([tid] ASC, [invisible] ASC, [pid] ASC);


GO
CREATE NONCLUSTERED INDEX [treelist]
    ON [dbo].[dnt_posts1]([tid] ASC, [invisible] ASC, [parentid] ASC);


GO
CREATE NONCLUSTERED INDEX [tid]
    ON [dbo].[dnt_posts1]([tid] ASC);


GO
CREATE NONCLUSTERED INDEX [parentid]
    ON [dbo].[dnt_posts1]([parentid] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_posts1_posterid]
    ON [dbo].[dnt_posts1]([posterid] ASC, [tid] ASC, [pid] ASC)
    INCLUDE([postdatetime]);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_posts1_fid]
    ON [dbo].[dnt_posts1]([fid] ASC, [tid] ASC, [posterid] ASC)
    INCLUDE([title], [postdatetime], [poster]);

