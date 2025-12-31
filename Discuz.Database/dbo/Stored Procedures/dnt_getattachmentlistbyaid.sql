
CREATE PROCEDURE [dnt_getattachmentlistbyaid]
@aidlist varchar(500)
AS
SELECT [aid], [tid], [pid], [filename] FROM [dnt_attachments] WITH (NOLOCK) WHERE [aid] IN (SELECT [item] FROM [dnt_split](@aidlist, ',') )