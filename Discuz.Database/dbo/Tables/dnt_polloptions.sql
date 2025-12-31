CREATE TABLE [dbo].[dnt_polloptions] (
    [polloptionid] INT           IDENTITY (1, 1) NOT NULL,
    [tid]          INT           CONSTRAINT [DF_dnt_polloptions_tid] DEFAULT ((0)) NOT NULL,
    [pollid]       INT           CONSTRAINT [DF_dnt_polloptions_pollid] DEFAULT ((0)) NOT NULL,
    [votes]        INT           CONSTRAINT [DF_dnt_polloptions_votes] DEFAULT ((0)) NOT NULL,
    [displayorder] INT           CONSTRAINT [DF_dnt_polloptions_displayorder] DEFAULT ((0)) NOT NULL,
    [polloption]   NVARCHAR (80) CONSTRAINT [DF_dnt_polloptions_polloption] DEFAULT ('') NOT NULL,
    [voternames]   NTEXT         CONSTRAINT [DF_dnt_polloptions_voternames] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_dnt_polloptions] PRIMARY KEY CLUSTERED ([polloptionid] ASC)
);

