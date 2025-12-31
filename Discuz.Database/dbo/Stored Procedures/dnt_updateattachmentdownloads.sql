
CREATE PROCEDURE [dnt_updateattachmentdownloads]
@aid INT
AS
UPDATE [dnt_attachments] SET [downloads]=[downloads]+1 WHERE [aid]=@aid;

UPDATE  [dnt_myattachments]
SET    [downloads] = (SELECT [downloads] FROM [dnt_attachments] WHERE [dnt_attachments].aid = @aid)
WHERE  [aid]=@aid