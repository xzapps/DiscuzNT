
CREATE PROCEDURE [dnt_getmytopics]
@uid int,
@pageindex int,
@pagesize int
AS
DECLARE @startRow int,
	@endRow int
SET @startRow = ( @pageindex - 1 ) * @pagesize + 1 
SET @endRow = @startRow + @pagesize - 1

SELECT 
[MYTOPIC].[tid], 
[MYTOPIC].[fid], 
[MYTOPIC].[iconid], 
[MYTOPIC].[typeid], 
[MYTOPIC].[readperm], 
[MYTOPIC].[price], 
[MYTOPIC].[poster], 
[MYTOPIC].[posterid], 
[MYTOPIC].[title], 
[MYTOPIC].[postdatetime], 
[MYTOPIC].[lastpost], 
[MYTOPIC].[lastpostid], 
[MYTOPIC].[lastposter], 
[MYTOPIC].[lastposterid], 
[MYTOPIC].[views], 
[MYTOPIC].[replies], 
[MYTOPIC].[displayorder], 
[MYTOPIC].[highlight], 
[MYTOPIC].[digest], 
[MYTOPIC].[rate], 
[MYTOPIC].[hide], 
[MYTOPIC].[special], 
[MYTOPIC].[attachment], 
[MYTOPIC].[moderated], 
[MYTOPIC].[closed], 
[MYTOPIC].[magic]
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_topics].[lastpost] DESC) AS ROWID,
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
INNER JOIN [dnt_mytopics] ON ([dnt_topics].[tid] = [dnt_mytopics].[tid] AND [dnt_mytopics].[uid] = @uid)) AS MYTOPIC
WHERE ROWID BETWEEN @startRow AND @endRow