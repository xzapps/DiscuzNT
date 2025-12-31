
CREATE PROCEDURE [dnt_checkpasswordandsecques]
@username nchar(20),
@password char(32),
@secques char(8)
AS
SELECT TOP 1 [uid] FROM [dnt_users] WHERE [username]=@username AND [password]=@password AND [secques]=@secques