
CREATE PROC [dnt_getsubforumcount]
@fid INT
AS
SELECT COUNT(fid) FROM [dnt_forums] WHERE [parentid]=@fid