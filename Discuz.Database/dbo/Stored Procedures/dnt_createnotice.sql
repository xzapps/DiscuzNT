
CREATE PROCEDURE [dnt_createnotice]
@uid int,
@type int,
@new  int,
@posterid int,
@poster nchar(20),
@note ntext,
@postdatetime datetime,
@fromid int

AS
DECLARE @count INT
SET @count=(SELECT COUNT(1) FROM [dnt_notices] WHERE [posterid]=@posterid AND [uid]=@uid AND [type]=@type AND [fromid]=@fromid)

IF(@count=0)
	BEGIN
		INSERT INTO [dnt_notices] ([uid], [type], [new], [posterid], [poster], [note], [postdatetime],[fromid]) VALUES (@uid, @type, @new, @posterid, @poster, @note, @postdatetime,@fromid)
		SELECT SCOPE_IDENTITY()  AS 'nid'
		RETURN
	END
ELSE
	BEGIN
		DELETE [dnt_notices] WHERE [posterid]=@posterid AND [uid]=@uid AND [type]=@type AND [fromid]=@fromid
		INSERT INTO [dnt_notices] ([uid], [type], [new], [posterid], [poster], [note], [postdatetime],[fromid]) VALUES (@uid, @type, @new, @posterid, @poster, @note, @postdatetime,@fromid)
		SELECT SCOPE_IDENTITY()  AS 'nid'
		RETURN
	END