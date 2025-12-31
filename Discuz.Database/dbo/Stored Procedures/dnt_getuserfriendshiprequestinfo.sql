
CREATE PROCEDURE [dnt_getuserfriendshiprequestinfo]
@fromuid int,
@touid int
AS
BEGIN
	SELECT [fromuid],[fromusername],[touid],[gid],[datetime],[note] FROM [dnt_friendsrequest] WHERE [touid]=@touid AND [fromuid]=@fromuid
END