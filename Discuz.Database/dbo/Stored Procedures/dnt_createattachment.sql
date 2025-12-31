
CREATE PROCEDURE [dnt_createattachment]
@uid int,
@tid int,
@pid int,
@postdatetime datetime,
@readperm int,
@filename nchar(200),
@description nchar(200),
@filetype nchar(100),
@filesize int,
@attachment nchar(255),
@downloads int,
@extname nvarchar(50),
@attachprice int,
@width int,
@height int,
@isimage tinyint

AS
DECLARE @aid int

INSERT INTO [dnt_attachments]([uid],[tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize],  [attachment], [downloads],[attachprice],[width],[height],[isimage]) VALUES(@uid, @tid, @pid, @postdatetime, @readperm, @filename, @description, @filetype, @filesize,  @attachment, @downloads, @attachprice,@width,@height,@isimage)
SELECT SCOPE_IDENTITY()  AS 'aid'

set @aid=(SELECT SCOPE_IDENTITY()  AS 'aid')
UPDATE [dnt_posts1] SET [attachment]=1 WHERE [pid]=@pid

INSERT INTO [dnt_myattachments]([aid],[uid],[attachment],[description],[postdatetime],[downloads],[filename],[pid],[tid],[extname]) VALUES(@aid,@uid,@attachment,@description,@postdatetime,@downloads,@filename,@pid,@tid,@extname)