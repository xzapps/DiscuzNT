CREATE TABLE [dbo].[dnt_orders] (
    [orderid]       INT             IDENTITY (10000, 1) NOT NULL,
    [ordercode]     CHAR (32)       NOT NULL,
    [uid]           INT             NOT NULL,
    [buyer]         CHAR (20)       NOT NULL,
    [paytype]       TINYINT         NOT NULL,
    [tradeno]       CHAR (32)       NULL,
    [price]         DECIMAL (18, 2) NOT NULL,
    [orderstatus]   TINYINT         NOT NULL,
    [createdtime]   SMALLDATETIME   CONSTRAINT [DF_dnt_orders_createdtime] DEFAULT (getdate()) NOT NULL,
    [confirmedtime] SMALLDATETIME   NULL,
    [credit]        TINYINT         NOT NULL,
    [amount]        INT             NOT NULL,
    CONSTRAINT [PK_dnt_orders_orderid] PRIMARY KEY CLUSTERED ([orderid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [dnt_orders_ordercode]
    ON [dbo].[dnt_orders]([ordercode] ASC);

