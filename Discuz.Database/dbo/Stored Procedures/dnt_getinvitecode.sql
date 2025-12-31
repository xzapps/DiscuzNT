
CREATE PROCEDURE [dnt_getinvitecode]
@searchtype nchar(10),
@searchkey nchar(20)
AS
BEGIN
IF @searchtype='uid'
   SELECT TOP 1 [inviteid],[invitecode],[invitetype],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] 
FROM [dnt_invitation] WHERE [creatorid]=@searchkey AND [invitetype]=2 AND [isdeleted]=0 ORDER BY [inviteid] DESC
ELSE IF @searchtype='id'
   SELECT [inviteid],[invitecode],[invitetype],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM 

[dnt_invitation] WHERE [inviteid]=@searchkey AND [isdeleted]=0
ELSE IF @searchtype='code'
   SELECT [inviteid],[invitecode],[invitetype],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM 

[dnt_invitation] WHERE [invitecode]=@searchkey AND [isdeleted]=0
ELSE
   SELECT (1)
END