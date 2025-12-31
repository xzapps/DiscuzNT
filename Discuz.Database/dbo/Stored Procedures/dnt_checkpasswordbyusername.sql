
CREATE PROCEDURE [dnt_checkpasswordbyusername]
@username nchar(20),
@password char(32)
AS
SELECT TOP 1 [uid], [groupid], [adminid] FROM [dnt_users] WHERE [username]=@username AND [password]=@password