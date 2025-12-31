
CREATE PROCEDURE [dnt_getunauditnewtopicbycondition]
@fidlist NVARCHAR(500),
@pagesize int,
@displayorder INT,
@pageindex int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageindex - 1) * @pagesize + 1
SET @endRow = @startRow + @pagesize -1
IF @fidlist = '0'
BEGIN
	SELECT 
	[TOPICS].[rate], 
	[TOPICS].[fid], 
	[TOPICS].[tid],
	[TOPICS].[iconid],
	[TOPICS].[typeid],
	[TOPICS].[title],
	[TOPICS].[price],
	[TOPICS].[hide],
	[TOPICS].[readperm],
	[TOPICS].[poster],
	[TOPICS].[posterid],
	[TOPICS].[replies],
	[TOPICS].[views],
	[TOPICS].[postdatetime],
	[TOPICS].[lastpost],
	[TOPICS].[lastposter],
	[TOPICS].[lastpostid],
	[TOPICS].[lastposterid],
	[TOPICS].[highlight],
	[TOPICS].[digest],
	[TOPICS].[displayorder],
	[TOPICS].[attachment],
	[TOPICS].[closed],
	[TOPICS].[magic],
	[TOPICS].[special] 
	FROM(SELECT ROW_NUMBER() OVER(ORDER BY [tid] DESC)AS ROWID,
	[dnt_topics].[rate], 
	[dnt_topics].[fid], 
	[dnt_topics].[tid],
	[dnt_topics].[iconid],
	[dnt_topics].[typeid],
	[dnt_topics].[title],
	[dnt_topics].[price],
	[dnt_topics].[hide],
	[dnt_topics].[readperm],
	[dnt_topics].[poster],
	[dnt_topics].[posterid],
	[dnt_topics].[replies],
	[dnt_topics].[views],
	[dnt_topics].[postdatetime],
	[dnt_topics].[lastpost],
	[dnt_topics].[lastposter],
	[dnt_topics].[lastpostid],
	[dnt_topics].[lastposterid],
	[dnt_topics].[highlight],
	[dnt_topics].[digest],
	[dnt_topics].[displayorder],
	[dnt_topics].[attachment],
	[dnt_topics].[closed],
	[dnt_topics].[magic],
	[dnt_topics].[special] 
	FROM [dnt_topics]
	WHERE [displayorder] = @displayorder) AS TOPICS
	WHERE ROWID BETWEEN @startRow AND @endRow
END
ELSE
BEGIN
	SELECT 
	[TOPICS].[rate], 
	[TOPICS].[fid], 
	[TOPICS].[tid],
	[TOPICS].[iconid],
	[TOPICS].[typeid],
	[TOPICS].[title],
	[TOPICS].[price],
	[TOPICS].[hide],
	[TOPICS].[readperm],
	[TOPICS].[poster],
	[TOPICS].[posterid],
	[TOPICS].[replies],
	[TOPICS].[views],
	[TOPICS].[postdatetime],
	[TOPICS].[lastpost],
	[TOPICS].[lastposter],
	[TOPICS].[lastpostid],
	[TOPICS].[lastposterid],
	[TOPICS].[highlight],
	[TOPICS].[digest],
	[TOPICS].[displayorder],
	[TOPICS].[attachment],
	[TOPICS].[closed],
	[TOPICS].[magic],
	[TOPICS].[special] 
	FROM(SELECT ROW_NUMBER() OVER(ORDER BY [tid] DESC)AS ROWID,
	[dnt_topics].[rate], 
	[dnt_topics].[fid], 
	[dnt_topics].[tid],
	[dnt_topics].[iconid],
	[dnt_topics].[typeid],
	[dnt_topics].[title],
	[dnt_topics].[price],
	[dnt_topics].[hide],
	[dnt_topics].[readperm],
	[dnt_topics].[poster],
	[dnt_topics].[posterid],
	[dnt_topics].[replies],
	[dnt_topics].[views],
	[dnt_topics].[postdatetime],
	[dnt_topics].[lastpost],
	[dnt_topics].[lastposter],
	[dnt_topics].[lastpostid],
	[dnt_topics].[lastposterid],
	[dnt_topics].[highlight],
	[dnt_topics].[digest],
	[dnt_topics].[displayorder],
	[dnt_topics].[attachment],
	[dnt_topics].[closed],
	[dnt_topics].[magic],
	[dnt_topics].[special] 
	FROM [dnt_topics]
	WHERE [displayorder] = @displayorder AND fid IN (@fidlist)) AS TOPICS
	WHERE ROWID BETWEEN @startRow AND @endRow	
END