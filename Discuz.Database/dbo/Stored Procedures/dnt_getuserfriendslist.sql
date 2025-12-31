
CREATE PROCEDURE [dnt_getuserfriendslist]
@uid int,
@pagesize int,
@pageindex int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @pagesize
	IF @pageindex = 1
		BEGIN
			EXEC(
			 'SELECT TOP '+@pagesize+' [uid],[fuid],[fusername],[gid],[exchangenum],[datetime] FROM [dnt_friends] WHERE [uid]='+@uid+' ORDER BY [fusername]'
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
			WHERE [uid]='+@uid+' 
			AND [fusername] > (SELECT MAX([fusername]) FROM ( SELECT TOP '+@startRow+' [fusername] 
														FROM [dnt_friends] 
														WHERE [uid]='+@uid+'  
														ORDER BY [fusername]
													   ) AS T
							)
			ORDER BY [fusername]
			')
		END