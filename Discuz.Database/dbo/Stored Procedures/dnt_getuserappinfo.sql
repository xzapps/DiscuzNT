
CREATE PROCEDURE [dnt_getuserappinfo]
@uid int,
@appidlist nvarchar(1000)
AS
BEGIN
    SELECT T1.[appid],[appname],T1.[uid],[privacy],
    [allowsidenav],[allowfeed],[allowprofilelink],
    [narrow],[displayorder],[menuorder],[myml],[profilelink]
    FROM [dnt_userapp] AS T1 LEFT JOIN [dnt_userappfields] AS T2 ON T1.[uid]=T2.[uid] AND T1.appid=T2.appid 
    WHERE T1.[uid]=@uid AND T1.[appid]IN((SELECT * FROM [dnt_split](@appidlist,',')))
END