
CREATE PROCEDURE [dnt_getuserinstalledapp]
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
			 'SELECT TOP '+@pagesize+' [appid],[appname],[uid],[privacy],[allowsidenav],[allowfeed],
			 [allowprofilelink],[narrow],[displayorder],[menuorder]
			  FROM [dnt_userapp] WHERE [uid]='+@uid+' ORDER BY [appid]'
			)
		END
	ELSE
		BEGIN
	 		EXEC('
			SELECT 
			TOP '+@pagesize+' 
			[appid],[appname],[uid],[privacy],[allowsidenav],[allowfeed],
			 [allowprofilelink],[narrow],[displayorder],[menuorder] 
			FROM [dnt_userapp]
			WHERE [uid]='+@uid+' 
			AND [appid] > (SELECT MAX([appid]) FROM ( SELECT TOP '+@startRow+' [appid] 
														FROM [dnt_userapp] 
														WHERE [uid]='+@uid+'  
														ORDER BY [appid]
													   ) AS T
							)
			ORDER BY [appid]
			')
		END