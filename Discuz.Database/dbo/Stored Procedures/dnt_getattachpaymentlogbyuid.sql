
CREATE PROCEDURE [dnt_getattachpaymentlogbyuid]
@attachidlist varchar(2000),
@uid int
AS
EXEC('
		SELECT 
		[aid]
		FROM [dnt_attachpaymentlog] 
		WHERE [uid] = '+@uid+ ' AND [dnt_attachpaymentlog].[aid] IN ('+@attachidlist+')
	')