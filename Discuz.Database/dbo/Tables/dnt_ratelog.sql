CREATE TABLE [dbo].[dnt_ratelog] (
    [id]           INT           IDENTITY (1, 1) NOT NULL,
    [pid]          INT           NOT NULL,
    [uid]          INT           NOT NULL,
    [username]     NCHAR (20)    NOT NULL,
    [extcredits]   TINYINT       NOT NULL,
    [postdatetime] DATETIME      CONSTRAINT [DF_dnt_ratelog_postdatetime] DEFAULT (getdate()) NOT NULL,
    [score]        SMALLINT      NOT NULL,
    [reason]       NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_dnt_ratelog] PRIMARY KEY CLUSTERED ([id] ASC)
);

