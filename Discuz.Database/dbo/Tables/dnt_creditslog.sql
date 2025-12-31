CREATE TABLE [dbo].[dnt_creditslog] (
    [id]             INT        IDENTITY (1, 1) NOT NULL,
    [uid]            INT        NOT NULL,
    [fromto]         INT        NOT NULL,
    [sendcredits]    TINYINT    NOT NULL,
    [receivecredits] TINYINT    NOT NULL,
    [send]           FLOAT (53) NOT NULL,
    [receive]        FLOAT (53) NOT NULL,
    [paydate]        DATETIME   NOT NULL,
    [operation]      TINYINT    NOT NULL,
    CONSTRAINT [PK_dnt_creditslog] PRIMARY KEY CLUSTERED ([id] ASC)
);

