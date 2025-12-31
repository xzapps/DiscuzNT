CREATE TABLE [dbo].[dnt_topicidentify] (
    [identifyid] INT           IDENTITY (1, 1) NOT NULL,
    [name]       NVARCHAR (50) NOT NULL,
    [filename]   VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_dnt_topicidentify] PRIMARY KEY CLUSTERED ([identifyid] ASC)
);

