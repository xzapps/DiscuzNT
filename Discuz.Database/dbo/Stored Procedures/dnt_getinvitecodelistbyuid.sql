
CREATE PROCEDURE [dnt_getinvitecodelistbyuid]
@creatorid int,
@pageindex int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * 10 +1
SET @endRow = @startRow + 10 -1

SELECT 
[INVITATION].[inviteid],
[INVITATION].[invitecode],
[INVITATION].[invitetype],
[INVITATION].[createdtime],
[INVITATION].[creator],
[INVITATION].[creatorid],
[INVITATION].[expiretime],
[INVITATION].[maxcount],
[INVITATION].[successcount]
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [inviteid] DESC)AS ROWID,
[inviteid],
[invitecode],
[invitetype],
[createdtime],
[creator],
[creatorid],
[expiretime],
[maxcount],
[successcount]
FROM [dnt_invitation]
WHERE [creatorid]=@creatorid and [invitetype]=3 AND [isdeleted]=0) AS INVITATION
WHERE ROWID BETWEEN @startRow AND @endRow