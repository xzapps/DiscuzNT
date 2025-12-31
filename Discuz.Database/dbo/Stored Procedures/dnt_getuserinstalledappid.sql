
CREATE PROCEDURE [dnt_getuserinstalledappid]
@uid int
AS
BEGIN
	SELECT [appid] FROM [dnt_userapp] WHERE [uid]=@uid
END