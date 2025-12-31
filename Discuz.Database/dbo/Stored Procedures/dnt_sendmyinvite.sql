
CREATE PROCEDURE [dnt_sendmyinvite]
@typename varchar(100),
@appid int,
@type tinyint,
@fromuid int,
@touid int,
@myml text,
@hash int
AS
BEGIN
    INSERT INTO [dnt_myinvite]([typename],[appid],[type],[fromuid],[touid],[myml],[hash]) 
    VALUES(@typename,@appid,@type,@fromuid,@touid,@myml,@hash)
    SELECT SCOPE_IDENTITY()
END