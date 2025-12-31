
CREATE PROC [dnt_getparentidbyfid]
@fid INT
AS
SELECT [parentid] From [dnt_forums] WHERE [inheritedmod]=1 AND [fid]=@fid