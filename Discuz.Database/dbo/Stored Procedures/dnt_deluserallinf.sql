
CREATE PROC [dnt_deluserallinf]
@uid INT,
@delPosts BIT,
@delPms BIT
AS
DECLARE @existuid INT
SELECT @existuid = COUNT([uid]) FROM [dnt_users] WHERE [uid]=@uid
IF @existuid <>0
BEGIN
	DELETE FROM [dnt_users] WHERE [uid]=@uid                 
	DELETE FROM [dnt_userfields] WHERE [uid]=@uid                 
	DELETE FROM [dnt_onlinetime] WHERE [uid]=@uid                
	DELETE FROM [dnt_polls] WHERE [uid]=@uid                 
	DELETE FROM [dnt_favorites] WHERE [uid]=@uid
	DECLARE @tableid INT,
			@tablename NVARCHAR(20)
	IF @delPosts = 1
		BEGIN
			DELETE FROM [dnt_topics] WHERE [posterid]=@uid
			DECLARE tables_cursor CURSOR FOR SELECT [id] FROM [dnt_tablelist]
			OPEN tables_cursor
			FETCH NEXT FROM tables_cursor INTO @tableid
			WHILE @@FETCH_STATUS = 0
			BEGIN
				SET @tablename = 'dnt_posts' + LTRIM(STR(@tableid))
				EXEC ('DELETE FROM ' + @tablename + ' WHERE [posterid]='+@uid)
				FETCH NEXT FROM tables_cursor INTO @tableid
			END
			CLOSE tables_cursor
			DEALLOCATE tables_cursor
			SET @tableid = 0
			SET @tablename = ''
		END
	ELSE
		BEGIN
			UPDATE [dnt_topics] SET [poster]='该用户已被删除' Where [posterid]=@uid
			UPDATE [dnt_topics] SET [lastposter]='该用户已被删除' Where [lastpostid]=@uid
			DECLARE tables_cursor CURSOR FOR SELECT [id] FROM [dnt_tablelist]
			OPEN tables_cursor
			FETCH NEXT FROM tables_cursor INTO @tableid
			WHILE @@FETCH_STATUS = 0
			BEGIN
				SET @tablename = 'dnt_posts' + LTRIM(STR(@tableid))
				EXEC ('UPDATE ['+@tablename+'] SET [poster]=''该用户已被删除'' WHERE [posterid]='+@uid)
				FETCH NEXT FROM tables_cursor INTO @tableid
			END
			CLOSE tables_cursor
			DEALLOCATE tables_cursor
			SET @tableid = 0
			SET @tablename = ''
		END
	IF @delPms = 1
		BEGIN
			DELETE FROM [dnt_pms] WHERE [msgfromid]=@uid
		END
	ELSE
		BEGIN
			UPDATE [dnt_pms] SET [msgfrom]='该用户已被删除' WHERE [msgfromid]=@uid
			UPDATE [dnt_pms] SET [msgto]='该用户已被删除' WHERE [msgtoid]=@uid
		END
	DELETE FROM [dnt_moderators] WHERE [uid]=@uid
	UPDATE [dnt_statistics] SET [totalusers]=[totalusers]-1
	DECLARE @lastuserid INT,@lastusername VARCHAR(50)
	SELECT TOP 1 @lastuserid=[uid],@lastusername=[username] FROM [dnt_users] ORDER BY [uid] DESC
	IF @lastuserid IS NOT NULL
		UPDATE [dnt_Statistics] SET [lastuserid]=@lastuserid, [lastusername]=@lastusername
END