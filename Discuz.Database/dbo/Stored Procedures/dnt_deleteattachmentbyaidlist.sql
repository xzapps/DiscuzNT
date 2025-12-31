
CREATE PROCEDURE [dnt_deleteattachmentbyaidlist]
@aidlist VARCHAR(500)
AS
EXEC('DELETE FROM [dnt_attachments] WHERE [aid] IN ('+@aidlist+')')