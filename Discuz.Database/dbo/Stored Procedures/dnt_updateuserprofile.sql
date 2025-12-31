
CREATE PROCEDURE [dnt_updateuserprofile]
	@uid int,
	@nickname nchar(20),
	@gender int,
	@email char(50),
	@bday char(10),
	@showemail int,
	@website nvarchar(80),
	@icq varchar(12),
	@qq varchar(12),
	@yahoo varchar(40),
	@msn varchar(40),
	@skype varchar(40),
	@location nvarchar(30),
	@bio nvarchar(500),
	@signature nvarchar(500),
	@sigstatus int,
	@sightml nvarchar(1000),
	@realname nvarchar(10),
	@idcard varchar(20),
	@mobile varchar(20),
	@phone varchar(20)
AS
UPDATE [dnt_users] SET [nickname]=@nickname, [gender]=@gender , [email]=@email , [bday]=@bday, [sigstatus]=@sigstatus, [showemail]=@showemail WHERE [uid]=@uid
UPDATE [dnt_userfields] SET [website]=@website , [icq]=@icq , [qq]=@qq , [yahoo]=@yahoo , [msn]=@msn , [skype]=@skype , [location]=@location , [bio]=@bio, [signature]=@signature, [sightml]=@sightml, [realname]=@realname,[idcard]=@idcard,[mobile]=@mobile,[phone]=@phone  WHERE [uid]=@uid