
CREATE PROCEDURE [dnt_adduserapp]
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
    INSERT INTO [dnt_userapp]([appid],[appname],[uid],[privacy],[allowsidenav],[allowfeed],[allowprofilelink],[narrow],[displayorder],[menuorder])
    VALUES(@appid,@appname,@uid,@privacy,@allowsidenav,@allowfeed,@allowprofilelink,@narrow,@displayorder,@menuorder)
    
    INSERT INTO [dnt_userappfields]([appid],[uid],[profilelink],[myml]) VALUES(@appid,@uid,@profilelink,@myml)
END