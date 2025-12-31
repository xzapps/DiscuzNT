
CREATE PROC [dnt_passpost]
@currentPostTableId INT,
@postcount INT,
@pidList NVARCHAR(500)
AS
DECLARE @count INT,
		@begin INT,
		@postdatetime DATETIME,
		@poster NVARCHAR(50),
		@posterid INT,
		@fid INT,
		@title NVARCHAR(20),
		@tid INT,
		@pid INT
		 
SET @begin=1
EXEC('UPDATE  [dnt_posts'+@currentPostTableId+']   SET [invisible]=0 WHERE [pid] IN ('+@pidList+')')
UPDATE  [dnt_statistics] SET [totalpost]= [totalpost] + @postcount

DECLARE @tempposttable TABLE 
						(
							[ROWID] INT IDENTITY(1,1),
							[pid] INT,
							[postdatetime] DATETIME,
							[poster] NVARCHAR(50),
							[posterid] INT,
							[fid] INT,
							[title] NVARCHAR(20),
							[tid] INT
						)
INSERT INTO @tempposttable 
EXEC('SELECT [pid],[postdatetime],[poster],[posterid],[fid],[title],[tid] FROM [dnt_posts'+@currentPostTableId+'] WHERE [pid] IN ('+@pidList+')')
SELECT @count=COUNT(1) FROM @tempposttable
WHILE @begin <= @count
BEGIN
	SELECT @postdatetime = [postdatetime],
			@poster = [poster],
			@posterid = [posterid],
			@fid = [fid],
			@title = [title],
			@tid = [tid],
			@pid = [pid]
	FROM @tempposttable WHERE [ROWID]=@begin
	UPDATE [dnt_forums] 
	SET [posts]=[posts] + 1, 
	[todayposts]=CASE WHEN datediff(day,@postdatetime,getdate())=0 
	THEN [todayposts] + 1	
	ELSE [todayposts] END,
	[lastpost]=@postdatetime,
	[lastposter]=@poster,
	[lastposterid]=@posterid 
	WHERE [fid]=@fid
	
	UPDATE [dnt_users] 
	SET [lastpost] = @postdatetime, 
	[lastpostid] = @posterid, 
	[lastposttitle] = @title, 
	[posts] = [posts] + 1  
	WHERE [uid] = @posterid
	
	UPDATE [dnt_topics] 
	SET [replies]=[replies]+1,
	[lastposter]=@poster,
	[lastposterid]=@posterid,
	[lastpost]=@postdatetime,
	[lastpostid]=@pid 
	WHERE [tid]=@tid
	
	SET @begin = @begin + 1
END