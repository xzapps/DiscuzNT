
CREATE PROCEDURE [dnt_deletenousedforumattachment]
AS
DELETE FROM [dnt_attachments] 
WHERE [tid]= 0 AND [pid]=0 AND DATEDIFF(n, postdatetime, GETDATE()) > 30