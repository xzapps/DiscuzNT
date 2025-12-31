
CREATE PROCEDURE [dnt_getuserinfobyemail]
@email char(50)
AS

SELECT [username],[email] FROM [dnt_users] WHERE [email]=@email