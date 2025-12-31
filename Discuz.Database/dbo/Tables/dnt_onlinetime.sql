CREATE TABLE [dbo].[dnt_onlinetime] (
    [uid]        INT      NOT NULL,
    [thismonth]  SMALLINT CONSTRAINT [DF_dnt_onlinetime_thismonth] DEFAULT ((0)) NOT NULL,
    [total]      INT      CONSTRAINT [DF_dnt_onlinetime_total] DEFAULT ((0)) NOT NULL,
    [lastupdate] DATETIME CONSTRAINT [DF_dnt_onlinetime_lastupdate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_dnt_onlinetime] PRIMARY KEY CLUSTERED ([uid] ASC)
);

