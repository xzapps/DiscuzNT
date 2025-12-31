
CREATE PROCEDURE [dnt_getattachmentcountbytid]
@tid INT
AS
SELECT COUNT([aid]) AS [acount] FROM [dnt_attachments] WHERE [tid]=@tid