CREATE TABLE [dbo].[dnt_trendstat] (
    [daytime]  INT CONSTRAINT [DF_dnt_trendstat_daytime] DEFAULT ((0)) NOT NULL,
    [login]    INT CONSTRAINT [DF_dnt_trendstat_login] DEFAULT ((0)) NOT NULL,
    [register] INT CONSTRAINT [DF_dnt_trendstat_register] DEFAULT ((0)) NOT NULL,
    [topic]    INT CONSTRAINT [DF_dnt_trendstat_topic] DEFAULT ((0)) NOT NULL,
    [post]     INT CONSTRAINT [DF_dnt_trendstat_post] DEFAULT ((0)) NOT NULL,
    [poll]     INT CONSTRAINT [DF_dnt_trendstat_poll] DEFAULT ((0)) NOT NULL,
    [debate]   INT CONSTRAINT [DF_dnt_trendstat_debate] DEFAULT ((0)) NOT NULL,
    [bonus]    INT CONSTRAINT [DF_dnt_trendstat_bonus] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_trendstat] PRIMARY KEY CLUSTERED ([daytime] ASC)
);

