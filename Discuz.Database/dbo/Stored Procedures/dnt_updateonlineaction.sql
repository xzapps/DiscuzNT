
CREATE PROCEDURE [dnt_updateonlineaction] 
@action smallint,
@lastupdatetime datetime,
@forumid int,
@forumname nvarchar(100),
@titleid int,
@title nvarchar(160),
@olid int
AS

IF (@action =5 OR @action =6)
BEGIN
   UPDATE [dnt_online] SET [lastactivity]=[action],[action]=@action,[lastupdatetime]=@lastupdatetime,[lastposttime]= @lastupdatetime,[forumid]=@forumid,[forumname]=@forumname,[titleid]=@titleid,[title]=@title WHERE [olid]=@olid
END
ELSE
BEGIN
   UPDATE [dnt_online] SET [lastactivity]=[action],[action]=@action,[lastupdatetime]=@lastupdatetime,[forumid]=@forumid,[forumname]=@forumname,[titleid]=@titleid,[title]=@title WHERE [olid]=@olid
END