CREATE TABLE [dbo].[dnt_moderatormanagelog] (
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    [moderatoruid]  INT            NULL,
    [moderatorname] NVARCHAR (50)  NULL,
    [groupid]       INT            NULL,
    [grouptitle]    NVARCHAR (50)  NULL,
    [ip]            VARCHAR (15)   NULL,
    [postdatetime]  DATETIME       CONSTRAINT [DF_dnt_moderatormanagelog_postdatetime] DEFAULT (getdate()) NULL,
    [fid]           INT            NULL,
    [fname]         NVARCHAR (100) NULL,
    [tid]           INT            NULL,
    [title]         VARCHAR (200)  NULL,
    [actions]       VARCHAR (50)   NULL,
    [reason]        NVARCHAR (200) NULL
);


GO
CREATE NONCLUSTERED INDEX [dnt_moderatormanagelog_tid]
    ON [dbo].[dnt_moderatormanagelog]([tid] ASC);

