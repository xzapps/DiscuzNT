CREATE TABLE [dbo].[dnt_banned] (
    [id]         SMALLINT      NOT NULL,
    [ip1]        SMALLINT      NOT NULL,
    [ip2]        SMALLINT      NOT NULL,
    [ip3]        SMALLINT      NOT NULL,
    [ip4]        SMALLINT      NOT NULL,
    [admin]      NVARCHAR (50) NOT NULL,
    [dateline]   DATETIME      NOT NULL,
    [expiration] DATETIME      NOT NULL,
    CONSTRAINT [PK_dnt_banned] PRIMARY KEY CLUSTERED ([id] ASC)
);

