
CREATE PROCEDURE [dnt_gettopiccount]
@fid int
AS
SELECT [curtopics] FROM [dnt_forums] WHERE [fid] = @fid