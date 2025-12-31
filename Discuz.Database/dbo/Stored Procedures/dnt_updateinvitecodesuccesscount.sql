
CREATE PROCEDURE [dnt_updateinvitecodesuccesscount]
@id int
AS
BEGIN
UPDATE [dnt_invitation] SET [successcount]=[successcount]+1 WHERE [inviteid]=@id
END