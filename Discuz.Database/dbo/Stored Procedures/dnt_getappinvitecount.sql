
CREATE PROCEDURE [dnt_getappinvitecount]
@uid int
AS
BEGIN
	SELECT COUNT(1) FROM [dnt_myinvite] WHERE [touid]=@uid
END