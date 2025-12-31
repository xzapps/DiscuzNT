
CREATE PROCEDURE [dnt_getuserfriendscount]
@uid int
AS
BEGIN
	SELECT COUNT(1) FROM [dnt_friends] WHERE [uid]=@uid
END