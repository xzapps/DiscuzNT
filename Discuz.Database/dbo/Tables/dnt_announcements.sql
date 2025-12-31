CREATE TABLE [dbo].[dnt_announcements] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [poster]       NVARCHAR (20)  NOT NULL,
    [posterid]     INT            NOT NULL,
    [title]        NVARCHAR (250) NOT NULL,
    [displayorder] INT            NOT NULL,
    [starttime]    DATETIME       NOT NULL,
    [endtime]      DATETIME       NOT NULL,
    [message]      NTEXT          NOT NULL,
    CONSTRAINT [PK_dnt_announcements] PRIMARY KEY CLUSTERED ([id] ASC)
);

