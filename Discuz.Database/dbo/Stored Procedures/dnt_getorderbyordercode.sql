
CREATE PROCEDURE [dnt_getorderbyordercode]
@ordercode char(32)
AS
BEGIN
	SELECT [orderid],[ordercode],[uid],[buyer],[paytype],[tradeno],[price],[orderstatus],[createdtime],[confirmedtime]
,[credit],[amount] FROM [dnt_orders] WHERE [ordercode]=@ordercode
END