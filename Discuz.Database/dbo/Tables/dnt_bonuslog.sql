CREATE TABLE [dbo].[dnt_bonuslog] (
    [tid]        INT        NOT NULL,
    [authorid]   INT        NOT NULL,
    [answerid]   INT        NOT NULL,
    [answername] NCHAR (20) NOT NULL,
    [pid]        INT        NOT NULL,
    [dateline]   DATETIME   NOT NULL,
    [bonus]      INT        NOT NULL,
    [extid]      TINYINT    NOT NULL,
    [isbest]     INT        NOT NULL
);

