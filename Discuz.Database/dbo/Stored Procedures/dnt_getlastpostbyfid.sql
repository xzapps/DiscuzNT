
CREATE PROC [dnt_getlastpostbyfid]
@fid INT,
@posttablename VARCHAR(50)
AS
EXEC ('SELECT TOP 1 [tid], [title], [postdatetime], [posterid], [poster], [pid] 
FROM [' + @posttablename + '] 
WHERE [fid] = ' + @fid +
'ORDER BY [pid] DESC')