
CREATE PROCEDURE [dnt_deleteattachmentbytid]
@tid INT
AS
DELETE FROM [dnt_attachments] WHERE [tid] = @tid