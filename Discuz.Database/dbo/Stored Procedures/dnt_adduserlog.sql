
CREATE PROCEDURE [dnt_adduserlog]
@uid int,
@action char(10)
AS
BEGIN
	IF(@action='delete')
		DELETE [dnt_userlog] WHERE [uid]=@uid
	DECLARE @exist int
	SET @exist=(SELECT COUNT(1) FROM [dnt_userlog] WHERE [uid]=@uid AND [action]=@action)
	IF(@exist<=0)
		INSERT INTO [dnt_userlog]([uid],[action]) VALUES(@uid,@action)
END