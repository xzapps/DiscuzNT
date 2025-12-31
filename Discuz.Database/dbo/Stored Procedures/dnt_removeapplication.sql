
CREATE PROCEDURE [dnt_removeapplication]
@appidlist nvarchar(1000)
AS
BEGIN
	DELETE [dnt_myapp] WHERE appid IN(select * from [dnt_split](@appidlist,','))
END