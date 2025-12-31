
CREATE PROC [dnt_getonlineregistercount]
AS
SELECT COUNT(olid) FROM [dnt_online] WHERE [userid]>0