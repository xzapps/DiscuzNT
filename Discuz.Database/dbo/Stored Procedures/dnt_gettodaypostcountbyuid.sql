
CREATE PROC [dnt_gettodaypostcountbyuid]
@uid INT,
@posttablename VARCHAR(50)
AS
EXEC ('SELECT COUNT([pid]) AS [postcount] 
FROM [' + @posttablename + '] 
WHERE [posterid] = ' + @uid + ' AND DATEDIFF(day, [postdatetime], GETDATE()) = 0')