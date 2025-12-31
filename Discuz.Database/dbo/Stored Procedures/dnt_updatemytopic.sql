
CREATE PROC [dnt_updatemytopic]
AS
DELETE FROM [dnt_mytopics]
INSERT INTO [dnt_mytopics]([uid], [tid], [dateline]) 
SELECT [posterid],[tid],[postdatetime] 
FROM [dnt_topics] 
WHERE [posterid]<>-1