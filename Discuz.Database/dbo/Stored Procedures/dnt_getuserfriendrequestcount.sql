
CREATE PROCEDURE [dnt_getuserfriendrequestcount]
@uid int
AS
BEGIN
    SELECT COUNT(1) FROM [dnt_friendsrequest] WHERE [touid]=@uid
END