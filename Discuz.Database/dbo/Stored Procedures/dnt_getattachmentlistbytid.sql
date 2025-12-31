
CREATE PROCEDURE [dnt_getattachmentlistbytid]
@tid INT
AS
SELECT 
[aid],
[filename] 
FROM [dnt_attachments] 
WHERE [tid]	= @tid