
CREATE PROC [dnt_updateforum]
@lastfid INT,
@topiccount INT,
@postcount INT,
@lasttid INT,
@lasttitle NCHAR(80),
@lastpost VARCHAR(20),
@lastposterid INT,
@lastposter NCHAR(20),
@todaypostcount INT 
AS
UPDATE [dnt_forums] 
SET [topics] = @topiccount, [posts]=@postcount, [todayposts] = @todaypostcount, [lasttid] = @lasttid, [lasttitle] = @lasttitle, [lastpost]=@lastpost, [lastposterid] = @lastposterid, [lastposter]=@lastposter 
WHERE [dnt_forums].[fid] = @lastfid