
CREATE PROC [dnt_updatelastpostoftopic]
@tid INT,
@postcount INT,
@lastpostid INT,
@lastpost VARCHAR(20),
@lastposterid INT,
@lastposter VARCHAR(20)
AS
UPDATE [dnt_topics] 
SET [lastpost]=@lastpost, [lastposterid]=@lastposterid, [lastposter]=@lastposter, [replies]=@postcount, [lastpostid]=@lastpostid 
WHERE [tid] = @tid