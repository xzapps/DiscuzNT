
CREATE PROCEDURE [dnt_deletemyinvitebyappid]
@uid int,
@appid int
AS
BEGIN
	DELETE [dnt_myinvite] WHERE [touid]=@uid AND [appid]=@appid
END