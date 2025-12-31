
CREATE PROC [dnt_resetforumsposts]
AS
--清空forums表中的帖子数，以便重新统计
UPDATE dnt_forums SET posts=0
DECLARE @i INT,
		@maxlayer INT,
		@maxtableid INT,
		@tablename NVARCHAR(50)
SET @i = 1
--取分表数
SELECT @maxtableid = MAX(id) FROM dnt_tablelist
--依次处理分表
WHILE @i <= @maxtableid
BEGIN
	SET @tablename = 'dnt_posts' + CONVERT(NVARCHAR(2),@i)
	--如果分表不存在则继续处理下一个
	IF NOT EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(@tablename) AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
		CONTINUE
	--取得每个版块在当前分表中的帖子数，累加并更新forums表中版块帖子数
	EXEC('
		UPDATE dnt_forums 
		SET posts=posts+rightTable.fidcount 
		FROM dnt_forums 
		INNER JOIN (SELECT fid,COUNT(fid) fidcount FROM '+ @tablename +' GROUP BY fid) AS rightTable
		ON dnt_forums.fid=rightTable.fid
		WHERE dnt_forums.fid=rightTable.fid
		')
	SET @i = @i + 1
END

--以下操作将子版块中的帖子总数累加并更新到父版块中
--取得版块的最大层数
SELECT @maxlayer = MAX(layer) FROM dnt_forums
--倒序更新，从最底层版块更新到最顶层
WHILE @maxlayer > 0
BEGIN
	--将子版块中的帖子总数累加并更新到父版块中
	UPDATE dnt_forums 
	SET posts=posts+rightTable.sumposts 
	FROM dnt_forums AS leftTable 
	INNER JOIN (SELECT parentid,SUM(posts) sumposts FROM dnt_forums WHERE layer=@maxlayer GROUP BY parentid) AS rightTable
	ON leftTable.fid=rightTable.parentid
	WHERE leftTable.fid=rightTable.parentid
	SET @maxlayer = @maxlayer - 1
END