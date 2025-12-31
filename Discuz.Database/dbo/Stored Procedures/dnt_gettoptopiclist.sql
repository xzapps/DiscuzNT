
CREATE PROCEDURE [dnt_gettoptopiclist]
@fid int,
@pagesize int,
@pageindex int,
@tids varchar(500)
AS
DECLARE @startRow int,
		@endRow int
SET @startROW = ( @pageindex - 1 ) * @pagesize + 1
SET @endRow = @startRow +  @pagesize -1

SELECT 
[TOPICS].[rate], 
[TOPICS].[tid],
[TOPICS].[fid],
[TOPICS].[typeid],
[TOPICS].[iconid],
[TOPICS].[title],
[TOPICS].[price],
[TOPICS].[hide],
[TOPICS].[readperm], 
[TOPICS].[special],
[TOPICS].[poster],
[TOPICS].[posterid],
[TOPICS].[views],
[TOPICS].[postdatetime],
[TOPICS].[lastpost],
[TOPICS].[lastposter],
[TOPICS].[lastpostid],
[TOPICS].[lastposterid],
[TOPICS].[replies],
[TOPICS].[highlight],
[TOPICS].[digest],
[TOPICS].[displayorder],
[TOPICS].[closed],
[TOPICS].[attachment],
[TOPICS].[magic] 
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_topics].[displayorder] DESC,[dnt_topics].[lastpost] DESC) AS ROWID,
[dnt_topics].[rate], 
[dnt_topics].[tid],
[dnt_topics].[fid],
[dnt_topics].[typeid],
[dnt_topics].[iconid],
[dnt_topics].[title],
[dnt_topics].[price],
[dnt_topics].[hide],
[dnt_topics].[readperm], 
[dnt_topics].[special],
[dnt_topics].[poster],
[dnt_topics].[posterid],
[dnt_topics].[views],
[dnt_topics].[postdatetime],
[dnt_topics].[lastpost],
[dnt_topics].[lastposter],
[dnt_topics].[lastpostid],
[dnt_topics].[lastposterid],
[dnt_topics].[replies],
[dnt_topics].[highlight],
[dnt_topics].[digest],
[dnt_topics].[displayorder],
[dnt_topics].[closed],
[dnt_topics].[attachment],
[dnt_topics].[magic]
FROM [dnt_topics]
WHERE [displayorder]>0 AND CHARINDEX(','+RTRIM([dnt_topics].[tid])+',', ','+@tids+',')>0)AS TOPICS
WHERE ROWID BETWEEN @startRow AND @endRow