CREATE TABLE [dbo].[dnt_scheduledevents] (
    [scheduleID]   INT           IDENTITY (1, 1) NOT NULL,
    [key]          VARCHAR (50)  NOT NULL,
    [lastexecuted] DATETIME      NOT NULL,
    [servername]   VARCHAR (100) NOT NULL
);

