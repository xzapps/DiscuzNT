
CREATE PROCEDURE [dnt_updateuserapp]
@appid int,
@uid int,
@appname nchar(30),
@privacy tinyint,
@allowsidenav tinyint,
@allowfeed tinyint,
@allowprofilelink tinyint,
@narrow tinyint,
@displayorder smallint,
@menuorder smallint,
@profilelink text,
@myml text
AS
BEGIN
    UPDATE [dnt_userapp] SET [appname]=@appname,
    [privacy]=@privacy,
    [allowsidenav]=@allowsidenav,
    [allowfeed]=@allowfeed,[allowprofilelink]=@allowprofilelink,
    [narrow]=@narrow,[displayorder]=@displayorder,[menuorder]=@menuorder
    WHERE [appid]=@appid AND [uid]=@uid
    
    UPDATE [dnt_userappfields] SET [profilelink]=@profilelink,[myml]=@myml 
    WHERE [appid]=@appid AND [uid]=@uid
END