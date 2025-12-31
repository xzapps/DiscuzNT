CREATE TABLE [dbo].[dnt_words] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [admin]       NVARCHAR (20)  NOT NULL,
    [find]        NVARCHAR (255) NOT NULL,
    [replacement] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_dnt_words] PRIMARY KEY CLUSTERED ([id] ASC)
);

