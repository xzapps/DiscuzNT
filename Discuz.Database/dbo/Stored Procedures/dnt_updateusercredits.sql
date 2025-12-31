
CREATE PROCEDURE [dnt_updateusercredits]
@uid INT
AS
UPDATE [dnt_users] SET [credits] = extcredits1 + posts + digestposts* 5 WHERE [uid] = @uid