
CREATE PROCEDURE [dnt_createonlineuser] 
@onlinestate int,
@userid int,
@ip varchar(15),
@username nvarchar(40),
@nickname nvarchar(40),
@password char(32),
@groupid smallint,
@olimg varchar(80),
@adminid smallint,
@invisible smallint,
@action smallint,
@lastactivity smallint,
@lastposttime datetime,
@lastpostpmtime datetime,
@lastsearchtime datetime,
@lastupdatetime datetime,
@forumid int,
@forumname nvarchar(50),
@titleid int,
@title nvarchar(80),
@verifycode varchar(10),
@newpms smallint,
@newnotices smallint

AS

IF @onlinestate = 0
BEGIN
	UPDATE [dnt_users] SET [onlinestate]=1 WHERE [uid]=@userid
END


INSERT INTO [dnt_online] 
([userid],[ip],[username],[nickname],[password],[groupid],[olimg],[adminid],
[invisible],[action],[lastactivity],[lastposttime],[lastpostpmtime],[lastsearchtime],
[lastupdatetime],[forumid],[forumname],[titleid],[title],[verifycode],[newpms],[newnotices])
VALUES(@userid,@ip,@username,@nickname,@password,@groupid,@olimg,@adminid,@invisible,@action,
@lastactivity,@lastposttime,@lastpostpmtime,@lastsearchtime,@lastupdatetime,@forumid,@forumname,
@titleid,@title,@verifycode,@newpms,@newnotices);SELECT SCOPE_IDENTITY()