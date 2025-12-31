CREATE TABLE [dbo].[dnt_debatediggs] (
    [tid]          INT        NOT NULL,
    [pid]          INT        NOT NULL,
    [digger]       NCHAR (20) NOT NULL,
    [diggerid]     INT        NOT NULL,
    [diggerip]     NCHAR (15) NOT NULL,
    [diggdatetime] DATETIME   NOT NULL
);

