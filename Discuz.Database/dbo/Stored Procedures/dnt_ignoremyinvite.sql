
CREATE PROCEDURE [dnt_ignoremyinvite]
@idlist nvarchar(1000)
AS
BEGIN
	DELETE [dnt_myinvite] WHERE [id]IN(SELECT [item] FROM [dnt_split](@idlist, ','))
	SELECT 1
END