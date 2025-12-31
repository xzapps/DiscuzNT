
CREATE PROCEDURE [dnt_updateuserpassword]
	@uid int,
	@password char(44)
AS
UPDATE [dnt_users] SET [password]=@password WHERE [uid]=@uid