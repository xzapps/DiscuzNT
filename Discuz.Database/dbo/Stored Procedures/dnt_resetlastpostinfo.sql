
CREATE PROC [dnt_resetlastpostinfo]
AS
--创建两个临时表#tempTable1，#tempTable2
CREATE TABLE #tempTable1 (
							fid INT,
							lasttid INT,
							lasttitle NVARCHAR(60),
							lastpost DATETIME,
							parentid INT,
							lastposterid INT,
							lastposter NVARCHAR(30)
						 )

CREATE table #tempTable2 (
							fid INT,
							lasttid INT,
							lasttitle NVARCHAR(60),
							lastpost DATETIME,
							parentid INT,
							lastposterid INT,
							lastposter NVARCHAR(30)
						)
DECLARE @maxlayer INT  -- 用来存放最大layer的变量
SELECT @maxlayer = MAX(layer) FROM dnt_forums;
--先初始化dnt_forums表中最后发帖等的信息
UPDATE dnt_forums SET lasttid = 0, lasttitle = '从未',lastpost = '1900-1-1',lastposterid=0,lastposter=''
--更新所有有主题的版块的最后发帖人等信息
UPDATE dnt_forums 
SET lasttid = rightTable.tid, lasttitle = rightTable.title, lastpost = rightTable.lastpost, lastposterid=rightTable.lastposterid, lastposter=rightTable.lastposter
FROM dnt_forums AS leftTable
INNER JOIN (SELECT fid,tid,title,lastpost,lastposter,lastposterid FROM dnt_topics WHERE tid IN( SELECT MAX(tid) FROM dnt_topics GROUP BY fid)) AS rightTable
ON leftTable.fid = rightTable.fid
WHERE leftTable.fid = rightTable.fid

WHILE @maxlayer > 0
BEGIN
	--清空临时表#tempTable1，为了保证第二次循环时，表是空的
	DELETE FROM #tempTable1;
	--首先以dnt_forums表中的parentid字段分组，查询出每组最后回复时间最晚的记录；
	--然后LEFT JOIN表dnt_forums，以两个表中parentid相等并且lastpost相等为条件，进行查询，
	--并把结果插入到临时表#tempTable1中，以备临时表#tempTable2用
	INSERT INTO #tempTable1 
				SELECT fid,lasttid,lasttitle,a.lastpost,a.parentid,a.lastposterid,a.lastposter 
				FROM (
						SELECT parentid,MAX(lastpost) lastpost FROM dnt_forums a WHERE layer = @maxlayer GROUP BY parentid
					 ) b 
				LEFT JOIN dnt_forums a
				ON a.parentid=b.parentid and a.lastpost=b.lastpost						

	--清空临时表#tempTable2，为了保证第二次循环时，表是空的
	DELETE FROM #tempTable2;
	--首先以#tempTable1表中的parentid分组，查询出组中的MAX(fid)；
	--然后以fid IN （子查询中查出的MAX(fid)）为条件，查询出结果并插入到#tempTable2中
	INSERT INTO #tempTable2 
				SELECT * FROM #tempTable1
				WHERE fid IN (SELECT MAX(fid) FROM #tempTable1 GROUP BY parentid,lastpost)
	--根据临时表#tempTable2中的内容，更新dnt_forums表的最后发帖人等信息
	UPDATE dnt_forums 
	SET lastpost = CASE WHEN #tempTable2.lastpost>dnt_forums.lastpost THEN #tempTable2.lastpost
				   ELSE dnt_forums.lastpost END,
		lasttitle = CASE WHEN #tempTable2.lastpost>dnt_forums.lastpost THEN #tempTable2.lasttitle
					ELSE dnt_forums.lasttitle END,
		lasttid = CASE WHEN #tempTable2.lastpost>dnt_forums.lastpost THEN #tempTable2.lasttid
					ELSE dnt_forums.lasttid END,
		lastposterid = CASE WHEN #tempTable2.lastpost>dnt_forums.lastpost THEN #tempTable2.lastposterid
					ELSE dnt_forums.lastposterid END,
		lastposter = CASE WHEN #tempTable2.lastpost>dnt_forums.lastpost THEN #tempTable2.lastposter
					ELSE dnt_forums.lastposter END			
	FROM dnt_forums 
	INNER JOIN #tempTable2 
	ON dnt_forums.fid=#tempTable2.parentid 
	WHERE dnt_forums.fid=#tempTable2.parentid;
	SET @maxlayer = @maxlayer - 1;
END
DROP TABLE #tempTable2;
DROP TABLE #tempTable1;