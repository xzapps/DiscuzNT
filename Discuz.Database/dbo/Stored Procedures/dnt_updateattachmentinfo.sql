
CREATE PROCEDURE [dnt_updateattachmentinfo]
@readperm INT,
@description NCHAR(100),
@aid INT
AS
UPDATE [dnt_attachments] 
SET [readperm] = @readperm, [description] = @description 
WHERE [aid] = @aid