
CREATE PROCEDURE [dnt_getnousedforumattachment]
AS
SELECT 
[aid],
[uid],
[tid],
[pid],
[postdatetime],
[readperm],
[filename],
[description],
[filetype],
[filesize],
[attachment],
[downloads],
[attachprice],
[width],
[height],
[isimage]
FROM [dnt_attachments] 
WHERE [tid]= 0 AND [pid]=0 AND DATEDIFF(n, postdatetime, GETDATE()) > 30