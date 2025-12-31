
CREATE PROCEDURE [dnt_updatetopicposter]
@poster NVARCHAR(20),
@posterid INT
AS
UPDATE [dnt_topics] 
SET [poster]=@poster 
WHERE [posterid]=@posterid