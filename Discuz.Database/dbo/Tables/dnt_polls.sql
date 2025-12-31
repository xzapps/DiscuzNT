CREATE TABLE [dbo].[dnt_polls] (
    [pollid]       INT      IDENTITY (1, 1) NOT NULL,
    [tid]          INT      CONSTRAINT [DF_dnt_polls_tid] DEFAULT ((0)) NOT NULL,
    [displayorder] INT      NOT NULL,
    [multiple]     TINYINT  CONSTRAINT [DF_dnt_polls_multiple] DEFAULT ((0)) NOT NULL,
    [visible]      TINYINT  CONSTRAINT [DF_dnt_polls_visible] DEFAULT ((0)) NOT NULL,
    [allowview]    TINYINT  CONSTRAINT [DF_dnt_polls_allowview] DEFAULT ((0)) NOT NULL,
    [maxchoices]   SMALLINT CONSTRAINT [DF_dnt_polls_maxchoices] DEFAULT ((0)) NOT NULL,
    [expiration]   DATETIME NOT NULL,
    [uid]          INT      CONSTRAINT [DF_dnt_polls_uid] DEFAULT ((0)) NOT NULL,
    [voternames]   NTEXT    CONSTRAINT [DF_dnt_polls_voternames] DEFAULT ('') NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [dnt_polls_tid]
    ON [dbo].[dnt_polls]([tid] ASC);

