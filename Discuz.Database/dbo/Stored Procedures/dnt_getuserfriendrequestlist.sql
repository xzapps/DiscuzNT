
CREATE PROCEDURE [dnt_getuserfriendrequestlist]
@uid int,
@pagesize int,
@pageindex int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @pagesize
IF @pageindex = 1
	BEGIN
		EXEC('
			SELECT  TOP '+@pagesize+' [fromuid],[fromusername],[touid],[gid],[datetime],[note] FROM [dnt_friendsrequest] WHERE [touid]='+@uid+' ORDER BY [ordernum]
			')
	END
ELSE
	BEGIN
		EXEC('
		SELECT 
		TOP '+@pagesize+' [fromuid],[fromusername],[touid],[gid],[datetime],[note] FROM [dnt_friendsrequest]
		WHERE [touid]='+@uid+' 
		AND [ordernum] > (SELECT MAX([ordernum]) FROM (SELECT TOP '+@startRow+' [ordernum] 
													FROM [dnt_friendsrequest] 
													WHERE [touid]= '+@uid+'  
													ORDER BY [ordernum]
												   ) AS T
						)
		ORDER BY [ordernum]
		')
	END