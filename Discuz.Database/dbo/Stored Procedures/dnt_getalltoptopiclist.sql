
CREATE PROCEDURE [dnt_getalltoptopiclist]
AS
SELECT 
[tid],
[displayorder],
[fid] 
FROM [dnt_topics] 
WHERE [displayorder] > 0 ORDER BY [fid]