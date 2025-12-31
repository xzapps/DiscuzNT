
CREATE PROCEDURE [dnt_clearexpireinvitecode]
AS
BEGIN
DELETE [dnt_invitation] WHERE [invitetype]=3 AND [createdtime]<>[expiretime] AND ([expiretime]-GETDATE())<=0;
DELETE [dnt_invitation] WHERE [isdeleted]=1 AND [createdtime]<(GETDATE()-1)
END