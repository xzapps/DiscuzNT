
CREATE PROCEDURE [dnt_getattachmentlistbytidlist]
@tidlist VARCHAR(500)
AS
SELECT 
[aid],
[filename] 
FROM [dnt_attachments] WITH (NOLOCK)
WHERE [tid] IN (SELECT [item]FROM [dnt_split](@tidlist, ','))