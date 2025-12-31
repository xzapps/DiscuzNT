
CREATE PROCEDURE [dnt_createfavorite]
@uid int,
@tid int,
@type tinyint

AS
	
	INSERT INTO [dnt_favorites] ([uid],[tid],[typeid]) VALUES(@uid,@tid,@type)
	RETURN