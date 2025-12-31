
CREATE PROCEDURE [dnt_getnoticecountbyuid]
@uid int,
@type int
AS
IF @type = -1
   SELECT COUNT(nid) FROM [dnt_notices] WHERE [uid] = @uid
ELSE
    SELECT COUNT(nid) FROM [dnt_notices] WHERE [uid] = @uid AND [type]=@type