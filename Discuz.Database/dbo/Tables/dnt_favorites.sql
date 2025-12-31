CREATE TABLE [dbo].[dnt_favorites] (
    [uid]      INT      NOT NULL,
    [tid]      INT      NOT NULL,
    [typeid]   TINYINT  CONSTRAINT [DF_dnt_favorites_typeid] DEFAULT ((0)) NOT NULL,
    [favtime]  DATETIME CONSTRAINT [DF_dnt_favorites_favtime] DEFAULT (getdate()) NOT NULL,
    [viewtime] DATETIME CONSTRAINT [DF_dnt_favorites_viewtime] DEFAULT (getdate()) NOT NULL
);

