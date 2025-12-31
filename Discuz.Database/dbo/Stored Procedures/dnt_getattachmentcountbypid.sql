
CREATE PROCEDURE [dnt_getattachmentcountbypid]
@pid INT
AS
SELECT COUNT([aid]) AS [acount] FROM [dnt_attachments] WHERE [pid]=@pid