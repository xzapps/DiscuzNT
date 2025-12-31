
CREATE PROCEDURE [dnt_isinvitecodeexist]
@code nchar(8)
AS
BEGIN
SELECT COUNT(1) FROM [dnt_invitation] WHERE [invitecode]=@code AND [isdeleted] =0
END