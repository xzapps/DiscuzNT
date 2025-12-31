
CREATE PROCEDURE [dnt_getorderscount]
@searchcondition varchar(1000)
AS
BEGIN
DECLARE @script VARCHAR(1000)
SET @script= 'SELECT COUNT([orderid]) FROM [dnt_orders] '+@searchcondition
EXEC(@script)
END