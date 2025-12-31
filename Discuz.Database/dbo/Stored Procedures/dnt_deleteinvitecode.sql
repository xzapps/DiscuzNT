
CREATE PROCEDURE [dnt_deleteinvitecode]
@id int
AS
BEGIN
UPDATE [dnt_invitation] SET [isdeleted]=1 WHERE [inviteid]=@id
END