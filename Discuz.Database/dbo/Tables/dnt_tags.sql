CREATE TABLE [dbo].[dnt_tags] (
    [tagid]        INT        IDENTITY (1, 1) NOT NULL,
    [tagname]      NCHAR (10) NOT NULL,
    [userid]       INT        CONSTRAINT [DF_dnt_tags_userid] DEFAULT ((0)) NOT NULL,
    [postdatetime] DATETIME   NOT NULL,
    [orderid]      INT        CONSTRAINT [DF_dnt_tags_orderid] DEFAULT ((0)) NOT NULL,
    [color]        CHAR (6)   NOT NULL,
    [count]        INT        CONSTRAINT [DF_dnt_tags_count] DEFAULT ((0)) NOT NULL,
    [fcount]       INT        CONSTRAINT [DF_dnt_tags_fcount] DEFAULT ((0)) NOT NULL,
    [pcount]       INT        CONSTRAINT [DF_dnt_tags_pcount] DEFAULT ((0)) NOT NULL,
    [scount]       INT        CONSTRAINT [DF_dnt_tags_scount] DEFAULT ((0)) NOT NULL,
    [vcount]       INT        CONSTRAINT [DF_dnt_tags_vcount] DEFAULT ((0)) NOT NULL,
    [gcount]       INT        CONSTRAINT [DF_dnt_tags_gcount] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_tags] PRIMARY KEY CLUSTERED ([tagid] ASC)
);

