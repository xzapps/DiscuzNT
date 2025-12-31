CREATE TABLE [dbo].[dnt_locations] (
    [lid]     INT           IDENTITY (1, 1) NOT NULL,
    [city]    NVARCHAR (50) CONSTRAINT [DF_dnt_locations_city] DEFAULT ('') NOT NULL,
    [state]   NVARCHAR (50) CONSTRAINT [DF_dnt_locations_state] DEFAULT ('') NOT NULL,
    [country] NVARCHAR (50) CONSTRAINT [DF_dnt_locations_country] DEFAULT ('') NOT NULL,
    [zipcode] NVARCHAR (20) CONSTRAINT [DF_dnt_locations_zipcode] DEFAULT ('') NOT NULL
);

