CREATE TABLE [dbo].[dnt_postid] (
    [pid]          INT      IDENTITY (1, 1) NOT NULL,
    [postdatetime] DATETIME NOT NULL,
    CONSTRAINT [PK_dnt_postid] PRIMARY KEY CLUSTERED ([pid] ASC)
);

