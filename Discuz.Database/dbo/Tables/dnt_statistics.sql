CREATE TABLE [dbo].[dnt_statistics] (
    [totaltopic]             INT           NOT NULL,
    [totalpost]              INT           NOT NULL,
    [totalusers]             INT           NOT NULL,
    [lastusername]           NCHAR (20)    NOT NULL,
    [lastuserid]             INT           NOT NULL,
    [highestonlineusercount] INT           NULL,
    [highestonlineusertime]  SMALLDATETIME NULL,
    [yesterdayposts]         INT           CONSTRAINT [DF__dnt_statistics__yesterdayposts] DEFAULT ((0)) NOT NULL,
    [highestposts]           INT           CONSTRAINT [DF_dnt_statistics_highestposts] DEFAULT ((0)) NOT NULL,
    [highestpostsdate]       CHAR (10)     CONSTRAINT [DF_dnt_statistics_highestpostsdate] DEFAULT ('') NOT NULL
);

