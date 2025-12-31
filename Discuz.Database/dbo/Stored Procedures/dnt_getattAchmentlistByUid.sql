
CREATE PROCEDURE [dnt_getattAchmentlistByUid]
@uid	INT,
@days	INT
AS
IF @days=0
	SELECT [aid], [tid], [pid], [filename] FROM [dnt_attachments] WITH (NOLOCK) WHERE [uid] = @uid
ELSE
    SELECT [aid], [tid], [pid], [filename] FROM [dnt_attachments] WITH (NOLOCK) WHERE [uid] = @uid AND DATEDIFF(dd,postdatetime,GETDATE()) <= @days