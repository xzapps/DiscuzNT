
CREATE PROC [dnt_resetLastRepliesInfoOftopics]
@posttable NVARCHAR(20)
AS
EXEC('
		UPDATE dnt_topics 
		SET dnt_topics.replies = lastPostTable.posts, 
			lastpost = lastPostTable.postdatetime, 
			lastposterid = lastPostTable.posterid, 
			lastposter = lastPostTable.poster, 
			lastpostid = lastPostTable.pid 
		FROM dnt_topics
		INNER JOIN  (
						SELECT leftTable.tid,leftTable.posterid,leftTable.pid,leftTable.poster,leftTable.postdatetime,rightTable.posts FROM '+@posttable+' AS leftTable 
						LEFT JOIN (SELECT tid,COUNT(*)-1 posts,MAX(pid) maxpid FROM '+@posttable+' GROUP BY tid) AS rightTable
						ON leftTable.pid = rightTable.maxpid
						WHERE leftTable.pid = rightTable.maxpid
					) AS lastPostTable
		ON dnt_topics.tid = lastPostTable.tid
		WHERE dnt_topics.tid = lastPostTable.tid AND dnt_topics.lastpostid <> lastPostTable.pid
	')