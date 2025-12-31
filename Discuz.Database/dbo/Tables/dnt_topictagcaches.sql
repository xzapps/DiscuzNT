CREATE TABLE [dbo].[dnt_topictagcaches] (
    [tid]       INT        CONSTRAINT [DF_dnt_topictagcaches_tid] DEFAULT ((0)) NOT NULL,
    [linktid]   INT        CONSTRAINT [DF_dnt_topictagcaches_linktid] DEFAULT ((0)) NOT NULL,
    [linktitle] NCHAR (60) NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_topictagcaches_tid]
    ON [dbo].[dnt_topictagcaches]([tid] ASC)
    INCLUDE([linktid], [linktitle]);

