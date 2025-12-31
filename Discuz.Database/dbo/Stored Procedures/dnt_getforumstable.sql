
CREATE PROC [dnt_getforumstable]
AS
SELECT
[f].[fid],[f].[parentid],[f].[layer],[f].[pathlist],[f].[parentidlist],[f].[subforumcount],[f].[name],[f].[status],[f].[colcount],[f].[displayorder],[f].[templateid],[f].[topics],[f].[curtopics],[f].[posts],[f].[todayposts],[f].[lasttid],[f].[lasttitle],[f].[lastpost],[f].[lastposterid],[f].[lastposter],[f].[allowsmilies],[f].[allowrss],[f].[allowhtml],[f].[allowbbcode],[f].[allowimgcode],[f].[allowblog],[f].[istrade],[f].[allowpostspecial],[f].[allowspecialonly],[f].[alloweditrules],[f].[allowthumbnail],[f].[allowtag],[f].[recyclebin],[f].[modnewposts],[f].[modnewtopics],[f].[jammer],[f].[disablewatermark],[f].[inheritedmod],[f].[autoclose],[ff].[password],[ff].[icon],[ff].[postcredits],[ff].[replycredits],[ff].[redirect],[ff].[attachextensions],[ff].[rules],[ff].[topictypes],[ff].[viewperm],[ff].[postperm],[ff].[replyperm],[ff].[getattachperm],[ff].[postattachperm],[ff].[moderators],[ff].[description],[ff].[applytopictype],[ff].[postbytopictype],[ff].[viewbytopictype],[ff].[topictypeprefix],[ff].[permuserlist],[ff].[seokeywords],[ff].[seodescription],[ff].[rewritename] 
FROM [dnt_forums] AS [f] 
LEFT JOIN [dnt_forumfields] AS [ff] 
ON [f].[fid]=[ff].[fid] 
ORDER BY [f].[displayorder]