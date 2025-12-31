
CREATE PROCEDURE [dnt_getexpiredonlineuserlist]
@expires datetime
AS

SELECT [olid], [userid] FROM [dnt_online] WHERE [lastupdatetime]<@expires