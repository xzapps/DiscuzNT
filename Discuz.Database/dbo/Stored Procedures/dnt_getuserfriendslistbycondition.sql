
CREATE PROCEDURE [dnt_getuserfriendslistbycondition]
@uid int,
@pageindex int,
@pagesize int,
@condition nvarchar(2000)
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @pagesize
	IF @pageindex = 1
		BEGIN
			EXEC(
			 'SELECT TOP '+@pagesize+' [uid],[fuid],[fusername],[gid],[exchangenum],[datetime] FROM [dnt_friends] WHERE [uid]='+@uid+' AND '+@condition+'  ORDER BY [fusername]'
			)
		END
	ELSE
		BEGIN
	 		EXEC('
			SELECT 
			TOP '+@pagesize+' 
			[uid],
			[fuid],
			[fusername],
			[gid],
			[exchangenum],
			[datetime]
			FROM [dnt_friends]
			WHERE [uid]='+@uid+' AND '+@condition+' 
			AND [fusername] > (SELECT MAX([fusername]) FROM ( SELECT TOP '+@startRow+' [fusername] 
														FROM [dnt_friends] 
														WHERE [uid]='+@uid+'  AND '+@condition+' 
														ORDER BY [fusername]
													   ) AS T
							)
			ORDER BY [fusername]
			')
		END