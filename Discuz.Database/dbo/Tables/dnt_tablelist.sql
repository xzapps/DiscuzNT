CREATE TABLE [dbo].[dnt_tablelist] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [createdatetime] DATETIME      CONSTRAINT [DF_dnt_tablelist_createdatetime] DEFAULT (getdate()) NOT NULL,
    [description]    NVARCHAR (50) CONSTRAINT [DF_dnt_tablelist_description] DEFAULT ('') NOT NULL,
    [mintid]         INT           CONSTRAINT [DF_dnt_tablelist_mintid] DEFAULT ((-1)) NOT NULL,
    [maxtid]         INT           CONSTRAINT [DF_dnt_tablelist_maxtid] DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_dnt_tablelist] PRIMARY KEY CLUSTERED ([id] ASC)
);

