CREATE TABLE [dbo].[dnt_smilies] (
    [id]           INT           NOT NULL,
    [displayorder] INT           NOT NULL,
    [type]         INT           NOT NULL,
    [code]         NVARCHAR (30) NOT NULL,
    [url]          VARCHAR (60)  NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_smilies_type]
    ON [dbo].[dnt_smilies]([type] ASC, [displayorder] ASC, [id] ASC)
    INCLUDE([code], [url]);

