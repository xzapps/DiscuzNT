
CREATE PROC [dnt_getmaxandmintid]
@fid INT
AS
SELECT 
MAX([tid]) AS [maxtid],
MIN([tid]) AS [mintid] 
FROM [dnt_topics] 
WHERE 
[fid] IN (SELECT [fid] 
		  FROM [dnt_forums] 
		  WHERE [fid]=@fid 
		  OR (CHARINDEX(',' + RTRIM(@fid) + ',', ',' + RTRIM(parentidlist) + ',') > 0))