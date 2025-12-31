
CREATE PROCEDURE [dnt_getuserlog]
@count int
AS
begin
	EXEC(
	'
	SELECT TOP '+@count+' [uid],[action],[datetime] FROM [dnt_userlog] ORDER BY id ASC;
	
	'
	)
	exec('DELETE [dnt_userlog] WHERE id IN(SELECT TOP '+@count+' [id] FROM [dnt_userlog] ORDER BY id ASC)')
	end