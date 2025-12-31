CREATE TABLE [dbo].[dnt_failedlogins] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [ip]         CHAR (15)     NOT NULL,
    [errcount]   SMALLINT      CONSTRAINT [DF_dnt_failedlogins_errcount] DEFAULT ((0)) NOT NULL,
    [lastupdate] SMALLDATETIME CONSTRAINT [DF_dnt_failedlogins_lastupdate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_dnt_failedlogins] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ip]
    ON [dbo].[dnt_failedlogins]([ip] ASC);

