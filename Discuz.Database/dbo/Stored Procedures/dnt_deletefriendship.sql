
CREATE PROCEDURE [dnt_deletefriendship]
@uid int,
@fuidlist nvarchar(1000)
AS
BEGIN
	DELETE [dnt_friends] WHERE ([uid]=@uid AND [fuid] IN(SELECT [item] FROM [dnt_split](@fuidlist, ',')))
	OR ([uid] IN ((SELECT [item] FROM [dnt_split](@fuidlist, ','))) AND [fuid]=@uid)
	
	DECLARE @fuid int
	DECLARE @logcount int
	DECLARE fuidcursor cursor for (select [item] from [dnt_split](@fuidlist,','))
	open fuidcursor
	fetch next from fuidcursor into @fuid
		while(@@FETCH_STATUS=0)
		begin
			SET @logcount=(SELECT COUNT(1) FROM [dnt_friendslog] WHERE ([uid]=@uid AND [fuid]=@fuid) OR ([uid]=@fuid AND [fuid]=@uid))
			IF @logcount>0
				DELETE [dnt_friendslog] WHERE ([uid]=@uid AND [fuid]=@fuid) OR ([uid]=@fuid AND [fuid]=@uid)
			ELSE
				begin
   					INSERT INTO [dnt_friendslog]([uid],[fuid],[action]) VALUES(@uid,@fuid,'delete');
					INSERT INTO [dnt_friendslog]([uid],[fuid],[action]) VALUES(@fuid,@uid,'delete')
				end
		    fetch next from fuidcursor into @fuid
		end
	close fuidcursor
	deallocate fuidcursor
END