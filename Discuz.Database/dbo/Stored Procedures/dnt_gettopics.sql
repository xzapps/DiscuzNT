
CREATE PROC [dnt_gettopics]
@start_tid INT,
@end_tid INT
AS
SELECT [tid] 
FROM [dnt_topics] 
WHERE [tid] >= @start_tid AND [tid]<=@end_tid 
ORDER BY [tid]