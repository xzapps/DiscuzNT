
CREATE PROC [dnt_resetforumstopics]
AS
--更新所有版块的主题数,不包含子版块
UPDATE dnt_forums 
		SET curtopics=ISNULL(rightTable.sumtopics,0),topics = ISNULL(rightTable.sumtopics,0)
		FROM dnt_forums 
		INNER JOIN (SELECT fid,COUNT(tid) sumtopics FROM dnt_topics GROUP BY fid) AS rightTable
		ON dnt_forums.fid=rightTable.fid
		WHERE dnt_forums.fid=rightTable.fid

DECLARE @maxlayer INT
SELECT @maxlayer = MAX(layer) FROM dnt_forums


--倒序更新，从最底层版块更新到最顶层
WHILE @maxlayer > 0
BEGIN
	--将子版块中的帖子总数累加并更新到父版块中
	UPDATE dnt_forums 
	SET topics=topics+ISNULL(rightTable.sumtopics,0) 
	FROM dnt_forums AS leftTable 
	INNER JOIN (SELECT parentid,SUM(topics) sumtopics FROM dnt_forums WHERE layer=@maxlayer GROUP BY parentid) AS rightTable
	ON leftTable.fid=rightTable.parentid
	WHERE leftTable.fid=rightTable.parentid
	SET @maxlayer = @maxlayer - 1
END