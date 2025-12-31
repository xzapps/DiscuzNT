
CREATE PROCEDURE [dnt_deleteattachmentbypid]
@pid INT
AS
DELETE FROM [dnt_attachments] 
WHERE [pid]=@pid