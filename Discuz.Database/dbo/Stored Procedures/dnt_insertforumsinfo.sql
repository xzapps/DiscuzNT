
CREATE PROC [dnt_insertforumsinfo]
@parentid SmallInt,
@layer Int,
@pathlist NChar(3000),
@parentidlist NChar(300),
@subforumcount Int,
@name NChar(50),
@status Int,
@colcount SmallInt,
@displayorder Int,
@templateid SmallInt,
@allowsmilies Int,
@allowrss Int,
@allowhtml Int,
@allowbbcode Int,
@allowimgcode Int,
@allowblog Int,
@istrade Int,
@alloweditrules Int,
@allowthumbnail Int,
@allowtag Int,
@recyclebin Int,
@modnewposts Int,
@modnewtopics Int,
@jammer Int,
@disablewatermark Int,
@inheritedmod Int,
@autoclose SmallInt,
@allowpostspecial Int,
@allowspecialonly Int,
@description NText,
@password VarChar(16),
@icon VarChar(255),
@postcredits VarChar(255),
@replycredits VarChar(255),
@redirect VarChar(255),
@attachextensions VarChar(255),
@moderators Text,
@rules NText,
@topictypes Text,
@viewperm Text,
@postperm Text,
@replyperm Text,
@getattachperm Text,
@postattachperm Text,
@seokeywords NVarChar(500),
@seodescription NVarChar(500),
@rewritename NVarChar(20)
AS
DECLARE @fid INT

INSERT INTO [dnt_forums] ([parentid],[layer],[pathlist],[parentidlist],[subforumcount],[name],
[status],[colcount],[displayorder],[templateid],[allowsmilies],[allowrss],[allowhtml],[allowbbcode],[allowimgcode],[allowblog],
[istrade],[alloweditrules],[recyclebin],[modnewposts],[modnewtopics],[jammer],[disablewatermark],[inheritedmod],[autoclose],[allowthumbnail],
[allowtag],[allowpostspecial],[allowspecialonly]) 
VALUES (@parentid,@layer,@pathlist,@parentidlist,@subforumcount,@name,@status, @colcount, @displayorder,
@templateid,@allowsmilies,@allowrss,@allowhtml,@allowbbcode,@allowimgcode,@allowblog,@istrade,@alloweditrules,@recyclebin,
@modnewposts,@modnewtopics,@jammer,@disablewatermark,@inheritedmod,@autoclose,@allowthumbnail,@allowtag,@allowpostspecial,@allowspecialonly)
--SET @fid=@@IDENTITY
SELECT @fid = ISNULL(MAX(fid), 0) FROM [dnt_forums]

INSERT INTO [dnt_forumfields] ([fid],[description],[password],[icon],[postcredits],[replycredits],[redirect],
[attachextensions],[moderators],[rules],[topictypes],[viewperm],[postperm],[replyperm],[getattachperm],[postattachperm],[seokeywords],[seodescription],[rewritename]) 
VALUES (@fid,@description,@password,@icon,@postcredits,@replycredits,@redirect,@attachextensions,@moderators,@rules,@topictypes,@viewperm,
@postperm,@replyperm,@getattachperm,@postattachperm,@seokeywords,@seodescription,@rewritename)