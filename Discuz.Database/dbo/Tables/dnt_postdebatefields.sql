CREATE TABLE [dbo].[dnt_postdebatefields] (
    [tid]     INT CONSTRAINT [DF_dnt_postdebatefields_tid] DEFAULT ((0)) NOT NULL,
    [pid]     INT CONSTRAINT [DF_dnt_postdebatefields_pid] DEFAULT ((0)) NOT NULL,
    [opinion] INT CONSTRAINT [DF_dnt_postdebatefields_opinion] DEFAULT ((0)) NOT NULL,
    [diggs]   INT CONSTRAINT [DF_dnt_postdebatefields_diggs] DEFAULT ((0)) NOT NULL
);

