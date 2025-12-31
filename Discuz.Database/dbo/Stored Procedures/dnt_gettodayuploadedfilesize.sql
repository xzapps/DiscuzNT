
CREATE PROCEDURE [dnt_gettodayuploadedfilesize] 
@uid int

AS

SELECT SUM([filesize]) AS [todaysize] FROM [dnt_attachments] WHERE [uid]=@uid AND DATEDIFF(d,[postdatetime],GETDATE())=0