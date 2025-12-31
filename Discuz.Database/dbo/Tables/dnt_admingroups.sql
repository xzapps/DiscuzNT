CREATE TABLE [dbo].[dnt_admingroups] (
    [admingid]          SMALLINT NOT NULL,
    [alloweditpost]     TINYINT  NOT NULL,
    [alloweditpoll]     TINYINT  NOT NULL,
    [allowstickthread]  TINYINT  NOT NULL,
    [allowmodpost]      TINYINT  NOT NULL,
    [allowdelpost]      TINYINT  NOT NULL,
    [allowmassprune]    TINYINT  NOT NULL,
    [allowrefund]       TINYINT  NOT NULL,
    [allowcensorword]   TINYINT  NOT NULL,
    [allowviewip]       TINYINT  NOT NULL,
    [allowbanip]        TINYINT  NOT NULL,
    [allowedituser]     TINYINT  NOT NULL,
    [allowmoduser]      TINYINT  NOT NULL,
    [allowbanuser]      TINYINT  NOT NULL,
    [allowpostannounce] TINYINT  NOT NULL,
    [allowviewlog]      TINYINT  NOT NULL,
    [disablepostctrl]   TINYINT  NOT NULL,
    [allowviewrealname] TINYINT  NOT NULL
);

