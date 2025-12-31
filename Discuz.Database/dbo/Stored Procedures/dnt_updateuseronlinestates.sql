
CREATE PROCEDURE [dnt_updateuseronlinestates] 
@uidlist varchar(5000) = '' 
AS

EXEC ('UPDATE [dnt_users] SET [onlinestate]=0,[lastactivity]=GETDATE() WHERE [uid] IN ('+@uidlist+')')