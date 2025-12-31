CREATE TABLE [dbo].[dnt_stats] (
    [type]     CHAR (10) NOT NULL,
    [variable] CHAR (20) NOT NULL,
    [count]    INT       CONSTRAINT [DF_dnt_stats_count] DEFAULT ((0)) NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [IX_dnt_statvars]
    ON [dbo].[dnt_stats]([type] ASC, [variable] ASC) WITH (IGNORE_DUP_KEY = ON);

