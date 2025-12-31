
CREATE PROCEDURE [dnt_updateuserpreference]
	@uid int,
	@avatar varchar(255),
	@avatarwidth int,
	@avatarheight int,
	@templateid int
AS
UPDATE [dnt_userfields] SET [avatar]=@avatar, [avatarwidth]=@avatarwidth, [avatarheight]=@avatarheight WHERE [uid]=@uid
UPDATE [dnt_users] SET [templateid]=@templateid WHERE [uid]=@uid