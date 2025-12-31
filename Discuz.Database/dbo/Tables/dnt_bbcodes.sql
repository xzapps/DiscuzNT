CREATE TABLE [dbo].[dnt_bbcodes] (
    [id]             INT            IDENTITY (1, 1) NOT NULL,
    [available]      INT            NOT NULL,
    [tag]            VARCHAR (100)  NOT NULL,
    [icon]           VARCHAR (50)   NULL,
    [example]        NVARCHAR (255) NOT NULL,
    [params]         INT            NOT NULL,
    [nest]           INT            NOT NULL,
    [explanation]    NTEXT          NULL,
    [replacement]    NTEXT          NULL,
    [paramsdescript] NTEXT          NULL,
    [paramsdefvalue] NTEXT          NULL,
    CONSTRAINT [PK_dnt_bbcodes] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [dnt_bbcodes_available]
    ON [dbo].[dnt_bbcodes]([available] ASC);

