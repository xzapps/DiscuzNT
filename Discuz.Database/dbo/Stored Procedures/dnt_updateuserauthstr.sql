
CREATE PROCEDURE [dnt_updateuserauthstr]
	@uid int,
	@authstr char(20),
	@authflag int =1
AS
UPDATE [dnt_userfields] SET [authstr]=@authstr, [authtime] = GETDATE(), [authflag]=@authflag WHERE [uid]=@uid