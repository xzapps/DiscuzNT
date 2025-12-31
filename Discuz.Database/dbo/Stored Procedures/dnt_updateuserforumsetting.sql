
CREATE PROCEDURE [dnt_updateuserforumsetting]
	@uid int,
	@tpp int,
	@ppp int,
	@invisible int,
	@customstatus varchar(30)
AS
UPDATE [dnt_users] SET [tpp]=@tpp, [ppp]=@ppp, [invisible]=@invisible WHERE [uid]=@uid
UPDATE [dnt_userfields] SET [customstatus]=@customstatus WHERE [uid]=@uid