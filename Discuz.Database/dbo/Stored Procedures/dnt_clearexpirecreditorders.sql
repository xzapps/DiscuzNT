
CREATE PROCEDURE [dnt_clearexpirecreditorders]
AS
BEGIN
   DELETE [dnt_orders] WHERE [orderstatus] < 1 AND [createdtime] < (GETDATE()-15)
END