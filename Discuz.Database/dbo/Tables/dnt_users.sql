CREATE TABLE [dbo].[dnt_users] (
    [uid]           INT             IDENTITY (1, 1) NOT NULL,
    [username]      NCHAR (20)      CONSTRAINT [DF_dnt_users_username] DEFAULT ('') NOT NULL,
    [nickname]      NCHAR (20)      CONSTRAINT [DF_dnt_users_nickname] DEFAULT ('') NOT NULL,
    [password]      CHAR (32)       CONSTRAINT [DF__dnt_users_password] DEFAULT ('') NOT NULL,
    [secques]       CHAR (8)        CONSTRAINT [DF_dnt_users_secques] DEFAULT ('') NOT NULL,
    [spaceid]       INT             CONSTRAINT [DF_dnt_users_spaceid] DEFAULT ((0)) NOT NULL,
    [gender]        INT             CONSTRAINT [DF_dnt_users_gender] DEFAULT ((0)) NOT NULL,
    [adminid]       INT             CONSTRAINT [DF_dnt_users_adminid] DEFAULT ((0)) NOT NULL,
    [groupid]       SMALLINT        CONSTRAINT [DF_dnt_users_groupid] DEFAULT ((0)) NOT NULL,
    [groupexpiry]   INT             CONSTRAINT [DF_dnt_users_groupexpiry] DEFAULT ((0)) NOT NULL,
    [extgroupids]   CHAR (60)       CONSTRAINT [DF_dnt_users_extgroupids] DEFAULT ('') NOT NULL,
    [regip]         CHAR (15)       CONSTRAINT [DF_dnt_users_regip] DEFAULT ('') NOT NULL,
    [joindate]      SMALLDATETIME   CONSTRAINT [DF_dnt_users_joindate] DEFAULT (getdate()) NOT NULL,
    [lastip]        CHAR (15)       CONSTRAINT [DF_dnt_users_lastip] DEFAULT ('') NOT NULL,
    [lastvisit]     DATETIME        CONSTRAINT [DF__dnt_users_lastvisit] DEFAULT (getdate()) NOT NULL,
    [lastactivity]  DATETIME        CONSTRAINT [DF_dnt_users_lastactivity] DEFAULT (getdate()) NOT NULL,
    [lastpost]      DATETIME        CONSTRAINT [DF_dnt_users_lastpost] DEFAULT (getdate()) NOT NULL,
    [lastpostid]    INT             CONSTRAINT [DF_dnt_users_lastpostid] DEFAULT ((0)) NOT NULL,
    [lastposttitle] NCHAR (60)      CONSTRAINT [DF_dnt_users_lastposttitle] DEFAULT ('') NOT NULL,
    [posts]         INT             CONSTRAINT [DF_dnt_users__posts_] DEFAULT ('0') NOT NULL,
    [digestposts]   SMALLINT        CONSTRAINT [DF_dnt_users_digestposts] DEFAULT ('0') NOT NULL,
    [oltime]        INT             CONSTRAINT [DF__dnt_users__oltim__14F1071C] DEFAULT ('0') NOT NULL,
    [pageviews]     INT             CONSTRAINT [DF_dnt_users_pageviews] DEFAULT ('0') NOT NULL,
    [credits]       INT             CONSTRAINT [DF_dnt_users_credits] DEFAULT ('0') NOT NULL,
    [extcredits1]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits1] DEFAULT ('0') NOT NULL,
    [extcredits2]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits2] DEFAULT ('0') NOT NULL,
    [extcredits3]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits3] DEFAULT ('0') NOT NULL,
    [extcredits4]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits4] DEFAULT ('0') NOT NULL,
    [extcredits5]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits5] DEFAULT ('0') NOT NULL,
    [extcredits6]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits6] DEFAULT ('0') NOT NULL,
    [extcredits7]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits7] DEFAULT ('0') NOT NULL,
    [extcredits8]   DECIMAL (18, 2) CONSTRAINT [DF__dnt_users_extcredits8] DEFAULT ('0') NOT NULL,
    [avatarshowid]  INT             CONSTRAINT [DF_dnt_users_avatarshowid] DEFAULT ('0') NOT NULL,
    [email]         CHAR (50)       CONSTRAINT [DF_dnt_users_email] DEFAULT ('') NOT NULL,
    [bday]          CHAR (10)       CONSTRAINT [DF_dnt_users_bday_] DEFAULT ('') NOT NULL,
    [sigstatus]     INT             CONSTRAINT [DF_dnt_users_sigstatus] DEFAULT ('0') NOT NULL,
    [tpp]           INT             CONSTRAINT [DF_dnt_users_tpp_] DEFAULT ('0') NOT NULL,
    [ppp]           INT             CONSTRAINT [DF_dnt_users_ppp_] DEFAULT ('0') NOT NULL,
    [templateid]    SMALLINT        CONSTRAINT [DF_dnt_users_templateid] DEFAULT ('0') NOT NULL,
    [pmsound]       INT             CONSTRAINT [DF_dnt_users_pmsound] DEFAULT ('0') NOT NULL,
    [showemail]     INT             CONSTRAINT [DF_dnt_users_showemail] DEFAULT ('0') NOT NULL,
    [invisible]     INT             CONSTRAINT [DF__dnt_users_invisible] DEFAULT ('0') NOT NULL,
    [newpm]         INT             CONSTRAINT [DF_dnt_users_newpm] DEFAULT ('0') NOT NULL,
    [newpmcount]    INT             CONSTRAINT [DF_dnt_users_newpmcount] DEFAULT ((0)) NOT NULL,
    [accessmasks]   INT             CONSTRAINT [DF_dnt_users_accessmasks] DEFAULT ('0') NOT NULL,
    [onlinestate]   INT             CONSTRAINT [DF_dnt_users_onlinestate] DEFAULT ((0)) NOT NULL,
    [newsletter]    INT             CONSTRAINT [DF_dnt_users_newsletter] DEFAULT ('7') NOT NULL,
    [salt]          NCHAR (6)       CONSTRAINT [DF_dnt_users_salt] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_dnt_members] PRIMARY KEY CLUSTERED ([uid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [regip]
    ON [dbo].[dnt_users]([regip] ASC);


GO
CREATE NONCLUSTERED INDEX [email]
    ON [dbo].[dnt_users]([email] ASC);


GO
CREATE NONCLUSTERED INDEX [groupid]
    ON [dbo].[dnt_users]([groupid] ASC, [adminid] ASC);


GO
CREATE NONCLUSTERED INDEX [username]
    ON [dbo].[dnt_users]([username] ASC);


GO
CREATE NONCLUSTERED INDEX [password]
    ON [dbo].[dnt_users]([username] ASC, [password] ASC);


GO
CREATE NONCLUSTERED INDEX [emailsecques]
    ON [dbo].[dnt_users]([username] ASC, [email] ASC, [secques] ASC);


GO
CREATE NONCLUSTERED INDEX [pwsecques]
    ON [dbo].[dnt_users]([username] ASC, [password] ASC, [secques] ASC);

