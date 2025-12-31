
CREATE PROC [dnt_resettodayposts]
AS
UPDATE dnt_forums SET todayposts = 0;

DECLARE @tableid int;
SELECT @tableid = MAX(id) FROM dnt_tablelist;
EXEC('
UPDATE dnt_forums 
SET todayposts=rightTable.pidcount 
FROM dnt_forums 
INNER JOIN (SELECT fid,COUNT(pid) pidcount FROM dnt_posts'+ @tableid +' WHERE DATEDIFF(DAY,postdatetime,GETDATE())=0 GROUP BY fid ) AS rightTable
ON dnt_forums.fid=rightTable.fid
WHERE dnt_forums.fid=rightTable.fid
')