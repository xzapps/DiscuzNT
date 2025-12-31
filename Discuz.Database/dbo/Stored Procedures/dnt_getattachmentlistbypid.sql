
CREATE PROCEDURE [dnt_getattachmentlistbypid]
@pid INT
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
WHERE [pid]=@pid