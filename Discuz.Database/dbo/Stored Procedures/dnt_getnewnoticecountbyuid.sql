
CREATE PROCEDURE [dnt_getnewnoticecountbyuid]
@uid int
AS

SELECT COUNT(nid) FROM [dnt_notices] WHERE [uid] =  @uid  AND [new] = 1