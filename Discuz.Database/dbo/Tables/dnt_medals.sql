CREATE TABLE [dbo].[dnt_medals] (
    [medalid]   SMALLINT      NOT NULL,
    [name]      NVARCHAR (50) NOT NULL,
    [available] INT           CONSTRAINT [DF_dnt_medals_available] DEFAULT ((0)) NOT NULL,
    [image]     VARCHAR (30)  CONSTRAINT [DF_dnt_medals_image] DEFAULT ('') NOT NULL
);

