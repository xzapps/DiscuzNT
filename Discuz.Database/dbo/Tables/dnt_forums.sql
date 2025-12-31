CREATE TABLE [dbo].[dnt_forums] (
    [fid]              INT          IDENTITY (1, 1) NOT NULL,
    [parentid]         INT          CONSTRAINT [DF_dnt_forums_parentid] DEFAULT ('0') NOT NULL,
    [layer]            SMALLINT     CONSTRAINT [DF_dnt_forums_layer] DEFAULT ('0') NOT NULL,
    [pathlist]         NCHAR (3000) CONSTRAINT [DF_dnt_forums_pathlist] DEFAULT ('') NOT NULL,
    [parentidlist]     CHAR (300)   NOT NULL,
    [subforumcount]    INT          CONSTRAINT [DF_dnt_forums_subforumcount] DEFAULT ('') NOT NULL,
    [name]             NCHAR (50)   NOT NULL,
    [status]           INT          CONSTRAINT [DF_dnt_forums_status] DEFAULT ('0') NOT NULL,
    [colcount]         SMALLINT     CONSTRAINT [DF_dnt_forums_colcount] DEFAULT ('1') NOT NULL,
    [displayorder]     INT          CONSTRAINT [DF_dnt_forums_displayorder] DEFAULT ('0') NOT NULL,
    [templateid]       SMALLINT     CONSTRAINT [DF_dnt_forums_templateid] DEFAULT ('0') NOT NULL,
    [topics]           INT          CONSTRAINT [DF_dnt_forums_topics] DEFAULT ('0') NOT NULL,
    [curtopics]        INT          CONSTRAINT [DF_dnt_forums_curtopics] DEFAULT ('0') NOT NULL,
    [posts]            INT          CONSTRAINT [DF_dnt_forums_posts] DEFAULT ('0') NOT NULL,
    [todayposts]       INT          CONSTRAINT [DF_dnt_forums_todayposts] DEFAULT ('0') NOT NULL,
    [lasttid]          INT          CONSTRAINT [DF_dnt_forums_lasttid] DEFAULT ('0') NOT NULL,
    [lasttitle]        NCHAR (60)   CONSTRAINT [DF_dnt_forums_lasttitle] DEFAULT ('') NOT NULL,
    [lastpost]         DATETIME     CONSTRAINT [DF_dnt_forums_lastpost] DEFAULT ('') NOT NULL,
    [lastposterid]     INT          CONSTRAINT [DF_dnt_forums_lastposterid] DEFAULT ('') NOT NULL,
    [lastposter]       NCHAR (20)   CONSTRAINT [DF_dnt_forums_lastposter] DEFAULT ('') NOT NULL,
    [allowsmilies]     INT          CONSTRAINT [DF_dnt_forums_allowsmilies] DEFAULT ('0') NOT NULL,
    [allowrss]         INT          CONSTRAINT [DF_dnt_forums_allowrss] DEFAULT ('0') NOT NULL,
    [allowhtml]        INT          CONSTRAINT [DF_dnt_forums_allowhtml] DEFAULT ('0') NOT NULL,
    [allowbbcode]      INT          CONSTRAINT [DF_dnt_forums_allowbbcode] DEFAULT ('0') NOT NULL,
    [allowimgcode]     INT          CONSTRAINT [DF_dnt_forums_allowimgcode] DEFAULT ('0') NOT NULL,
    [allowblog]        INT          CONSTRAINT [DF_dnt_forums_allowblog] DEFAULT ('0') NOT NULL,
    [istrade]          INT          CONSTRAINT [DF_dnt_forums_allowtrade] DEFAULT ('0') NOT NULL,
    [allowpostspecial] INT          CONSTRAINT [DF_dnt_forums_allowpostspecial_1] DEFAULT ((0)) NOT NULL,
    [allowspecialonly] INT          CONSTRAINT [DF_dnt_forums_allowspecialonly] DEFAULT ((0)) NULL,
    [alloweditrules]   INT          CONSTRAINT [DF_dnt_forums_alloweditrules] DEFAULT ('0') NOT NULL,
    [allowthumbnail]   INT          CONSTRAINT [DF_dnt_forums_allowthumbnail] DEFAULT ('0') NOT NULL,
    [allowtag]         INT          CONSTRAINT [DF_dnt_forums_allowtag] DEFAULT ((0)) NOT NULL,
    [recyclebin]       INT          CONSTRAINT [DF_dnt_forums_recyclebin] DEFAULT ('0') NOT NULL,
    [modnewposts]      INT          CONSTRAINT [DF_dnt_forums_modnewposts] DEFAULT ('0') NOT NULL,
    [modnewtopics]     INT          CONSTRAINT [DF_dnt_forums_modnewtopics] DEFAULT ((0)) NOT NULL,
    [jammer]           INT          CONSTRAINT [DF_dnt_forums_jammer] DEFAULT ('0') NOT NULL,
    [disablewatermark] INT          CONSTRAINT [DF_dnt_forums_disablewatermark] DEFAULT ('0') NOT NULL,
    [inheritedmod]     INT          CONSTRAINT [DF_dnt_forums_inheritedmod] DEFAULT ('0') NOT NULL,
    [autoclose]        SMALLINT     CONSTRAINT [DF_dnt_forums_autoclose] DEFAULT ('0') NOT NULL,
    CONSTRAINT [PK_dnt_forums] PRIMARY KEY CLUSTERED ([fid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_forums_status]
    ON [dbo].[dnt_forums]([status] ASC, [layer] ASC, [parentid] ASC);

