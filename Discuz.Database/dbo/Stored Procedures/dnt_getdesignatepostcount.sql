
CREATE PROC [dnt_getdesignatepostcount]
@fid INT,
@posttablename VARCHAR(50)
AS
EXEC ('SELECT COUNT([pid]) AS [postcount] FROM [' + @posttablename + '] WHERE [fid] = ' + @fid)