
CREATE PROCEDURE [dnt_updateattachment]
@readperm INT,
@description NCHAR(100),
@attachprice INT,
@aid INT
AS
UPDATE [dnt_attachments] 
SET [readperm] = @readperm, [description] = @description, [attachprice] = @attachprice 
WHERE [aid] = @aid