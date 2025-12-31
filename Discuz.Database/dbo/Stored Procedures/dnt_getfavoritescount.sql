
CREATE PROCEDURE [dnt_getfavoritescount]
@uid int,
@typeid smallint
AS
     SELECT COUNT(uid)  FROM [dnt_favorites] WHERE [uid]=@uid AND [typeid]=@typeid