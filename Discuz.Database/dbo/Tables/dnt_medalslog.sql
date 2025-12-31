CREATE TABLE [dbo].[dnt_medalslog] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [adminname]    NVARCHAR (50)  NULL,
    [adminid]      INT            NULL,
    [ip]           NVARCHAR (15)  NULL,
    [postdatetime] DATETIME       CONSTRAINT [DF_dnt_medalslog_postdatetime] DEFAULT (getdate()) NULL,
    [username]     NVARCHAR (50)  NULL,
    [uid]          INT            NULL,
    [actions]      NVARCHAR (100) NULL,
    [medals]       INT            NULL,
    [reason]       NVARCHAR (100) NULL
);

