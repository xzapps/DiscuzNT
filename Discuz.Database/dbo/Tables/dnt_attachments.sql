CREATE TABLE [dbo].[dnt_attachments] (
    [aid]          INT         IDENTITY (1, 1) NOT NULL,
    [uid]          INT         CONSTRAINT [DF_dnt_attachments_uid] DEFAULT ((0)) NOT NULL,
    [tid]          INT         NOT NULL,
    [pid]          INT         NOT NULL,
    [postdatetime] DATETIME    NOT NULL,
    [readperm]     INT         NOT NULL,
    [filename]     NCHAR (100) NOT NULL,
    [description]  NCHAR (100) NOT NULL,
    [filetype]     NCHAR (50)  NOT NULL,
    [filesize]     INT         NOT NULL,
    [attachment]   NCHAR (255) NOT NULL,
    [downloads]    INT         NOT NULL,
    [width]        INT         DEFAULT ((0)) NOT NULL,
    [height]       INT         DEFAULT ((0)) NOT NULL,
    [attachprice]  INT         CONSTRAINT [DF_dnt_attachments_attachprice] DEFAULT ((0)) NOT NULL,
    [isimage]      TINYINT     CONSTRAINT [DF_dnt_attachments_isimage] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dnt_attachments] PRIMARY KEY CLUSTERED ([aid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [uid]
    ON [dbo].[dnt_attachments]([uid] ASC);


GO
CREATE NONCLUSTERED INDEX [pid]
    ON [dbo].[dnt_attachments]([pid] ASC);


GO
CREATE NONCLUSTERED INDEX [tid]
    ON [dbo].[dnt_attachments]([tid] ASC);

