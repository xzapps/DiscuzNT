
CREATE PROC [dnt_getpostcountbyuid]
@uid INT,
@posttablename VARCHAR(50)
AS
EXEC ('SELECT COUNT([pid]) AS [postcount] FROM [' + @posttablename + '] WHERE [posterid] = ' + @uid)