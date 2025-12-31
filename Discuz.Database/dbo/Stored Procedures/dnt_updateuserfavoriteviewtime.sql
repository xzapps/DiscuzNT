
CREATE PROCEDURE [dnt_updateuserfavoriteviewtime]
@uid int,
@tid int
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [dnt_favorites] SET [viewtime]=GETDATE() WHERE [uid]=@uid AND [tid]=@tid
END