CREATE TABLE [dbo].[dnt_invitation] (
    [inviteid]     INT           IDENTITY (1, 1) NOT NULL,
    [invitecode]   NCHAR (7)     NOT NULL,
    [creatorid]    INT           NOT NULL,
    [creator]      NCHAR (20)    NOT NULL,
    [successcount] INT           CONSTRAINT [DF_dnt_invitation_usecount] DEFAULT ((0)) NOT NULL,
    [createdtime]  SMALLDATETIME NOT NULL,
    [expiretime]   SMALLDATETIME NOT NULL,
    [maxcount]     INT           NOT NULL,
    [invitetype]   INT           NOT NULL,
    [isdeleted]    INT           CONSTRAINT [DF_dnt_invitation_isdelete] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_invitation_inviteid] PRIMARY KEY CLUSTERED ([inviteid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [invitetype]
    ON [dbo].[dnt_invitation]([invitetype] ASC);


GO
CREATE NONCLUSTERED INDEX [creatorid]
    ON [dbo].[dnt_invitation]([creatorid] ASC);


GO
CREATE NONCLUSTERED INDEX [code]
    ON [dbo].[dnt_invitation]([invitecode] ASC);

