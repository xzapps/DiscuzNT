CREATE TABLE [dbo].[dnt_attachpaymentlog] (
    [id]           INT        IDENTITY (1, 1) NOT NULL,
    [uid]          INT        NOT NULL,
    [username]     NCHAR (20) NOT NULL,
    [aid]          INT        NOT NULL,
    [authorid]     INT        NOT NULL,
    [postdatetime] DATETIME   CONSTRAINT [DF_dnt_attachpaymentlog_postdatetime] DEFAULT (getdate()) NOT NULL,
    [amount]       INT        NOT NULL,
    [netamount]    INT        NOT NULL,
    CONSTRAINT [PK_dnt_attachpaymentlog] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_dnt_attachpaymentlog_uid]
    ON [dbo].[dnt_attachpaymentlog]([uid] ASC, [aid] ASC);

