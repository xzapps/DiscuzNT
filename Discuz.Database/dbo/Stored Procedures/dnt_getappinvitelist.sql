
CREATE PROCEDURE [dnt_getappinvitelist]
@uid int,
@pageindex int,
@pagesize int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @pagesize
	IF @pageindex = 1
		BEGIN
			EXEC(
			 'SELECT TOP '+@pagesize+' [id],[typename],[appid],[type],[fromuid],[touid],[myml],[datetime],[hash] FROM [dnt_myinvite] WHERE [touid]='+@uid+' ORDER BY [id] DESC'
			)
		END
	ELSE
		BEGIN
	 		EXEC('
			SELECT 
			TOP '+@pagesize+' 
			[id],[typename],[appid],[type],[fromuid],[touid],[myml],[datetime],[hash]
			FROM [dnt_myinvite]
			WHERE [touid]='+@uid+' 
			AND [id] < (SELECT MIN([id]) FROM (SELECT TOP '+@startRow+' [id] 
														FROM [dnt_myinvite] 
														WHERE [touid]='+@uid+'  
														ORDER BY [id] DESC
													   ) AS T
							)
			ORDER BY [id] DESC
			')
		END