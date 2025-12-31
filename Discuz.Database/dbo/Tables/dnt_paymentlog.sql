CREATE TABLE [dbo].[dnt_paymentlog] (
    [id]        INT      IDENTITY (1, 1) NOT NULL,
    [uid]       INT      NOT NULL,
    [tid]       INT      NOT NULL,
    [authorid]  INT      NOT NULL,
    [buydate]   DATETIME CONSTRAINT [DF_dnt_paymentlog_buydate] DEFAULT (getdate()) NOT NULL,
    [amount]    SMALLINT NOT NULL,
    [netamount] SMALLINT NOT NULL,
    CONSTRAINT [PK_dnt_paymentlog] PRIMARY KEY CLUSTERED ([id] ASC)
);

