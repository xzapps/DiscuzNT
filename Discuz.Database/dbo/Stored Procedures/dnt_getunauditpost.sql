
CREATE PROCEDURE [dnt_getunauditpost]
@lastposter NVARCHAR(20),
@lastposterid INT
AS
UPDATE [dnt_topics] 
SET [lastposter]=@lastposter  
WHERE [lastposterid]=@lastposterid