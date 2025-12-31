
CREATE PROCEDURE [dnt_getuserinvitecodecount]
@creatorid int
AS
BEGIN
SELECT COUNT(1) FROM [dnt_invitation] WHERE [creatorid]=@creatorid AND [invitetype]=3 AND [isdeleted]=0
END