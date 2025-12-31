CREATE TABLE [dbo].[dnt_debates] (
    [tid]             INT            NOT NULL,
    [positiveopinion] NVARCHAR (200) NOT NULL,
    [negativeopinion] NVARCHAR (200) NOT NULL,
    [terminaltime]    DATETIME       NOT NULL,
    [positivediggs]   INT            CONSTRAINT [DF_dnt_debates_positidiggs] DEFAULT ((0)) NOT NULL,
    [negativediggs]   INT            CONSTRAINT [DF_dnt_debates_negatidiggs] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_debate] PRIMARY KEY CLUSTERED ([tid] ASC)
);

