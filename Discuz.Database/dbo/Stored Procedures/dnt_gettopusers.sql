
CREATE PROC [dnt_gettopusers]
@statcont INT,
@lastuid INT
AS
SELECT TOP (@statcont) [uid] FROM [dnt_users] WHERE [uid] > @lastuid