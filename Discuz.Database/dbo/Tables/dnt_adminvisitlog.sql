CREATE TABLE [dbo].[dnt_adminvisitlog] (
    [visitid]      INT            IDENTITY (1, 1) NOT NULL,
    [uid]          INT            NULL,
    [username]     NVARCHAR (20)  NOT NULL,
    [groupid]      INT            NULL,
    [grouptitle]   NVARCHAR (50)  NOT NULL,
    [ip]           VARCHAR (15)   NULL,
    [postdatetime] DATETIME       CONSTRAINT [DF_dnt_adminvisitlog_postdatetime] DEFAULT (getdate()) NULL,
    [actions]      NVARCHAR (100) NOT NULL,
    [others]       NVARCHAR (200) NOT NULL
);

