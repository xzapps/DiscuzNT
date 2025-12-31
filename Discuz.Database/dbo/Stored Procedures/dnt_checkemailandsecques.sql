
CREATE PROCEDURE [dnt_checkemailandsecques]
@username nchar(20),
@email char(50),
@secques char(8)
AS
SELECT TOP 1 [uid] FROM [dnt_users] WHERE [username]=@username AND [email]=@email AND [secques]=@secques