
CREATE PROC [dnt_deleteAttachmentByUid]
@uid	INT,
@days	INT
AS
IF @days = 0
BEGIN
	DELETE FROM [dnt_attachments] WHERE [uid] = @uid;
	DELETE FROM [dnt_myattachments] WHERE [uid] = @uid;
END
ELSE
BEGIN
	DELETE FROM [dnt_attachments] WHERE [uid] = @uid AND DATEDIFF(dd,postdatetime,GETDATE()) <= @days;
	DELETE FROM [dnt_myattachments] WHERE [uid] = @uid AND DATEDIFF(dd,postdatetime,GETDATE()) <= @days;
END

IF OBJECT_ID('dnt_getattAchmentlistByUid','P') IS NOT NULL
DROP PROC [dnt_getattAchmentlistByUid]