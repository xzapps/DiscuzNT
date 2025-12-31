
CREATE PROCEDURE [dnt_createorder]
@ordercode char(32),
@uid int,
@buyer char(20),
@paytype tinyint,
@price decimal(18,2),
@orderstatus tinyint,
@credit tinyint,
@amount int
AS
BEGIN
INSERT INTO [dnt_orders]([ordercode],[uid],[buyer],[paytype],[price],[orderstatus],
[credit],[amount]) VALUES(@ordercode,@uid,@buyer,@paytype,@price,@orderstatus,@credit,@amount)
END