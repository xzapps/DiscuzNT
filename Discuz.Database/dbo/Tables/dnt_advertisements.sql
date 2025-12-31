CREATE TABLE [dbo].[dnt_advertisements] (
    [advid]        INT            IDENTITY (1, 1) NOT NULL,
    [available]    INT            NOT NULL,
    [type]         NVARCHAR (50)  NOT NULL,
    [displayorder] INT            NOT NULL,
    [title]        NVARCHAR (50)  NOT NULL,
    [targets]      NVARCHAR (255) NOT NULL,
    [starttime]    DATETIME       NOT NULL,
    [endtime]      DATETIME       NOT NULL,
    [code]         NTEXT          CONSTRAINT [DF_dnt_advertisements_code] DEFAULT ('') NOT NULL,
    [parameters]   NTEXT          CONSTRAINT [DF_dnt_advertisements_parameters] DEFAULT ('') NOT NULL
);

