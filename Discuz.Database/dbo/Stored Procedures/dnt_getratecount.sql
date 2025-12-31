
CREATE PROCEDURE [dnt_getratecount]
@pid int
AS
BEGIN
	SELECT COUNT(1) FROM [dnt_ratelog] WHERE pid=@pid
END