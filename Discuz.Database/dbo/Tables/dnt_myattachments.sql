CREATE TABLE [dbo].[dnt_myattachments] (
    [aid]          INT           NOT NULL,
    [uid]          INT           NOT NULL,
    [attachment]   NCHAR (100)   NOT NULL,
    [description]  NCHAR (100)   NOT NULL,
    [postdatetime] DATETIME      NOT NULL,
    [downloads]    INT           NOT NULL,
    [filename]     NCHAR (100)   NOT NULL,
    [pid]          INT           CONSTRAINT [DF_dnt_myattachments_pid] DEFAULT ((0)) NOT NULL,
    [tid]          INT           CONSTRAINT [DF_dnt_myattachments_tid] DEFAULT ((0)) NOT NULL,
    [extname]      NVARCHAR (50) CONSTRAINT [DF_dnt_myattachments_extname] DEFAULT ('') NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [aid]
    ON [dbo].[dnt_myattachments]([aid] ASC);


GO
CREATE NONCLUSTERED INDEX [uid]
    ON [dbo].[dnt_myattachments]([uid] ASC, [extname] ASC);

