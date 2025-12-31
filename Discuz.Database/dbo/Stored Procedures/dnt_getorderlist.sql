
CREATE PROCEDURE [dnt_getorderlist]
@searchcondition varchar(1000)
AS
BEGIN
DECLARE @script VARCHAR(1000)
SET @script= 'SELECT TOP 20 [orderid],[ordercode],[uid],[buyer],[paytype],[tradeno],[price],[orderstatus],[createdtime],[confirmedtime]
,[credit],[amount] FROM [dnt_orders] '+@searchcondition+' ORDER BY [orderid] DESC'
EXEC(@script)
END