
CREATE PROCEDURE [dnt_getfriendshipchangelog]
@count int
AS
BEGIN
	EXEC('SELECT TOP '+@count+' [uid],[fuid],[action] FROM [dnt_friendslog]')
	EXEC('DELETE [dnt_friendslog] WHERE [uid] IN(SELECT TOP '+@count+' [uid] FROM [dnt_friendslog]) AND [fuid] IN (SELECT TOP '+@count+' [fuid] FROM [dnt_friendslog])')
END