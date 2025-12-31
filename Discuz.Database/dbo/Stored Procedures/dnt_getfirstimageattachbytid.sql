
CREATE PROCEDURE [dnt_getfirstimageattachbytid]
@tid INT
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
WHERE [tid]=@tid AND LEFT([filetype], 5)='image' ORDER BY [aid]