
CREATE PROCEDURE [dnt_deleteattachmentbyaid]
@aid INT
AS
DELETE FROM [dnt_attachments] 
WHERE [aid]=@aid