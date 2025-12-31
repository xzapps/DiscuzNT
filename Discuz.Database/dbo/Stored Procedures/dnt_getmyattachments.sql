
CREATE PROCEDURE [dnt_getmyattachments]
@uid int,
@pageindex int,
@pagesize int
 AS
DECLARE @startRow int,
		@endRow int
SET @startRow=(@pageindex-1) * @pagesize + 1
SET @endRow = @startRow + @pagesize - 1
SELECT 
[ATTACHMENTS].[aid],
[ATTACHMENTS].[uid],
[ATTACHMENTS].[attachment],
[ATTACHMENTS].[description],
[ATTACHMENTS].[downloads],
[ATTACHMENTS].[extname],
[ATTACHMENTS].[filename],
[ATTACHMENTS].[pid],
[ATTACHMENTS].[postdatetime],
[ATTACHMENTS].[tid]
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [aid] DESC) AS ROWID,
[dnt_myattachments].[aid],
[dnt_myattachments].[uid],
[dnt_myattachments].[attachment],
[dnt_myattachments].[description],
[dnt_myattachments].[downloads],
[dnt_myattachments].[extname],
[dnt_myattachments].[filename],
[dnt_myattachments].[pid],
[dnt_myattachments].[postdatetime],
[dnt_myattachments].[tid]
FROM [dnt_myattachments]
WHERE [dnt_myattachments].[uid] = @uid ) AS ATTACHMENTS
WHERE ROWID BETWEEN @startRow AND @endRow