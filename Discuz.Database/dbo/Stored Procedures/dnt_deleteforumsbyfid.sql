
CREATE PROC [dnt_deleteforumsbyfid]
@fid INT,
@postname NVARCHAR(50)
AS
DECLARE @parentid INT,
		@displayorder INT		
SELECT TOP 1 @parentid=[parentid],@displayorder=[displayorder] FROM [dnt_forums] WHERE [fid]=@fid
UPDATE [dnt_forums] SET [displayorder]=[displayorder]-1 WHERE [displayorder]>@displayorder
UPDATE [dnt_forums] SET [subforumcount]=[subforumcount]-1 WHERE  [fid]=@parentid
DELETE FROM [dnt_forumfields] WHERE [fid]=@fid
DELETE FROM [dnt_polls] WHERE [tid] IN (SELECT [tid] FROM [dnt_topics] WHERE [fid]=@fid)
EXEC ('DELETE FROM [dnt_attachments] WHERE [tid] IN(SELECT [tid] FROM [dnt_topics] WHERE [fid]=' + @fid + ') OR [pid] IN(SELECT [pid] FROM [' + @postname + '] WHERE [fid]=' + @fid + ')')
EXEC ('DELETE FROM [' + @postname + '] WHERE [fid]=' + @fid)
DELETE FROM [dnt_topics] WHERE [fid]=@fid
DELETE FROM [dnt_forums] WHERE  [fid]=@fid
DELETE FROM [dnt_moderators] WHERE  [fid]=@fid