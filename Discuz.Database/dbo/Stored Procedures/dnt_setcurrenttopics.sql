
CREATE PROCEDURE [dnt_setcurrenttopics]
@fid int
AS
UPDATE 
[dnt_forums] 
SET [curtopics] = (SELECT COUNT(tid) FROM [dnt_topics] WHERE [displayorder] >= 0 AND [fid]=@fid) WHERE [fid]=@fid