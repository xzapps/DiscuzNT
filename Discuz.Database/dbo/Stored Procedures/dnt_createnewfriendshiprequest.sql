
CREATE PROCEDURE [dnt_createnewfriendshiprequest]
@fromuid int,
@touid int,
@fromusername nchar(20),
@gid int,
@note nvarchar(100)
AS
BEGIN
    INSERT INTO [dnt_friendsrequest]([fromuid],[touid],[fromusername],[gid],[note]) VALUES(@fromuid,@touid,@fromusername,@gid,@note)
    SELECT 1
END