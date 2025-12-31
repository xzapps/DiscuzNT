
CREATE PROC [dnt_deletepostsbyuidanddays]
@uid	INT,
@days	INT
AS

DECLARE		@maxid 			INT,
			@minid 			INT,
			@postcount 			INT
SELECT @maxid=MAX(id), @minid=MIN(id) FROM dnt_tablelist WHERE DATEDIFF(dd,createdatetime,GETDATE()) <= @days;
DELETE [dnt_topics] WHERE [posterid]=@uid AND DATEDIFF(dd,postdatetime,GETDATE()) <= @days;

IF @maxid is NULL
BEGIN
	SELECT @maxid=MAX(id) FROM dnt_tablelist;
	EXEC(' DELETE FROM [dnt_posts'+@maxid+'] WHERE [posterid]='+@uid+' AND DATEDIFF(dd,postdatetime,GETDATE()) <= '+@days)
	SELECT @postcount = @@ROWCOUNT;
END
ELSE
BEGIN
	WHILE @maxid >= @minid
	BEGIN
		EXEC(' DELETE FROM [dnt_posts'+@maxid+'] WHERE [posterid]='+@uid+' AND DATEDIFF(dd,postdatetime,GETDATE()) <= '+@days)
		SELECT @postcount = @postcount+@@ROWCOUNT;
		SET @maxid = @maxid - 1
	END
END
UPDATE [dnt_users] SET [posts]=[posts]-@postcount WHERE [uid]=@uid