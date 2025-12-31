
CREATE PROCEDURE [dnt_updateonlinenewinfo]
@action NCHAR(30),
@olid INT,
@count SMALLINT
AS
BEGIN
IF(@action='newpms')
	UPDATE [dnt_online] SET [newpms]=@count WHERE [olid]=@olid
ELSE IF(@action='newnotice')
	IF(@count = 0)
		UPDATE [dnt_online] SET [newnotices]=(SELECT COUNT(nid) FROM [dnt_notices] WHERE [uid] = (SELECT [userid] FROM [dnt_online] WHERE [olid]=@olid)  AND [new] = 1) WHERE [olid]=@olid
	ELSE
		UPDATE [dnt_online] SET [newnotices]=[newnotices]+@count WHERE [olid]=@olid
ELSE
	SELECT 1
END