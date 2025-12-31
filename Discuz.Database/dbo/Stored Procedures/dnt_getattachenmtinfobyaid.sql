
CREATE PROCEDURE [dnt_getattachenmtinfobyaid]
@aid INT
AS
SELECT TOP 1
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
WHERE [aid]=@aid