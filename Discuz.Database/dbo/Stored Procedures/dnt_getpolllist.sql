
CREATE PROCEDURE [dnt_getpolllist]
@tid int
AS
SELECT 
[pollid],
[tid],
[displayorder],
[multiple],
[visible],
[allowview],
[maxchoices],
[expiration],
[uid],
[voternames] 
FROM [dnt_polls] 
WHERE [tid]=@tid