
CREATE PROCEDURE [dnt_getmyposts]
@uid int,
@pageindex int,
@pagesize int
 AS
DECLARE @startRow int,
	@endRow int
SET @startRow = ( @pageindex - 1 ) * @pagesize + 1
SET @endRow = @startRow + @pagesize - 1

SELECT 
[MYPOST].[tid], 
[MYPOST].[fid], 
[MYPOST].[iconid], 
[MYPOST].[typeid], 
[MYPOST].[readperm], 
[MYPOST].[price], 
[MYPOST].[poster], 
[MYPOST].[posterid], 
[MYPOST].[title], 
[MYPOST].[postdatetime], 
[MYPOST].[lastpost], 
[MYPOST].[lastpostid], 
[MYPOST].[lastposter], 
[MYPOST].[lastposterid], 
[MYPOST].[views], 
[MYPOST].[replies], 
[MYPOST].[displayorder], 
[MYPOST].[highlight], 
[MYPOST].[digest], 
[MYPOST].[rate], 
[MYPOST].[hide], 
[MYPOST].[special], 
[MYPOST].[attachment], 
[MYPOST].[moderated], 
[MYPOST].[closed], 
[MYPOST].[magic] 
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_myposts].[tid] DESC) AS ROWID,
[dnt_topics].[tid], 
[dnt_topics].[fid], 
[dnt_topics].[iconid], 
[dnt_topics].[typeid], 
[dnt_topics].[readperm], 
[dnt_topics].[price], 
[dnt_topics].[poster], 
[dnt_topics].[posterid], 
[dnt_topics].[title], 
[dnt_topics].[postdatetime], 
[dnt_topics].[lastpost], 
[dnt_topics].[lastpostid], 
[dnt_topics].[lastposter], 
[dnt_topics].[lastposterid], 
[dnt_topics].[views], 
[dnt_topics].[replies], 
[dnt_topics].[displayorder], 
[dnt_topics].[highlight], 
[dnt_topics].[digest], 
[dnt_topics].[rate], 
[dnt_topics].[hide], 
[dnt_topics].[special], 
[dnt_topics].[attachment], 
[dnt_topics].[moderated], 
[dnt_topics].[closed], 
[dnt_topics].[magic]
FROM [dnt_topics] 
INNER JOIN [dnt_myposts] ON ([dnt_topics].[tid] = [dnt_myposts].[tid] AND [dnt_myposts].[uid] = @uid)) AS MYPOST
WHERE ROWID BETWEEN @startRow AND @endRow