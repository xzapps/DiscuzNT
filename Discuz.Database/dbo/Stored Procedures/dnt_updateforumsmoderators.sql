
CREATE PROC [dnt_updateforumsmoderators]
@displayorder INT,
@moderators VARCHAR(500),
@fid INT,
@inherited INT
AS
DECLARE @usernamelist VARCHAR(255),
		@username VARCHAR(255),
		@uid INT,
		@len INT,
		@b BIT,
		@begin INT,
		@end INT
SELECT @len=0,@begin=1,@end=1,@b=1,@usernamelist=''
WHILE @b=1
	BEGIN
		IF @end=1
			SET @begin=@end
		ELSE
			SET @begin=@end+1
		SET @end = CHARINDEX(',',@moderators,@begin)
		IF @end=0
			SET @end=LEN(@moderators)+1
		SET @len=@end-@begin
		IF @len>0
			BEGIN
				SET @username=SUBSTRING(@moderators,@begin,@len)
				IF @username<>''
					BEGIN
						SELECT @uid=[uid] FROM [dnt_users] WHERE [groupid]<>7 AND [groupid]<>8 AND [username]=@username
						IF @uid IS NOT NULL
							BEGIN
								INSERT INTO [dnt_moderators] ([uid],[fid],[displayorder],[inherited]) VALUES (@uid,@fid,@displayorder,@inherited)
								SET @usernamelist=@usernamelist+@username+','
								SET @displayorder=@displayorder+1
								SET @uid=NULL
							END
					END
			END
		ELSE
			SET @b=0
	END
IF RIGHT(@usernamelist,1)=','
	SET @usernamelist=LEFT(@usernamelist,LEN(@usernamelist)-1)
UPDATE [dnt_forumfields] SET [moderators]=@usernamelist WHERE [fid] =@fid