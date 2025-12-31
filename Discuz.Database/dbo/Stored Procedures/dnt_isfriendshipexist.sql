
CREATE PROCEDURE [dnt_isfriendshipexist] 
@uid int,
@fuid int
AS
DECLARE @count1 int
DECLARE @count2 int
BEGIN
	SET @count1=(SELECT COUNT(1) FROM [dnt_friends] WHERE ([uid]=@uid AND [fuid]=@fuid) OR ([uid]=@fuid AND [fuid]=@uid))
	SET @count2=(SELECT COUNT(1) FROM [dnt_friendsrequest] WHERE ([fromuid]=@uid AND [touid]=@fuid) OR ([fromuid]=@fuid AND [touid]=@uid))
	
	IF @count1>0
		SELECT 2
	ELSE IF @count2>0
		SELECT 1
	ELSE
		SELECT 0
END