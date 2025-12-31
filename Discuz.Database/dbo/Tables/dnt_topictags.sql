CREATE TABLE [dbo].[dnt_topictags] (
    [tagid] INT CONSTRAINT [DF_dnt_topictags_tagid] DEFAULT ((0)) NOT NULL,
    [tid]   INT CONSTRAINT [DF_dnt_topictags_tid] DEFAULT ((0)) NOT NULL
);

