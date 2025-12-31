
CREATE PROCEDURE [dnt_ignorefriendshiprequest]
@touid int,
@fromuidlist varchar(1000)
AS
BEGIN
	DELETE [dnt_friendsrequest] WHERE [touid]=@touid AND [fromuid] IN (SELECT [item] FROM [dnt_split](@fromuidlist, ','))
END