CREATE TABLE [dbo].[dnt_forumlinks] (
    [id]           SMALLINT       IDENTITY (1, 1) NOT NULL,
    [displayorder] INT            NOT NULL,
    [name]         NVARCHAR (100) NOT NULL,
    [url]          NVARCHAR (100) NOT NULL,
    [note]         NVARCHAR (200) NOT NULL,
    [logo]         NVARCHAR (100) NOT NULL
);

