
CREATE PROCEDURE [dnt_getuserfriendscountbycondition]
@uid int,
@condition nvarchar(2000)
AS
BEGIN
	EXEC('SELECT COUNT(1) FROM [dnt_friends] WHERE [uid]='+@uid+' AND '+@condition)
END