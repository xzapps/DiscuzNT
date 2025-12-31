
CREATE PROCEDURE [dnt_getshortuserinfo]
@uid int
AS
SELECT TOP 1 * FROM [dnt_users] WHERE [uid]=@uid