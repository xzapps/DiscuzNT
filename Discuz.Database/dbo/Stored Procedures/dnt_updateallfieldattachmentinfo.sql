
CREATE PROCEDURE [dnt_updateallfieldattachmentinfo]
@postdatetime DATETIME,
@readperm INT,
@filename NCHAR(100),
@filetype NCHAR(50),
@description NCHAR(100),
@filesize INT,
@attachment NCHAR(255),
@downloads INT,
@tid INT,
@pid INT,
@aid INT,
@attachprice INT,
@width INT,
@height INT,
@isimage TINYINT
AS
UPDATE [dnt_attachments] 
SET 
[postdatetime] = @postdatetime, 
[readperm] = @readperm, 
[filename] = @filename, 
[description] = @description, 
[filetype] = @filetype, 
[filesize] = @filesize, 
[attachment] = @attachment, 
[downloads] = @downloads, 
[tid]=@tid, 
[pid]=@pid, 
[attachprice]=@attachprice, 
[width]=@width, 
[height]=@height,
[isimage]=@isimage 
WHERE [aid]=@aid;
UPDATE [dnt_myattachments] SET [tid]=@tid,[pid]=@pid WHERE [aid]=@aid