CREATE TABLE [dbo].[dnt_notices] (
    [nid]          INT        IDENTITY (1, 1) NOT NULL,
    [uid]          INT        NOT NULL,
    [type]         SMALLINT   NOT NULL,
    [new]          TINYINT    NOT NULL,
    [posterid]     INT        NOT NULL,
    [poster]       NCHAR (20) NOT NULL,
    [note]         NTEXT      NOT NULL,
    [postdatetime] DATETIME   NOT NULL,
    [fromid]       INT        NOT NULL,
    CONSTRAINT [PK_dnt_notices_nid] PRIMARY KEY CLUSTERED ([nid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [uid]
    ON [dbo].[dnt_notices]([uid] DESC);

