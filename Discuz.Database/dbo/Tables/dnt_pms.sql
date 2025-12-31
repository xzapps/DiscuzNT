CREATE TABLE [dbo].[dnt_pms] (
    [pmid]         INT           IDENTITY (1, 1) NOT NULL,
    [msgfrom]      NVARCHAR (50) NOT NULL,
    [msgfromid]    INT           NOT NULL,
    [msgto]        NVARCHAR (50) NOT NULL,
    [msgtoid]      INT           NOT NULL,
    [folder]       SMALLINT      NOT NULL,
    [new]          INT           NOT NULL,
    [subject]      NVARCHAR (60) NOT NULL,
    [postdatetime] DATETIME      NOT NULL,
    [message]      NTEXT         NOT NULL,
    CONSTRAINT [PK_dnt_pms] PRIMARY KEY CLUSTERED ([pmid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [msgtoid]
    ON [dbo].[dnt_pms]([msgtoid] ASC);

