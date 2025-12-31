
CREATE PROCEDURE [dnt_deleteonlineusers] 
@olidlist varchar(5000) = ''
AS

DELETE FROM [dnt_online] WHERE CHARINDEX(','+RTRIM([olid])+',', ','+@olidlist+',') > 0