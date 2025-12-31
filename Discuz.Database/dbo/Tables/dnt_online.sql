CREATE TABLE [dbo].[dnt_online] (
    [olid]           INT           IDENTITY (1, 1) NOT NULL,
    [userid]         INT           CONSTRAINT [DF_dnt_online_userid] DEFAULT ((-1)) NOT NULL,
    [ip]             VARCHAR (15)  CONSTRAINT [DF_dnt_online_ip] DEFAULT ('0.0.0.0') NOT NULL,
    [username]       NVARCHAR (20) CONSTRAINT [DF_dnt_online_username] DEFAULT ('') NOT NULL,
    [nickname]       NVARCHAR (20) CONSTRAINT [DF_dnt_online_nickname] DEFAULT ('') NOT NULL,
    [password]       CHAR (32)     CONSTRAINT [DF_dnt_online_password] DEFAULT ('') NOT NULL,
    [groupid]        SMALLINT      CONSTRAINT [DF_dnt_online_groupid] DEFAULT ((0)) NOT NULL,
    [olimg]          VARCHAR (80)  CONSTRAINT [DF_dnt_online_olimg] DEFAULT ('') NOT NULL,
    [adminid]        SMALLINT      CONSTRAINT [DF_dnt_online_adminid] DEFAULT ((0)) NOT NULL,
    [invisible]      SMALLINT      CONSTRAINT [DF_dnt_online_invisible] DEFAULT ((0)) NOT NULL,
    [action]         SMALLINT      CONSTRAINT [DF_dnt_online_action] DEFAULT ((0)) NOT NULL,
    [lastactivity]   SMALLINT      CONSTRAINT [DF_dnt_online_lastactivity] DEFAULT ((0)) NOT NULL,
    [lastposttime]   DATETIME      CONSTRAINT [DF_dnt_online_lastposttime] DEFAULT ('1900-1-1 00:00:00') NOT NULL,
    [lastpostpmtime] DATETIME      CONSTRAINT [DF_dnt_online_lastpostpmtime] DEFAULT ('1900-1-1 00:00:00') NOT NULL,
    [lastsearchtime] DATETIME      CONSTRAINT [DF_dnt_online_lastsearchtime] DEFAULT ('1900-1-1 00:00:00') NOT NULL,
    [lastupdatetime] DATETIME      CONSTRAINT [DF_dnt_online_lastupdatetime] DEFAULT (getdate()) NOT NULL,
    [forumid]        INT           CONSTRAINT [DF_dnt_online_forumid] DEFAULT ((0)) NOT NULL,
    [forumname]      NVARCHAR (50) CONSTRAINT [DF_dnt_online_forumname] DEFAULT ('') NOT NULL,
    [titleid]        INT           CONSTRAINT [DF_dnt_online_titleid] DEFAULT ((0)) NOT NULL,
    [title]          NVARCHAR (80) CONSTRAINT [DF_dnt_online_title] DEFAULT ('') NOT NULL,
    [verifycode]     VARCHAR (10)  CONSTRAINT [DF_dnt_online_verifycode] DEFAULT ('') NOT NULL,
    [newpms]         SMALLINT      CONSTRAINT [DF_dnt_online_newpms] DEFAULT ((0)) NOT NULL,
    [newnotices]     SMALLINT      CONSTRAINT [DF_dnt_online_newnotices] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_online] PRIMARY KEY CLUSTERED ([olid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [forum]
    ON [dbo].[dnt_online]([userid] ASC, [forumid] ASC, [invisible] ASC);


GO
CREATE NONCLUSTERED INDEX [ip]
    ON [dbo].[dnt_online]([userid] ASC, [ip] ASC);


GO
CREATE NONCLUSTERED INDEX [password]
    ON [dbo].[dnt_online]([userid] ASC, [password] ASC);


GO
CREATE NONCLUSTERED INDEX [forumid]
    ON [dbo].[dnt_online]([forumid] ASC);


GO
CREATE NONCLUSTERED INDEX [invisible]
    ON [dbo].[dnt_online]([userid] ASC, [invisible] ASC);

