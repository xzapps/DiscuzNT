
CREATE PROCEDURE [dnt_gettopiclistbytag]	
	@tagid int,
	@pageindex int,
	@pagesize int
AS
	DECLARE @startRow int,
			@endRow	int
SET @startRow = (@pageindex - 1) * @pagesize + 1
SET @endRow = @startRow + @pagesize -1

SELECT 
[TOPICTAGS].[tid], 
[TOPICTAGS].[title],
[TOPICTAGS].[poster],
[TOPICTAGS].[posterid],
[TOPICTAGS].[fid],
[TOPICTAGS].[postdatetime],
[TOPICTAGS].[replies],
[TOPICTAGS].[views],
[TOPICTAGS].[lastposter],
[TOPICTAGS].[lastposterid],
[TOPICTAGS].[lastpost] 
FROM(SELECT ROW_NUMBER() OVER(ORDER BY [lastpostid]) AS ROWID,
[t].[tid], 
[t].[title],
[t].[poster],
[t].[posterid],
[t].[fid],
[t].[postdatetime],
[t].[replies],
[t].[views],
[t].[lastposter],
[t].[lastposterid],
[t].[lastpost]
FROM [dnt_topictags] AS [tt], [dnt_topics] AS [t]
WHERE [t].[tid] = [tt].[tid] AND [t].[displayorder] >=0 AND [tt].[tagid] = @tagid) AS TOPICTAGS
WHERE ROWID BETWEEN @startRow AND @endRow