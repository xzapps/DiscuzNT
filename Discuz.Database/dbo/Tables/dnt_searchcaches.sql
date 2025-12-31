CREATE TABLE [dbo].[dnt_searchcaches] (
    [searchid]     INT            IDENTITY (1, 1) NOT NULL,
    [keywords]     NVARCHAR (255) NOT NULL,
    [searchstring] NVARCHAR (255) NOT NULL,
    [ip]           VARCHAR (15)   NOT NULL,
    [uid]          INT            NOT NULL,
    [groupid]      INT            NOT NULL,
    [postdatetime] DATETIME       NOT NULL,
    [expiration]   DATETIME       NOT NULL,
    [topics]       INT            NOT NULL,
    [tids]         TEXT           NOT NULL,
    CONSTRAINT [PK_dnt_searchindex] PRIMARY KEY CLUSTERED ([searchid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [getsearchid]
    ON [dbo].[dnt_searchcaches]([searchstring] ASC, [groupid] ASC);

