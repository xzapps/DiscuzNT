
CREATE PROCEDURE [dnt_gettodayusercreatedinvitecode]
@creatorid int
AS
BEGIN
SELECT COUNT(1) FROM [dnt_invitation] WHERE [creatorid]=@creatorid AND [invitetype]=2 AND (GETDATE()- [createdtime])<1
END