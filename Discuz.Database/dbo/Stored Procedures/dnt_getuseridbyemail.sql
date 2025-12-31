
CREATE PROCEDURE [dnt_getuseridbyemail]
@email char(50)
AS

SELECT TOP 1 [uid] FROM [dnt_users] WHERE [email]=@email