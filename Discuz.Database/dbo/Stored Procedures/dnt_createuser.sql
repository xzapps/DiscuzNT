
CREATE PROCEDURE [dnt_createuser]
@username nchar(20),
@nickname nchar(20),
@password char(32),
@secques char(8),
@gender int,
@adminid int,
@groupid smallint,
@groupexpiry int,
@extgroupids char(60),
@regip char(15),
@joindate char(19),
@lastip char(15),
@lastvisit char(19),
@lastactivity char(19),
@lastpost char(19),
@lastpostid int,
@lastposttitle nchar(60),
@posts int,
@digestposts smallint,
@oltime int,
@pageviews int,
@credits int,
@extcredits1 float,
@extcredits2 float,
@extcredits3 float,
@extcredits4 float,
@extcredits5 float,
@extcredits6 float,
@extcredits7 float,
@extcredits8 float,
@avatarshowid int,
@email char(50),
@bday char(19),
@sigstatus int,
@salt nchar(6),
@tpp int,
@ppp int,
@templateid smallint,
@pmsound int,
@showemail int,
@newsletter int,
@invisible int,
@newpm int,
@accessmasks int,
@website varchar(80),
@icq varchar(12),
@qq varchar(12),
@yahoo varchar(40),
@msn varchar(40),
@skype varchar(40),
@location nvarchar(30),
@customstatus varchar(30),
@avatar varchar(255),
@avatarwidth int,
@avatarheight int,
@medals varchar(300),
@bio nvarchar(500),
@signature nvarchar(500),
@sightml nvarchar(1000),
@authstr varchar(20),
@realname nvarchar(10),
@idcard varchar(20),
@mobile varchar(20),
@phone varchar(20)
AS
DECLARE @uid int

INSERT INTO [dnt_users]([username],[nickname], [password], [secques], [gender], [adminid], [groupid], [groupexpiry], [extgroupids], [regip], [joindate], [lastip], [lastvisit], [lastactivity], [lastpost], [lastpostid], [lastposttitle], [posts], [digestposts], [oltime], [pageviews], [credits], [extcredits1], [extcredits2], [extcredits3], [extcredits4], [extcredits5], [extcredits6], [extcredits7], [extcredits8], [avatarshowid], [email], [bday], [sigstatus], [salt], [tpp], [ppp], [templateid], [pmsound], [showemail], [newsletter], [invisible], [newpm], [accessmasks]) VALUES(@username,@nickname, @password, @secques, @gender, @adminid, @groupid, @groupexpiry, @extgroupids, @regip, @joindate, @lastip, @lastvisit, @lastactivity, @lastpost, @lastpostid, @lastposttitle, @posts, @digestposts, @oltime, @pageviews, @credits, @extcredits1, @extcredits2, @extcredits3, @extcredits4, @extcredits5, @extcredits6, @extcredits7, @extcredits8, @avatarshowid, @email, @bday, @sigstatus, @salt, @tpp, @ppp, @templateid, @pmsound, @showemail, @newsletter, @invisible, @newpm, @accessmasks)
SET @uid = SCOPE_IDENTITY()
SELECT @uid AS 'userid'

IF @@ERROR=0
	BEGIN
		UPDATE [dnt_statistics] SET [totalusers]=[totalusers] + 1,[lastusername]=@username,[lastuserid]=@uid
	END

INSERT INTO dnt_userfields 
	([uid],[website],[icq],[qq],[yahoo],[msn],[skype],[location],[customstatus],[avatar],[avatarwidth],[avatarheight],[medals],[bio],[signature],[sightml],[authstr],[realname],[idcard],[mobile],[phone])
VALUES
	(@uid,@website,@icq,@qq,@yahoo,@msn,@skype,@location,@customstatus,@avatar,@avatarwidth,@avatarheight,@medals,@bio,@signature,@sightml,@authstr,@realname,@idcard,@mobile,@phone)