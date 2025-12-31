
CREATE PROCEDURE [dnt_getrateloglist]
@pid int,
@pagesize int,
@pageindex int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @pagesize
	IF @pageindex = 1
		BEGIN
			EXEC(
			 'SELECT TOP '+@pagesize+' [id],[pid],[uid],[username],[extcredits],[postdatetime],[score],[reason] FROM [dnt_ratelog] WHERE [pid]='+@pid+' ORDER BY [id] DESC'
			)
		END
	ELSE
		BEGIN
	 		EXEC('
			SELECT 
			TOP '+@pagesize+' 
			[id],[pid],[uid],[username],[extcredits],[postdatetime],[score],[reason] FROM [dnt_ratelog]
			WHERE [pid]='+@pid+' 
			AND [id] < (SELECT MIN([id]) FROM ( SELECT TOP '+@startRow+' [id] 
														FROM [dnt_ratelog] 
														WHERE [pid]='+@pid+'  
														ORDER BY [id] DESC
													   ) AS T
							)
			ORDER BY [id] DESC
			')
		END