
CREATE PROCEDURE [dnt_deleteattachmentbytidlist]
@tidlist VARCHAR(500)
AS
EXEC('DELETE FROM [dnt_attachments] WHERE [tid] IN ('+@tidlist+')')