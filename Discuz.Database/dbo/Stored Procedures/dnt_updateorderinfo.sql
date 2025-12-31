
CREATE PROCEDURE [dnt_updateorderinfo]
@orderid int,
@tradeno char(32),
@orderstatus tinyint,
@confirmedtime smalldatetime
AS
BEGIN
    UPDATE [dnt_orders] SET [tradeno]=@tradeno,[orderstatus]=@orderstatus,[confirmedtime]=@confirmedtime WHERE [orderid]=@orderid
END