
CREATE PROCEDURE [dnt_getnoticebyuid]
@uid int,
@type int

AS

IF @type = 0
     SELECT nid, uid, type, new, posterid, poster, note, postdatetime FROM [dnt_notices] WHERE [uid] = @uid  ORDER BY [postdatetime] DESC
ELSE
    SELECT nid, uid, type, new, posterid, poster, note, postdatetime  FROM [dnt_notices] WHERE [uid] = @uid AND [type] = @type ORDER BY [postdatetime] DESC