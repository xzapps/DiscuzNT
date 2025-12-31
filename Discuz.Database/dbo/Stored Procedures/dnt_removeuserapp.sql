
CREATE PROCEDURE [dnt_removeuserapp]
@uid int,
@appids nvarchar(1000)
AS
BEGIN
    DELETE [dnt_userapp] WHERE [uid]=@uid AND appid IN(select * from [dnt_split](@appids,','))
    DELETE [dnt_userappfields] WHERE [uid]=@uid AND appid IN(select * from [dnt_split](@appids,','))
END