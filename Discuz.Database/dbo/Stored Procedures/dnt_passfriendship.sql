
CREATE PROCEDURE [dnt_passfriendship]
@fromuid int,
@touid int,
@togroupid int
AS
declare @count int
declare @tousername nchar(20)
set @count = (SELECT COUNT(1) FROM [dnt_friendsrequest] WHERE [fromuid]=@fromuid AND [touid]=@touid)
set @tousername=(SELECT [username] FROM [dnt_users] WHERE [uid]=@touid)
IF @count>0 and @tousername<>''
	BEGIN
		INSERT INTO[dnt_friends]([uid],[fuid],[fusername],[gid],[datetime])
		SELECT [fromuid],[touid],(@tousername),[gid],[datetime] FROM [dnt_friendsrequest] WHERE [fromuid]=@fromuid AND [touid]=@touid;
		
		INSERT INTO[dnt_friends]([uid],[fuid],[fusername],[gid],[datetime])
		SELECT [touid],[fromuid],[fromusername],(@togroupid),[datetime] FROM [dnt_friendsrequest] WHERE [fromuid]=@fromuid AND [touid]=@touid;
		
		DECLARE @logcount int
		SET @logcount=(SELECT COUNT(1) FROM [dnt_friendslog] WHERE ([uid]=@fromuid AND [fuid]=@touid) OR ([uid]=@touid AND [fuid]=@fromuid))
		IF(@logcount>0)
			DELETE [dnt_friendslog] WHERE ([uid]=@fromuid AND [fuid]=@touid) OR ([uid]=@touid AND [fuid]=@fromuid)

		INSERT INTO [dnt_friendslog]([uid],[fuid],[action]) VALUES(@fromuid,@touid,'add');
		INSERT INTO [dnt_friendslog]([uid],[fuid],[action]) VALUES(@touid,@fromuid,'add');
		DELETE [dnt_friendsrequest] WHERE [fromuid]=@fromuid AND [touid]=@touid;
		SELECT 1
	END
ELSE
    SELECT 0