
CREATE PROCEDURE [dnt_getattachmentlistbypidlist]
@pidlist varchar(500)
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
FROM [dnt_attachments] WITH (NOLOCK)
WHERE [dnt_attachments].[pid] IN (SELECT [item]FROM [dnt_split](@pidlist, ',') )