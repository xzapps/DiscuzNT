
CREATE PROC [dnt_updatetopiclastposterid]
@tid INT
AS
UPDATE [dnt_topics] 
SET [lastposterid]=(SELECT ISNULL(MIN(lastpostid), -1)-1 FROM [dnt_topics] WHERE [tid] = @tid)