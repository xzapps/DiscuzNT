
CREATE PROC [dnt_getonlinegroupicontable]
AS
SELECT [groupid], [displayorder], [title], [img] FROM [dnt_onlinelist] WHERE [img] <> '' ORDER BY [displayorder]