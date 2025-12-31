CREATE TABLE [dbo].[dnt_topictypes] (
    [typeid]       INT            IDENTITY (1, 1) NOT NULL,
    [displayorder] INT            CONSTRAINT [DF_dnt_topictypes_displayorder] DEFAULT ((0)) NOT NULL,
    [name]         NVARCHAR (30)  CONSTRAINT [DF_dnt_topictypes_name] DEFAULT ('') NOT NULL,
    [description]  NVARCHAR (500) CONSTRAINT [DF_dnt_topictypes_description] DEFAULT ('') NOT NULL
);

