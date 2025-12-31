CREATE TABLE [dbo].[dnt_help] (
    [id]      INT            IDENTITY (1, 1) NOT NULL,
    [title]   NVARCHAR (100) NOT NULL,
    [message] NTEXT          NULL,
    [pid]     INT            NOT NULL,
    [orderby] INT            CONSTRAINT [DF_dnt_help_orderby] DEFAULT ((0)) NULL
);

