<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showtopic1" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2013/11/19 13:52:59.
		本页面代码由Discuz!NT模板引擎生成于 2013/11/19 13:52:59. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	if (infloat!=1)
	{

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    ");
	if (pagetitle=="首页")
	{

	templateBuilder.Append("\r\n        <title>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append("</title>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n        <title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append("</title>\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n    <meta http-equiv=\"x-ua-compatible\" content=\"ie=7\" />\r\n    <link rel=\"icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    <link rel=\"shortcut icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    ");
	if (pagename!="website.aspx")
	{

	templateBuilder.Append("\r\n        <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/dnt.css\" type=\"text/css\" media=\"all\" />\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/float.css\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/other/c5.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    ");
	if (isnarrowpage)
	{

	templateBuilder.Append("\r\n        <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/widthauto.css\" id=\"css_widthauto\" />\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n    <script type=\"text/javascript\">\r\n        var creditnotice='");
	templateBuilder.Append(Scoresets.GetValidScoreNameAndId().ToString().Trim());
	templateBuilder.Append("';	\r\n        var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n    </");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(config.Jqueryurl.ToString().Trim());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">jQuery.noConflict();</");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_report.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_utils.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/ajax.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n	    var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n	    var IMGDIR = '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("';\r\n        var disallowfloat = '");
	templateBuilder.Append(config.Disallowfloatwin.ToString().Trim());
	templateBuilder.Append("';\r\n	    var rooturl=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("\";\r\n	    var imagemaxwidth='");
	templateBuilder.Append(Templates.GetTemplateWidth(templatepath).ToString().Trim());
	templateBuilder.Append("';\r\n	    var cssdir='");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("';\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n</head>");

	templateBuilder.Append("\r\n<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n<div id=\"append_parent\"></div>\r\n<div id=\"ajaxwaitid\"></div>\r\n\r\n<div id=\"wrapper\" style=\"\">\r\n	\r\n        <!--顶部个人信息栏 开始-->\r\n        <div style=\"float:right;width:1100px; text-align:right;margin-right:35px;\">\r\n\r\n                ");
	if (userid==-1)
	{


	if (pagename!="login.aspx"&&pagename!="register.aspx")
	{

	templateBuilder.Append("\r\n                        <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\"  style=\"margin-left: 7px;\" class=\"xg2\">注册</a>	\r\n                        <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" style=\"margin-left: 7px;\" class=\"xg2\">登录</a>	\r\n                    ");
	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n				    <p>\r\n					    <strong>");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</strong><span class=\"xg1\">在线</span><span class=\"pipe\">|</span>\r\n                        ");	string linktitle = "";
	
	string showoverflow = "";
	

	if (oluserinfo.Newpms>0)
	{


	if (oluserinfo.Newpms>=1000)
	{

	 showoverflow = "大于";
	

	}	//end if

	 linktitle = "您有"+showoverflow+oluserinfo.Newpms+"条新短消息";
	

	}
	else
	{

	 linktitle = "您没有新短消息";
	

	}	//end if

	templateBuilder.Append("\r\n\r\n					    <a id=\"pm_ntc\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\" title=\"");
	templateBuilder.Append(linktitle.ToString());
	templateBuilder.Append("\">短消息\r\n                        ");
	if (oluserinfo.Newpms>0 && oluserinfo.Newpms<=1000)
	{

	templateBuilder.Append("\r\n                                    (");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	if (oluserinfo.Newpms>=1000)
	{

	templateBuilder.Append("1000+");
	}	//end if

	templateBuilder.Append(")\r\n                        ");
	}	//end if

	templateBuilder.Append("\r\n                        </a>\r\n\r\n					    <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" title=\"");
	templateBuilder.Append(linktitle.ToString());
	templateBuilder.Append("\">\r\n                            通知");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("\r\n                                    (");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	if (oluserinfo.Newnotices>=1000)
	{

	templateBuilder.Append("+");
	}	//end if

	templateBuilder.Append(")\r\n                                ");
	}	//end if

	templateBuilder.Append("\r\n                        </a>\r\n\r\n					    <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n				    </p>\r\n                ");
	}	//end if

	templateBuilder.Append("\r\n        </div>	\r\n        <!--顶部个人信息栏 结束-->\r\n\r\n		<div id=\"logo\">\r\n            \r\n            <!--logo 开始-->\r\n		    <div  style=\"float:left;\">\r\n				<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/logo.png\" alt=\"");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("\"/></a></h2>\r\n            </div>	\r\n            <!--logo 结束-->	\r\n\r\n            <!--顶部广告 开始-->\r\n            <div  style=\"float:right;\">\r\n                ");
	if (headerad!="")
	{

	templateBuilder.Append("\r\n	                <div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n                ");
	}	//end if

	templateBuilder.Append("\r\n            </div>\r\n			<!--顶部广告 结束-->\r\n		</div>\r\n\r\n         <div id=\"navfirst\" style=\" float:left;\">\r\n            <ul id=\"simple-menu\" class=\"cl\">\r\n			    ");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n		    </ul>\r\n	    </div>	\r\n\r\n");
	}
	else
	{


	Response.Clear();
	Response.ContentType = "Text/XML";
	Response.Expires = 0;
	Response.Cache.SetNoStore();
	
	templateBuilder.Append("<?xml version=\"1.0\" encoding=\"utf-8\"?><root><![CDATA[\r\n");
	}	//end if




	if (infloat!=1)
	{

	templateBuilder.Append("\r\n<script type=\"text/javascript\">\r\nvar templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\nvar postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\nvar postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\nvar disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\nvar attachtransname = \"");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("\";\r\nvar imagedir = \"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("\";\r\nvar forumtitle = '");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("';\r\nfunction modaction(action, pid, extra) \r\n{\r\n    if(!action) \r\n    {\r\n        return;\r\n    }\r\n    var extra = !extra ? '' : '&' + extra;\r\n    if(!pid && in_array(action, ['delposts', 'banpost'])) \r\n    {\r\n        var checked = 0;\r\n        var pid = '';\r\n        for(var i = 0; i < $('postsform').elements.length; i++) \r\n        {\r\n            if($('postsform').elements[i].name.match('topiclist')) \r\n            {\r\n                checked = 1;\r\n                break;\r\n            }\r\n        }\r\n    } \r\n    else \r\n    {\r\n        var checked = 1;\r\n    }\r\n    if(!checked) \r\n    {\r\n        alert('请选择需要操作的帖子');\r\n    } \r\n    else \r\n    {\r\n        floatwinreset = 1;\r\n		hideWindow('mods');\r\n        $('postsform').action = 'topicadmin.aspx?action='+ action +'&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&infloat=1&nopost=1' + (!$('postsform').pid.value ? '' : '&postid=' + $('postsform').pid.value) + extra;\r\n		showWindow('mods', 'postsform', 'post', 0);\r\n		  if(BROWSER.ie) {\r\n			doane(event);\r\n		}	\r\n    }\r\n}\r\n\r\n\r\nfunction pidchecked(obj) \r\n{\r\n    if(obj.checked) \r\n    {\r\n        if(is_ie && BROWSER.ie != \"9.0\" && !is_opera) \r\n        {\r\n            var inp = document.createElement('<input name=\"topiclist[]\" />');\r\n        } \r\n        else \r\n        {\r\n            var inp = document.createElement('input');\r\n            inp.name = 'topiclist[]';\r\n        }\r\n        inp.id = 'topiclist_' + obj.value;\r\n        inp.value = obj.value;\r\n        inp.style.display = 'none';\r\n        $('postsform').appendChild(inp);\r\n    } \r\n    else\r\n    {\r\n        $('postsform').removeChild($('topiclist_' + obj.value));\r\n    }\r\n}\r\n\r\nvar modclickcount = 0;\r\nfunction modclick(obj, pid) \r\n{\r\n    if(obj.checked) \r\n    {\r\n        modclickcount++;\r\n        if($('postsform').pid.value)\r\n            $('postsform').pid.value += \",\" + pid;\r\n        else\r\n            $('postsform').pid.value = pid;\r\n    } \r\n    else \r\n    {\r\n        modclickcount--;\r\n        if(modclickcount > 0)\r\n        {\r\n            $('postsform').pid.value = $('postsform').pid.value.replace(\",\" + pid + \",\", \",\");\r\n            $('postsform').pid.value = $('postsform').pid.value.replace(\",\" + pid, \"\");\r\n            $('postsform').pid.value = $('postsform').pid.value.replace(pid + \",\", \"\");\r\n        }\r\n        else\r\n            $('postsform').pid.value = '';\r\n    }\r\n    $('modcount').innerHTML = modclickcount;\r\n    if(modclickcount > 0) \r\n    {\r\n        var offset = fetchOffset(obj);				\r\n        $('modtopiclayer').style.top = offset['top'] - 50 + 'px';\r\n        $('modtopiclayer').style.left = offset['left'] - 120 + 'px';\r\n        $('modtopiclayer').style.display = '';\r\n        $('modtopiclayer').className = 'topicwindow';\r\n    } \r\n    else \r\n    {\r\n        $('modtopiclayer').style.display = 'none';\r\n    }\r\n}\r\n</");
	templateBuilder.Append("script>\r\n");
	if (enabletag)
	{

	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"cache/tag/closedtags.txt\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"cache/tag/colorfultags.txt\"></");
	templateBuilder.Append("script>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_showtopic.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_share.js\"></");
	templateBuilder.Append("script>\r\n");	int loopi = 1;
	

	if (page_err==0)
	{

	templateBuilder.Append("\r\n\r\n\r\n<div class=\"wrap cl pageinfo\">\r\n    <div id=\"nav\">\r\n        ");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n        <a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" ");
	if (config.Forumjump==1)
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id);\"\r\n            onmouseout=\"showMenu(this.id);\" ");
	}	//end if

	templateBuilder.Append(" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>\r\n        &raquo; ");
	templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(),forumid,forumpageid).ToString().Trim());
	templateBuilder.Append(" &raquo;\r\n        <span title=\"");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("\" style=\"cursor: pointer;\">\r\n            ");	templateBuilder.Append(Utils.GetUnicodeSubString(topic.Title,60,"..."));
	templateBuilder.Append("</span>\r\n    </div>\r\n</div>\r\n<div class=\"wrap cl\">\r\n    ");
	if (config.Forumjump==1)
	{

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(Caches.GetForumListMenuDivCache(usergroupid,userid,config.Extname).ToString().Trim());
	templateBuilder.Append("\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    <div id=\"navsecond\">\r\n        ");
	if (pageid==1)
	{

	templateBuilder.Append("\r\n        <div class=\"hm\" style=\"padding-top: 14px;\">\r\n            <span class=\"xg1\">查看:</span> ");
	templateBuilder.Append(topicviews.ToString());
	templateBuilder.Append("<span class=\"pipe\">|</span><span class=\"xg1\">回复:</span>\r\n            ");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append("</div>\r\n        ");
	}
	else
	{

	string avatarurl = Avatars.GetAvatarUrl(topic.Posterid);
	
	templateBuilder.Append("\r\n        <div class=\"hm\">\r\n            <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("userinfo.aspx?userid=");
	templateBuilder.Append(topic.Posterid.ToString().Trim());
	templateBuilder.Append("\">\r\n                <img height=\"24\" width=\"24\" src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_small.gif';\" />楼主:");
	templateBuilder.Append(topic.Poster.ToString().Trim());
	templateBuilder.Append("</a></div>\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n    </div>\r\n\r\n    <div id=\"maincontent\">\r\n        <span title=\"");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("\" style=\"cursor: pointer;\">\r\n            ");	templateBuilder.Append(Utils.GetUnicodeSubString(topic.Title,60,"..."));
	templateBuilder.Append("</span>\r\n        ");
	int post__loop__id=0;
	foreach(ShowtopicPagePostInfo post in postlist)
	{
		post__loop__id++;

	templateBuilder.Append("\r\n        <div id=\"ad_thread2_" + post__loop__id.ToString() + "\">\r\n        </div>\r\n        <div id=\"ad_thread3_" + post__loop__id.ToString() + "\">\r\n        </div>\r\n        <div class=\"postmessage defaultpost\">\r\n            ");
	if (post.Layer!=0)
	{

	templateBuilder.Append("<h2>\r\n                ");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("</h2>\r\n            ");
	}	//end if

	templateBuilder.Append("\r\n            <div id=\"topictag\">\r\n            </div>\r\n            <div id=\"message");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"t_msgfont\">\r\n                ");
	if (post.Id==1)
	{

	templateBuilder.Append("\r\n                <div id=\"firstpost\">\r\n                    ");
	if (topic.Special!=2 && topic.Special!=3)
	{
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("\r\n                    ");
	}	//end if

	templateBuilder.Append("</div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                ");
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("\r\n                ");
	}	//end if


	if (post.Id==1 && enabletag)
	{

	templateBuilder.Append("\r\n                <script type=\"text/javascript\">                    function forumhottag_callback(data) { tags = data; }</");
	templateBuilder.Append("script>\r\n                <script type=\"text/javascript\" src=\"cache/tag/hottags_forum_cache_jsonp.txt\"></");
	templateBuilder.Append("script>\r\n                ");	int hastag = Topics.GetMagicValue(topic.Magic, MagicType.TopicTag);
	

	if (hastag==1)
	{

	templateBuilder.Append("\r\n                <script type=\"text/javascript\">getTopicTags(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <script type=\"text/javascript\">                    parsetag();</");
	templateBuilder.Append("script>\r\n                ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n            </div>\r\n            ");
	if (attachmentlist.Count>0)
	{

	int currentattachcount = 0;
	

	int attachtemp__loop__id=0;
	foreach(ShowtopicPageAttachmentInfo attachtemp in attachmentlist)
	{
		attachtemp__loop__id++;


	if (attachtemp.Pid==post.Pid)
	{

	 currentattachcount = currentattachcount + 1;
	

	}	//end if


	}	//end loop


	if (currentattachcount>0)
	{

	int getattachperm = attachmentlist[0].Getattachperm;
	

	if (getattachperm==1)
	{

	templateBuilder.Append("\r\n            <div class=\"postattachlist\">\r\n                ");
	int attachment__loop__id=0;
	foreach(ShowtopicPageAttachmentInfo attachment in attachmentlist)
	{
		attachment__loop__id++;


	if (attachment.Pid==post.Pid)
	{


	if (attachment.Allowread==1)
	{



	if (attachment.Attachimgpost==1)
	{

	templateBuilder.Append("\r\n<dl class=\"t_attachlist_img attachimg cl\">\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n<dl class=\"t_attachlist attachimg cl\">\r\n");
	}	//end if


	if (attachment.Attachimgpost==1)
	{

	templateBuilder.Append("\r\n	<dt>\r\n	</dt>\r\n	");
	}
	else if (attachment.Filename.Trim().ToLower().EndsWith("rar")||attachment.Filename.Trim().ToLower().EndsWith("zip"))
	{

	templateBuilder.Append("\r\n	<dt>\r\n	<img class=\"absmiddle\" border=\"0\" alt=\"\" src=\"images/attachicons/rar.gif\"/>\r\n	</dt>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<dt>\r\n	<img class=\"absmiddle\" border=\"0\" alt=\"\" src=\"images/attachicons/attachment.gif\"/>\r\n	</dt>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</dt>\r\n	<dd>\r\n	");
	if (attachment.Attachprice<=0)
	{

	templateBuilder.Append("\r\n	   <a target=\"_blank\" onclick=\"return ShowDownloadTip(");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(");\" href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" class=\"xg2\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n	");
	}
	else
	{


	if (attachment.Isbought==1 || post.Posterid==userid)
	{

	templateBuilder.Append("\r\n		   <a target=\"_blank\" onclick=\"return ShowDownloadTip(");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(");\"  href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" class=\"xg2\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n		");
	}
	else
	{


	if (usergroupinfo.Radminid==1)
	{

	templateBuilder.Append("\r\n			  <a target=\"_blank\"  onclick=\"return ShowDownloadTip(");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(");\" href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" class=\"xg2\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n		   ");
	}
	else
	{

	templateBuilder.Append("\r\n			  ");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("\r\n		   ");
	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n	<em class=\"xg1\">(<script type=\"text/javascript\">ShowFormatBytesStr(");
	templateBuilder.Append(attachment.Filesize.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>, 下载次数:");
	templateBuilder.Append(attachment.Downloads.ToString().Trim());
	templateBuilder.Append(")</em>\r\n");	bool viewattach = false;
	

	if (attachment.Attachprice>0)
	{

	templateBuilder.Append("\r\n	<p>\r\n	售价(");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("):<strong>");
	templateBuilder.Append(attachment.Attachprice.ToString().Trim());
	templateBuilder.Append(" </strong>									\r\n	[<a onclick=\"loadattachpaymentlog(");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:void(0);\">记录</a>]\r\n	");	 viewattach = attachment.Isbought==1;
	

	if (post.Posterid!=userid && !viewattach)
	{


	if (usergroupinfo.Radminid!=1)
	{

	templateBuilder.Append("\r\n		[<a onclick=\"loadbuyattach(");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:void(0);\">购买</a>] \r\n	  ");
	}	//end if


	}	//end if

	templateBuilder.Append("	\r\n	</p>\r\n");
	}	//end if

	templateBuilder.Append("\r\n	<p>");
	if (attachment.Description!="")
	{
	templateBuilder.Append(attachment.Description.ToString().Trim());
	}	//end if

	templateBuilder.Append("<span style=\"color:#666\">(");
	templateBuilder.Append(attachment.Postdatetime.ToString().Trim());
	templateBuilder.Append(" 上传)</span></p>\r\n	");
	if (attachment.Preview!="")
	{

	templateBuilder.Append("\r\n	<p>");
	templateBuilder.Append(attachment.Preview.ToString().Trim());
	templateBuilder.Append("</p>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	<p>\r\n");
	if (post.Posterid==userid || usergroupinfo.Radminid==1)
	{

	 viewattach = true;
	

	}	//end if

	templateBuilder.Append("									\r\n	<a name=\"attach");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"></a>\r\n");
	if (UserAuthority.DownloadAttachment(forum,userid,usergroupinfo))
	{

	templateBuilder.Append("<!--当用户有下载附件权限时-->\r\n	");
	if (config.Showimages==1)
	{


	if (attachment.Attachimgpost==1)
	{


	if (attachment.Attachprice<=0 || viewattach)
	{


	if (config.Showimgattachmode==0)
	{

	templateBuilder.Append("\r\n                        <img imageid=\"");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("\" \r\n                        ");
	if (config.Showattachmentpath==1)
	{


	if (attachment.Filename.IndexOf("http")>=0)
	{

	templateBuilder.Append("\r\n		                        src=\"");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n	                        ");
	}
	else
	{

	templateBuilder.Append("   \r\n		                        src=\"upload/");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n	                        ");
	}	//end if


	}
	else
	{

	templateBuilder.Append(" \r\n	                        src=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"\r\n                        ");
	}	//end if

	templateBuilder.Append("\r\n                        onmouseover=\"attachimg(this, 'mouseover')\" onload=\"attachimg(this, 'load');\" onclick=\"zoom(this, this.src);\" />\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <img imageid=\"");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" alt=\"点击加载图片\" \r\n                        ");
	if (config.Showattachmentpath==1)
	{


	if (attachment.Filename.IndexOf("http")>=0)
	{

	templateBuilder.Append("\r\n		                        newsrc=\"");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n	                        ");
	}
	else
	{

	templateBuilder.Append("   \r\n		                        newsrc=\"upload/");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n	                        ");
	}	//end if


	}
	else
	{

	templateBuilder.Append(" \r\n	                        newsrc=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"\r\n                        ");
	}	//end if

	templateBuilder.Append("\r\n                            src=\"/images/common/imgloading.png\"\r\n                        onload=\"attachimg(this, 'load');\" onclick=\"loadImg(this);\" />\r\n                    ");
	}	//end if


	}	//end if


	}	//end if


	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n	<div class=\"hide\">\r\n	   附件:<em><span class=\"attachnotdown\">您需要<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" onclick=\"showWindow('login', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx');hideWindow('register');return\">登录</a>才可以下载或查看附件。没有帐号? <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"showWindow('register', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx');hideWindow('login');\">注册</a></span></em>\r\n	</div>    \r\n");
	}	//end if

	templateBuilder.Append("	\r\n	</p>\r\n	</dd>										\r\n</dl>");


	}
	else
	{


	if (userid>0)
	{

	templateBuilder.Append("\r\n                <div class=\"hide\">\r\n                    <em><span class=\"attachnotdown\">你的下载权限 ");
	templateBuilder.Append(usergroupinfo.Readaccess.ToString().Trim());
	templateBuilder.Append(" 低于此附件所需权限 ");
	templateBuilder.Append(attachment.Readperm.ToString().Trim());
	templateBuilder.Append(",\r\n                        你无权查看此附件</span></em></div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"hide\">\r\n                    附件: <em><span class=\"attachnotdown\">你需要<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" onclick=\"hideWindow('register');showWindow('login', this.href);\">登录</a>才可以下载或查看附件。没有帐号?\r\n                        <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onclick=\"hideWindow('login');showWindow('register', this.href);\"\r\n                            title=\"注册帐号\">注册</a></span></em></div>\r\n                ");
	}	//end if


	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n            </div>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <div class=\"hide\">\r\n                附件:<em><span class=\"attachnotdown\">您需要<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" onclick=\"hideWindow('register');showWindow('login', this.href);\">登录</a>才可以下载或查看附件。没有帐号?\r\n                    <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onclick=\"hideWindow('login');showWindow('register', this.href);\"\r\n                        title=\"注册帐号\">注册</a></span></em></div>\r\n            ");
	}	//end if


	}	//end if


	}	//end if


	if (post.Ratetimes>0)
	{



	if (Discuz.Config.GeneralConfigs.GetConfig().DisplayRateCount>0)
	{

	templateBuilder.Append("\r\n<div class=\"newrate cl\" id=\"ratedd_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">\r\n	<ul class=\"cl\" id=\"rate_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\"></ul>\r\n	<div class=\"floatwrap\" id=\"ratetable_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\"></div>\r\n	<p class=\"btn_rate\"><span class=\"f_bold\"><a title=\"本帖最近评分记录\" href=\"#\">已有<cite class=\"xi1\" style=\"padding:0 0.4em;\">");
	templateBuilder.Append(post.Ratetimes.ToString().Trim());
	templateBuilder.Append("</cite>评分</a></span><span class=\"xg2\"><a href=\"topicadmin.aspx?action=rate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&operat=rate\" onclick=\"showWindow('mods', this.href);return false;\">我要评分</a><a target=\"_blank\" href=\"showratelist.aspx?pid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"lightlink\">查看所有评分</a></span></p>\r\n	<script type=\"text/javascript\">\r\n		_attachEvent(window, \"load\", function(){ showrate(");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(post.Ratetimes.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(config.Ratelisttype.ToString().Trim());
	templateBuilder.Append("); });\r\n	</");
	templateBuilder.Append("script>\r\n</div>\r\n");
	}	//end if




	}	//end if


	if (post.Id==1)
	{


	}	//end if

	templateBuilder.Append("\r\n        </div>\r\n        <div id=\"ad_thread1_" + post__loop__id.ToString() + "\">\r\n        </div>\r\n        <a href=\"#\" onclick=\"window.scrollTo(0,0)\">TOP</a>\r\n        ");
	if (canreply)
	{


	if (userid!=-1)
	{

	templateBuilder.Append("\r\n        <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&poster=");
	templateBuilder.Append(Utils.UrlEncode(post.Poster).ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\"\r\n            ");
	if (!isnewbie)
	{

	templateBuilder.Append(" onclick=\"showWindow('reply', 'showtopic.aspx?poster=");
	templateBuilder.Append(Utils.UrlEncode(post.Poster).ToString().Trim());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("')\"\r\n            ");
	}	//end if

	templateBuilder.Append(" class=\"fastreply\">回复</a>\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n        <a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&quote=yes\"\r\n            class=\"repquote\">引用</a>\r\n        ");
	}	//end if


	if (ismoder==1)
	{


	if (topic.Special==4)
	{

	templateBuilder.Append("\r\n        <a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&debate=");
	templateBuilder.Append(post.Debateopinion.ToString().Trim());
	templateBuilder.Append("\"\r\n            class=\"editpost\">编辑</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\"\r\n            class=\"editpost\">编辑</a>\r\n        ");
	}	//end if


	if (post.Posterid!=-1 && userid==post.Posterid)
	{

	templateBuilder.Append("\r\n        <a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\"\r\n            class=\"delpost\" title=\"删除我的帖子\">删除</a>\r\n        ");
	}	//end if


	}
	else
	{


	if (post.Posterid!=-1 && userid==post.Posterid)
	{


	if (topic.Closed==0)
	{


	if (topic.Special==4)
	{

	templateBuilder.Append("\r\n        <a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&debate=");
	templateBuilder.Append(post.Debateopinion.ToString().Trim());
	templateBuilder.Append("\"\r\n            class=\"editpost\">编辑</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\"\r\n            class=\"editpost\">编辑</a>\r\n        ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n        <a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\"\r\n            class=\"delpost\" title=\"删除我的帖子\">删除</a>\r\n        ");
	}	//end if


	}	//end if

	 loopi = loopi+1;
	

	}	//end loop


	if (config.Fastpost==2||config.Fastpost==3)
	{


	if ((topic.Closed!=1||ismoder==1) && (userid<0||canreply))
	{


	templateBuilder.Append("<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/bbcode.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/post.js\"></");
	templateBuilder.Append("script>\r\n");	string seditorid = "";
	
	string poster = DNTRequest.GetString("poster");
	
	int postlayer = DNTRequest.GetInt("postlayer",0);
	
	string urlreferrer = DNTRequest.GetUrlReferrer();
	

	if (infloat!=1)
	{

	 seditorid = "quickpost";
	

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("\r\n<form method=\"post\" name=\"postform\" id=\"form\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&poster=");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" >\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n<form method=\"post\" name=\"postform\" id=\"quickpostform\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&poster=");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" >\r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"quickpost\" class=\"");
	if (infloat!=1)
	{

	templateBuilder.Append("main");
	}	//end if

	templateBuilder.Append(" quickpost\">\r\n	");
	if (infloat==1)
	{

	templateBuilder.Append("\r\n	<h3 class=\"flb\">\r\n		<span class=\"y\">\r\n			<a title=\"关闭\" onclick=\"hideWindow('reply')\" class=\"flbc\" href=\"javascript:;\">关闭</a>\r\n		</span><em>无刷新回复主题</em>\r\n	</h3>\r\n	");
	}	//end if


	if (infloat!=1)
	{

	templateBuilder.Append("\r\n	<table cellspacing=\"0\" cellpadding=\"0\" summary=\"无刷新快速回复\" >\r\n	<tbody>\r\n		<tr>\r\n		<td class=\"postauthor\" style=\"background-color:#EFEFEF;border:0px;\">\r\n			\r\n		</td>\r\n		<td class=\"postcontent\">\r\n	");
	}	//end if

	templateBuilder.Append("\r\n			<div class=\"post_inner c cl\">\r\n			");
	if (quickeditorad!="")
	{

	templateBuilder.Append("\r\n			<div class=\"leaderboard\">");
	templateBuilder.Append(quickeditorad.ToString());
	templateBuilder.Append("</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<em id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("validatemessage\">");
	if (infloat==1)
	{

	templateBuilder.Append("参与/回复主题");
	}	//end if

	templateBuilder.Append("</em>\r\n			<div class=\"pbt\">\r\n				<input type=\"text\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title\" name=\"");
	templateBuilder.Append(config.Antispamposttitle.ToString().Trim());
	templateBuilder.Append("\" size=\"84\" tabindex=\"1\" value=\"\" style=\"display:none;\" />\r\n				<input type=\"hidden\" id=\"postlayer\" name=\"postlayer\" value=\"-1\" />\r\n				<input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("\" />\r\n				<span style=\"display:none\">\r\n				<input type=\"checkbox\" value=\"1\" name=\"htmlon\" id=\"htmlon\" ");
	if (usergroupinfo.Allowhtml!=1)
	{

	templateBuilder.Append(" disabled");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"parseurloff\" id=\"parseurloff\" value=\"1\" ");
	if (parseurloff==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"smileyoff\" id=\"smileyoff\" value=\"1\" ");
	if (smileyoff==1)
	{

	templateBuilder.Append(" checked disabled ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"bbcodeoff\" id=\"bbcodeoff\" value=\"1\" ");
	if (bbcodeoff==1)
	{

	templateBuilder.Append(" checked disabled ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"usesig\" id=\"usesig\" value=\"1\" ");
	if (usesig==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"emailnotify\" id=\"emailnotify\" ");
	if (replyemailstatus==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"postreplynotice\" id=\"postreplynotice\" ");
	if (replynotificationstatus==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				</span>\r\n				<script type=\"text/javascript\">\r\n					var bbinsert = parseInt('1');\r\n					var smiliesCount = 24;\r\n					var colCount = 8;\r\n				</");
	templateBuilder.Append("script>\r\n				");	char comma = ',';
	

	if (infloat==1)
	{

	templateBuilder.Append("\r\n				<div class=\"pbt cl\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title_text\">RE:");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("<a href=\"javascript:void(0)\" onclick=\"modifytitle();\" class=\"xg2\" style=\"margin-left:10px;\">修改</a></div>\r\n				<script type=\"text/javascript\">\r\n				function modifytitle(){\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title_text').style.display = 'none';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').style.display = '';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').ClassName = 'txt postpx';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').value = 'RE:");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("';\r\n				}\r\n				</");
	templateBuilder.Append("script>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n			");
	if (poster!="")
	{

	templateBuilder.Append("\r\n			<div class=\"pbt cl\" id=\"toreplay_div\">\r\n			<strong>回复 <a target=\"_blank\" href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("#");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("楼<font color=\"Olive\">");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("</font>的帖子</a></strong>\r\n			</div>\r\n			<input type=\"hidden\" name=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("toreplay_user\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("toreplay_user\"  value=\"\"/>	\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<div ");
	if (infloat!=1)
	{

	templateBuilder.Append("style=\"margin-right:170px;\" ");
	}
	else
	{

	templateBuilder.Append("style=\"width:600px;\"");
	}	//end if

	templateBuilder.Append(">\r\n			<div class=\"pbt\">\r\n				");
	templateBuilder.Append("<link href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/seditor.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<div class=\"editor_tb\">\r\n	<span class=\"y\">\r\n		");
	if (topicid>0)
	{

	string replyurl = rooturl+"postreply.aspx?topicid="+topicid+"&forumpage="+forumpageid;
	

	if (postid>0)
	{

	 replyurl = replyurl+"&postid="+postid+"&postlayer="+postlayer+"&poster="+Utils.UrlEncode(poster);
	

	}	//end if

	templateBuilder.Append("\r\n		    <a onclick=\"switchAdvanceMode(this.href, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');doane(event);\" href=\"");
	templateBuilder.Append(replyurl.ToString());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/external2.png\" alt=\"高级编辑器\" class=\"vm\"/>高级编辑器</a>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n		    <a onclick=\"switchAdvanceMode(this.href, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');doane(event);\" href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/external2.png\" alt=\"高级编辑器\" class=\"vm\"/>高级编辑器</a>\r\n		");
	}	//end if


	if (infloat!=1)
	{


	if (userid<0||canposttopic)
	{

	string newtopicurl = "";
	

	if (forum.Allowspecialonly<=0)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&forumpage=" + pageid;
	

	}
	else if (1==(forum.Allowpostspecial&1)&&usergroupinfo.Allowpostpoll==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=poll&forumpage=" + pageid;
	

	}
	else if (4==(forum.Allowpostspecial&4)&&usergroupinfo.Allowbonus==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=reward&forumpage=" + pageid;
	

	}
	else if (16==(forum.Allowpostspecial&16)&&usergroupinfo.Allowdebate==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=debate&forumpage=" + pageid;
	

	}	//end if

	string newtopiconclick = "";
	

	if (forum.Allowspecialonly<=0&&canposttopic)
	{

	 newtopiconclick = "showWindow('newthread', '" + forumpath + "showforum.aspx?forumid=" + forum.Fid + "')";
	

	}	//end if


	if (userid<=0)
	{

	 newtopiconclick = "showWindow('login', '" + forumpath + "login.aspx');hideWindow('register');";
	

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n	</span>\r\n	<div>\r\n		<a href=\"javascript:;\" title=\"粗体\" class=\"tb_bold\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[b]', '[/b]')\">B</a>\r\n		<a href=\"javascript:;\" title=\"颜色\" class=\"tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor\" onclick=\"showMenu(this.id, true, 0, 2)\">Color</a>\r\n		");	string coloroptions = "Black,Sienna,DarkOliveGreen,DarkGreen,DarkSlateBlue,Navy,Indigo,DarkSlateGray,DarkRed,DarkOrange,Olive,Green,Teal,Blue,SlateGray,DimGray,Red,SandyBrown,YellowGreen,SeaGreen,MediumTurquoise,RoyalBlue,Purple,Gray,Magenta,Orange,Yellow,Lime,Cyan,DeepSkyBlue,DarkOrchid,Silver,Pink,Wheat,LemonChiffon,PaleGreen,PaleTurquoise,LightBlue,Plum,White";
	
	templateBuilder.Append("\r\n		<div class=\"popupmenu_popup tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor_menu\" style=\"display: none\">\r\n			");
	int colorname__loop__id=0;
	foreach(string colorname in coloroptions.Split(comma))
	{
		colorname__loop__id++;

	templateBuilder.Append("\r\n				<input type=\"button\" style=\"background-color: ");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[color=");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("]', '[/color]')\" />");
	if (colorname__loop__id%8==0)
	{

	templateBuilder.Append("<br />");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n		</div>\r\n		<a href=\"javascript:;\" title=\"图片\" class=\"tb_img\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("img\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'img')\">Image</a>\r\n		<a href=\"javascript:;\" title=\"链接\" class=\"tb_link\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("url\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'url')\">Link</a>\r\n		<a href=\"javascript:;\" title=\"引用\" class=\"tb_quote\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[quote]', '[/quote]')\">Quote</a>\r\n		<a href=\"javascript:;\" title=\"代码\" class=\"tb_code\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[code]', '[/code]')\">Code</a>\r\n	");
	if (config.Smileyinsert==1 && forum.Allowsmilies==1)
	{

	templateBuilder.Append("\r\n		<a href=\"javascript:;\" class=\"tb_smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies\" onclick=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies(");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies_callback);showMenu({'ctrlid':this.id, 'evt':'click', 'layer':2})\">Smilies</a>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n</div>\r\n");
	if (config.Smileyinsert==1 && forum.Allowsmilies==1)
	{

	templateBuilder.Append("\r\n	<div class=\"smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies_menu\" style=\"display:none;width:315px;\">\r\n		<div class=\"smilieslist\">\r\n			");	string defaulttypname = string.Empty;
	
	templateBuilder.Append("\r\n			<div id=\"smiliesdiv\">\r\n				<div class=\"smiliesgroup\" style=\"margin-right: 0pt;\">\r\n					<ul>\r\n					");
	int stype__loop__id=0;
	foreach(DataRow stype in Caches.GetSmilieTypesCache().Rows)
	{
		stype__loop__id++;


	if (stype__loop__id==1)
	{

	 defaulttypname = stype["code"].ToString().Trim();
	

	}	//end if


	if (stype__loop__id==1)
	{

	templateBuilder.Append("\r\n						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" class=\"current\">" + stype["code"].ToString().Trim() + "</a></li>\r\n						");
	}
	else
	{

	templateBuilder.Append("\r\n						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\">" + stype["code"].ToString().Trim() + "</a></li>\r\n						");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n					</ul>\r\n				 </div>\r\n				 <div style=\"clear: both;\" class=\"float_typeid\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie\"></div>\r\n				 <table class=\"smilieslist_table\" id=\"s_preview_table\" style=\"display: none\"><tr><td class=\"smilieslist_preview\" id=\"s_preview\"></td></tr></table>\r\n				 <div id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie_pagenum\" class=\"smilieslist_page\">&nbsp;</div>\r\n			</div>\r\n		</div>\r\n		<script type=\"text/javascript\" reload=\"1\">\r\n			function ");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies(func){\r\n				if($('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML !='' && $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML != '正在加载表情...')\r\n					return;\r\n				var c = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("tools/ajax.aspx?t=smilies\";\r\n				_sendRequest(c,function(d){var e={};try{e=eval(\"(\"+d+\")\")}catch(f){e={}}var h=e?e:null;func(h);e=null;func=null},false,true);\r\n				setTimeout(\"if($('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML=='')$('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML = '正在加载表情...'\", 2000);\r\n			}\r\n			function ");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies_callback(obj) {\r\n				smilies_HASH = obj; \r\n				showsmiles(1, '");
	templateBuilder.Append(defaulttypname.ToString());
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\r\n			}\r\n		</");
	templateBuilder.Append("script>\r\n	</div>\r\n");
	}	//end if



	templateBuilder.Append("\r\n				<div class=\"postarea cl\">\r\n					<div class=\"postinner\">\r\n					");
	if (canreply)
	{


	if (infloat==1)
	{

	templateBuilder.Append("\r\n					  <textarea rows=\"7\" cols=\"80\" name=\"");
	templateBuilder.Append(config.Antispampostmessage.ToString().Trim());
	templateBuilder.Append("\" id=\"message\" tabindex=\"3\" style=\"background:url(" + quickbgad[1].ToString().Trim() + ") no-repeat 50% 50%;\" ");
	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"");
	}	//end if

	templateBuilder.Append(" onkeydown=\"ajaxctlent(event, this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("','");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\"></textarea>\r\n					");
	}
	else
	{

	templateBuilder.Append("\r\n					  <textarea rows=\"5\" cols=\"80\" name=\"");
	templateBuilder.Append(config.Antispampostmessage.ToString().Trim());
	templateBuilder.Append("\" id=\"quickpostmessage\" tabindex=\"6\"  style=\"background-image:url(" + quickbgad[1].ToString().Trim() + ");background-repeat:no-repeat;background-position:50% 50%;\" ");
	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"");
	}	//end if

	templateBuilder.Append(" onkeydown=\"ajaxctlent(event, this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("','");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\"></textarea>\r\n					");
	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n					<div class=\"hm p_login cl\">你需要登录后才可以发帖 <a class=\"xg2\" onclick=\"hideWindow('register');showWindow('login', this.href);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\">登录</a> | <a class=\"xg2\" onclick=\"hideWindow('login');showWindow('register', this.href);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\">注册</a></div>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n					</div>\r\n				</div>\r\n			</div>\r\n			</div>\r\n			");
	if (isseccode)
	{

	templateBuilder.Append("\r\n			<div class=\"pbt\" style=\"position: relative;\">\r\n				");
	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n<script type=\"text/javascript\" reload=\"1\">\r\n	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n	if (typeof vcodeimgid == 'undefined'){\r\n		var vcodeimgid = 1;\r\n	}\r\n	else\r\n	    vcodeimgid++;\r\n\r\n    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"4\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"7\"");
	}	//end if

	templateBuilder.Append(" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onfocus=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n	\r\n	function changevcode(form, value){\r\n		if (!$('vcode')){\r\n			var vcode = document.createElement('input');\r\n			vcode.id = 'vcode';\r\n			vcode.name = 'vcode';\r\n			vcode.type = 'hidden';\r\n			vcode.value = value;\r\n			form.appendChild(vcode);\r\n		}else{\r\n			$('vcode').value = value;\r\n		}\r\n	}\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\nvar secclick = new Array();\r\nvar seccodefocus = 0;\r\nfunction opensecwin(id,type) {\r\n	if($('vcode')){\r\n	$('vcode').parentNode.removeChild($('vcode'));}\r\n\r\n	if (!secclick['vcodetext' + id]) {\r\n	    $('vcodetext' + id).value = '';\r\n	    secclick['vcodetext' + id] = 1;\r\n	    if(type)\r\n	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n	}\r\n\r\n	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n	$('vcodetext' + id + '_menu').style.left = '0px';\r\n	$('vcodetext' + id + '_menu').style.display = '';\r\n	$('vcodetext' + id).focus();\r\n	$('vcodetext' + id).unselectable = 'off';\r\n	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n}\r\n</");
	templateBuilder.Append("script>");

	templateBuilder.Append("\r\n			</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<div class=\"pbt\">\r\n				");
	if (topic.Special==4 && isenddebate==false)
	{

	templateBuilder.Append("\r\n				<div class=\"ftid\">\r\n					<select name=\"debateopinion\" id=\"debateopinion\">\r\n						<option value=\"0\" selected>辩论观点</option>\r\n						<option value=\"1\">正方</option>\r\n						<option value=\"2\">反方</option>\r\n					</select>\r\n				</div>\r\n				<script type=\"text/javascript\">simulateSelect('debateopinion');</");
	templateBuilder.Append("script>\r\n				");
	}	//end if


	if (canreply)
	{

	templateBuilder.Append("\r\n					<button type=\"button\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("submit\" name=\"replysubmit\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"5\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"8\"");
	}	//end if

	templateBuilder.Append(" onclick=\"ajaxreply(this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("', false,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\" class=\"pn\"><span>发表回复</span></button><span class=\"grayfont\">[Ctrl+Enter快速发布]</span>\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n				    <button type=\"button\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("submit\" name=\"replysubmit\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"5\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"8\"");
	}	//end if

	templateBuilder.Append(" onclick=\"hideWindow('register');showWindow('login', '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx');\" class=\"pn\"><span>发表回复</span></button>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n				<a href=\"###\" id=\"adlinkbtn\" style=\"display:none;\" onclick=\"window.open('" + quickbgad[0].ToString().Trim() + "','_blank');\">查看背景广告</a>\r\n				<a href=\"###\" id=\"closebtn\" style=\"display:none;\" onclick=\"$('quickpostmessage').style.background='';this.style.display='none';$('adlinkbtn').style.display='none';\">隐藏</a>\r\n			</div>\r\n			</div>\r\n			<script type=\"text/javascript\">\r\n			var isendpage = (");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("==");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append(");\r\n			var textobj = $('quickpostmessage');	\r\n			var smileyinsert = 1;\r\n			var showsmiliestitle = 0;\r\n			var smiliesIsCreate = 0;	\r\n			var smilies_HASH = {};\r\n			</");
	templateBuilder.Append("script>\r\n	");
	if (infloat!=1)
	{

	templateBuilder.Append("\r\n		</td>\r\n		</tr>\r\n	</tbody>\r\n	</table>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n</div>\r\n<script type=\"text/javascript\"  reload=\"1\">\r\nString.prototype.trim = function()\r\n{\r\nreturn this.replace(/(^\\s*)|(\\s*$)/g, \"\");\r\n} \r\n");
	if (poster!="")
	{

	templateBuilder.Append("\r\n$(\"toreplay_user\").value=trim(html2bbcode1($(\"toreplay_div\").innerHTML)).trim();\r\n");
	}	//end if

	templateBuilder.Append("\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_quickreply.js\"></");
	templateBuilder.Append("script>\r\n</form>\r\n\r\n");


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n    </div>\r\n\r\n    <div id=\"sidebar\">\r\n        <a href=\"showtopic.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&go=prev\">\r\n            上一主题</a><span class=\"pipe\">|</span> <a href=\"showtopic.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&go=next\">\r\n                下一主题</a>\r\n    </div>\r\n\r\n\r\n    <script type=\"text/javascript\">\r\n        var topictitle = '");
	templateBuilder.Append(GetJsFormat(topic.Title).ToString().Trim());
	templateBuilder.Append("';\r\n        var maxpage = parseInt('");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("');\r\n        var pageid = parseInt('");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("');\r\n        if (maxpage > 1) {\r\n            document.onkeyup = function (e) {\r\n                e = e ? e : window.event;\r\n                var tagname = is_ie ? e.srcElement.tagName : e.target.tagName;\r\n                if (tagname == 'INPUT' || tagname == 'TEXTAREA') return;\r\n                actualCode = e.keyCode ? e.keyCode : e.charCode;\r\n                if (pageid < maxpage && actualCode == 39) {\r\n                    window.location = '");
	templateBuilder.Append(Urls.ShowTopicAspxRewrite(topicid,pageid+1).ToString().Trim());
	templateBuilder.Append("';\r\n                }\r\n                if (pageid > 1 && actualCode == 37) {\r\n                    window.location = '");
	templateBuilder.Append(Urls.ShowTopicAspxRewrite(topicid,pageid-1).ToString().Trim());
	templateBuilder.Append("';\r\n                }\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n    ");	string topicurl = Utils.GetRootUrl(forumpath)+Urls.ShowTopicAspxRewrite(topicid,pageid);
	
	templateBuilder.Append("\r\n    <script type=\"text/javascript\">\r\n    function copytitle() {\r\n        var text = '");
	templateBuilder.Append(GetJsFormat(topic.Title).ToString().Trim());
	templateBuilder.Append("\\r\\n");
	templateBuilder.Append(topicurl.ToString());
	templateBuilder.Append("';\r\n        setcopy(text, '帖子地址已经复制到剪贴板');\r\n    }\r\n    function ShowDownloadTip(attachmentownerid) {\r\n        if(attachmentownerid==");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("||");
	templateBuilder.Append(ismoder.ToString());
	templateBuilder.Append("==1)\r\n            return true;\r\n            \r\n        ");
	if (Scoresets.IsSetDownLoadAttachScore())
	{

	templateBuilder.Append("\r\n            return confirm('下载附件需要:");
	templateBuilder.Append(downloadattachmenttip.ToString());
	templateBuilder.Append(".确定下载?');\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            return true;\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n    }\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	}
	else
	{


	if (needlogin)
	{



	if (infloat!=1)
	{

	templateBuilder.Append("\r\n<div class=\"wrap cl\">\r\n	<div class=\"blr\">\r\n	<div class=\"msgbox\" style=\"margin:4px auto;padding:0 !important;margin-left:0;background:none;\">\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n			<p><b>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</b></p>\r\n			<p>您还没有登录，请填写下面的登录表单后再尝试访问。</p>\r\n		</div>\r\n	</div>\r\n	<hr class=\"solidline\"/>\r\n	<form id=\"formlogin\" name=\"formlogin\" method=\"post\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx\" onsubmit=\"submitLogin(this);\">\r\n	<div class=\"c cl\">\r\n		<div style=\"overflow:hidden;overflow-y:auto\" class=\"lgfm\">\r\n		<input type=\"hidden\" value=\"2592000\" name=\"cookietime\"/>\r\n			<div class=\"sipt lpsw\">\r\n				<label for=\"username\">用户名　：</label>\r\n				<input type=\"text\" id=\"username\" name=\"username\" size=\"25\" maxlength=\"40\" tabindex=\"2\" class=\"txt\" />\r\n			</div>\r\n			<div class=\"sipt lpsw\">\r\n				<label for=\"password\">密　码　：</label>\r\n				<input type=\"password\" name=\"password\" size=\"25\" tabindex=\"3\" class=\"txt\"/>\r\n			</div>\r\n        ");
	if (isLoginCode)
	{

	templateBuilder.Append("\r\n			<div class=\"lpsw\" style=\"position: relative;margin-bottom:10px;\">\r\n				");
	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n<script type=\"text/javascript\" reload=\"1\">\r\n	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n	if (typeof vcodeimgid == 'undefined'){\r\n		var vcodeimgid = 1;\r\n	}\r\n	else\r\n	    vcodeimgid++;\r\n\r\n    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"4\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"7\"");
	}	//end if

	templateBuilder.Append(" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onfocus=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n	\r\n	function changevcode(form, value){\r\n		if (!$('vcode')){\r\n			var vcode = document.createElement('input');\r\n			vcode.id = 'vcode';\r\n			vcode.name = 'vcode';\r\n			vcode.type = 'hidden';\r\n			vcode.value = value;\r\n			form.appendChild(vcode);\r\n		}else{\r\n			$('vcode').value = value;\r\n		}\r\n	}\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\nvar secclick = new Array();\r\nvar seccodefocus = 0;\r\nfunction opensecwin(id,type) {\r\n	if($('vcode')){\r\n	$('vcode').parentNode.removeChild($('vcode'));}\r\n\r\n	if (!secclick['vcodetext' + id]) {\r\n	    $('vcodetext' + id).value = '';\r\n	    secclick['vcodetext' + id] = 1;\r\n	    if(type)\r\n	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n	}\r\n\r\n	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n	$('vcodetext' + id + '_menu').style.left = '0px';\r\n	$('vcodetext' + id + '_menu').style.display = '';\r\n	$('vcodetext' + id).focus();\r\n	$('vcodetext' + id).unselectable = 'off';\r\n	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n}\r\n</");
	templateBuilder.Append("script>");

	templateBuilder.Append("\r\n			</div>\r\n        ");
	}	//end if


	if (config.Secques==1)
	{

	templateBuilder.Append("\r\n				<div class=\"ftid sltp\" style=\"margin-bottom:10px\">\r\n					<select name=\"question\" id=\"question_login\" change=\"changequestion();\" tabindex=\"5\">\r\n						<option value=\"0\">安全提问（未设置请忽略）</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','1',this.innerHTML, 1)\" value=\"1\" k_id=\"question_login\">母亲的名字</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','2',this.innerHTML, 2)\" value=\"2\" k_id=\"question_login\">爷爷的名字</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','3',this.innerHTML, 3)\" value=\"3\" k_id=\"question_login\">父亲出生的城市</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','4',this.innerHTML, 4)\" value=\"4\" k_id=\"question_login\">您其中一位老师的名字</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','5',this.innerHTML, 5)\" value=\"5\" k_id=\"question_login\">您个人计算机的型号</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','6',this.innerHTML, 6)\" value=\"6\" k_id=\"question_login\">您最喜欢的餐馆名称</option>\r\n						<option onclick=\"loadselect_liset('question_login', 0, 'question_login','7',this.innerHTML, 7)\" value=\"7\" k_id=\"question_login\">驾驶执照的最后四位数字</option>\r\n					</select>\r\n					<script type=\"text/javascript\">simulateSelect('question_login', '214');</");
	templateBuilder.Append("script>\r\n					<script type=\"text/javascript\">\r\n					    window.onload = function(){setselect(");
	templateBuilder.Append(question.ToString());
	templateBuilder.Append(");}\r\n				        function changequestion() {\r\n				            if ($('question_login').getAttribute(\"selecti\") != \"0\") {\r\n				                $('answer_login').style.display = '';\r\n						        $('answer_login').focus();\r\n				            }\r\n				            else {\r\n				                $('answer_login').style.display = 'none';\r\n				            }\r\n				        }\r\n				        function setselect(value) {\r\n				            try {\r\n                                var questionarray = new Array('安全提问','母亲的名字','爷爷的名字','父亲出生的城市','您其中一位老师的名字','您个人计算机的型号','您最喜欢的餐馆名称','驾驶执照的最后四位数字');\r\n                                $('question_login').setAttribute(\"selecti\",value);\r\n                                $('question_login').options[0].value = value;\r\n                                $('question_ctrl').innerHTML = questionarray[value];\r\n                                changequestion();\r\n				            }\r\n				            catch (e) {\r\n				            }\r\n				        }\r\n\r\n					</");
	templateBuilder.Append("script>\r\n				</div>\r\n				<div class=\"sltp\" style=\"clear:both;\"><input type=\"text\" tabindex=\"6\" class=\"txt\" size=\"36\" autocomplete=\"off\" style=\"display: none;\" id=\"answer_login\" name=\"answer\"/></div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<div class=\"sltp\"  style=\"display:none\">\r\n				<label for=\"templateid\">界面风格</label>\r\n				<select name=\"templateid\" tabindex=\"7\">\r\n				<option value=\"0\">- 使用默认 -</option>\r\n					");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n				</select>\r\n			</div>\r\n		</div>\r\n		<div class=\"lgf\">\r\n			<h4>没有帐号？\r\n				");
	if (infloat==1)
	{

	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx\"  onclick=\"hideWindow('login');showWindow('register', this.href);\" class=\"xg2\">立即注册</a>\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx\" tabindex=\"-1\" accesskey=\"r\" title=\"立即注册 (ALT + R)\" class=\"xg2\">立即注册</a>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</h4>\r\n			<p>\r\n				");
	if (infloat==1)
	{

	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("getpassword.aspx\" onclick=\"hideWindow('login');showWindow('getpassword', this.href);\" accesskey=\"g\" title=\"忘记密码 (ALT + G)\" class=\"xg2\">找回密码</a>\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("getpassword.aspx\" accesskey=\"g\" title=\"找回密码\" class=\"xg2\">找回密码</a>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<p class=\"fsb pns cl\">\r\n		<input type=\"submit\" style=\"width:0;filter:alpha(opacity=0);-moz-opacity:0;opacity:0;\"/>\r\n		<button name=\"login\" type=\"submit\" id=\"login\" tabindex=\"8\" ");
	if (infloat!=1)
	{

	templateBuilder.Append("onclick=\"javascript:window.location.replace('?agree=yes')\"");
	}	//end if

	templateBuilder.Append(" class=\"pn\"><span>登录</span></button>\r\n		<input type=\"checkbox\" value=\"43200\" tabindex=\"9\" id=\"expires\" name=\"expires\" checked/>\r\n		<label for=\"expires\"><span title=\"下次访问自动登录\">记住我</span></label>\r\n	</p>\r\n	<script type=\"text/javascript\">\r\n		document.getElementById(\"username\").focus();\r\n	</");
	templateBuilder.Append("script>\r\n	</form>\r\n</div>\r\n</div>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" 提示信息</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n			<p><b>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</b></p>\r\n			<p>您还没有登录，请填写下面的登录表单后再尝试访问。</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<script type=\"text/javascript\" reload=\"1\">\r\nsetTimeout(\"floatwin('close_newthread');floatwin('close_reply');floatwin('close_edit');floatwin('open_login', '");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("login.aspx', 600, 410)\",1000);\r\n</");
	templateBuilder.Append("script>\r\n");
	}	//end if

	templateBuilder.Append("	\r\n<script type=\"text/javascript\">\r\n        ");
	if (infloat!=1)
	{

	templateBuilder.Append("\r\n		document.getElementById(\"username\").focus();\r\n        ");
	}	//end if

	templateBuilder.Append("\r\n		function submitLogin(loginForm)\r\n		{\r\n//		    loginForm.action = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx?loginsubmit=true&reurl=' + escape(window.location);\r\n            loginForm.action = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx?reurl=' + escape(window.location);\r\n            \r\n			loginForm.submit();\r\n		}\r\n</");
	templateBuilder.Append("script>");


	}
	else
	{

	templateBuilder.Append("\r\n    <div class=\"wrap cl pageinfo\">\r\n        <div id=\"nav\">\r\n            <a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo;\r\n            <strong>错误提示</strong></div>\r\n    </div>\r\n    ");
	templateBuilder.Append("\r\n<div class=\"wrap cl\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n			<p class=\"errorback\">\r\n				<script type=\"text/javascript\">\r\n					if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n					{\r\n						document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n					}\r\n				</");
	templateBuilder.Append("script>\r\n				<a href=\"forumindex.aspx\">论坛首页</a>\r\n				");
	if (usergroupid==7)
	{

	templateBuilder.Append("\r\n				 &nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"login.aspx\">登录</a>&nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n");


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(inpostad.ToString());
	templateBuilder.Append("\r\n    ");
	if (config.Forumjump==1)
	{

	templateBuilder.Append("\r\n    ");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n    ");
	}	//end if

	templateBuilder.Append("\r\n    <script type=\"text/javascript\">\r\n    getuserips();\r\n");
	if (ForumUtils.GetCookie("clearUserdata")=="forum")
	{

	templateBuilder.Append("\r\n    saveUserdata('forum', '');\r\n");
	}	//end if

	templateBuilder.Append("\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	}
	else
	{


	templateBuilder.Append("<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/bbcode.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/post.js\"></");
	templateBuilder.Append("script>\r\n");	string seditorid = "";
	
	string poster = DNTRequest.GetString("poster");
	
	int postlayer = DNTRequest.GetInt("postlayer",0);
	
	string urlreferrer = DNTRequest.GetUrlReferrer();
	

	if (infloat!=1)
	{

	 seditorid = "quickpost";
	

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("\r\n<form method=\"post\" name=\"postform\" id=\"form\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&poster=");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" >\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n<form method=\"post\" name=\"postform\" id=\"quickpostform\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&poster=");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("&postlayer=");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" >\r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"quickpost\" class=\"");
	if (infloat!=1)
	{

	templateBuilder.Append("main");
	}	//end if

	templateBuilder.Append(" quickpost\">\r\n	");
	if (infloat==1)
	{

	templateBuilder.Append("\r\n	<h3 class=\"flb\">\r\n		<span class=\"y\">\r\n			<a title=\"关闭\" onclick=\"hideWindow('reply')\" class=\"flbc\" href=\"javascript:;\">关闭</a>\r\n		</span><em>无刷新回复主题</em>\r\n	</h3>\r\n	");
	}	//end if


	if (infloat!=1)
	{

	templateBuilder.Append("\r\n	<table cellspacing=\"0\" cellpadding=\"0\" summary=\"无刷新快速回复\" >\r\n	<tbody>\r\n		<tr>\r\n		<td class=\"postauthor\" style=\"background-color:#EFEFEF;border:0px;\">\r\n			\r\n		</td>\r\n		<td class=\"postcontent\">\r\n	");
	}	//end if

	templateBuilder.Append("\r\n			<div class=\"post_inner c cl\">\r\n			");
	if (quickeditorad!="")
	{

	templateBuilder.Append("\r\n			<div class=\"leaderboard\">");
	templateBuilder.Append(quickeditorad.ToString());
	templateBuilder.Append("</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<em id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("validatemessage\">");
	if (infloat==1)
	{

	templateBuilder.Append("参与/回复主题");
	}	//end if

	templateBuilder.Append("</em>\r\n			<div class=\"pbt\">\r\n				<input type=\"text\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title\" name=\"");
	templateBuilder.Append(config.Antispamposttitle.ToString().Trim());
	templateBuilder.Append("\" size=\"84\" tabindex=\"1\" value=\"\" style=\"display:none;\" />\r\n				<input type=\"hidden\" id=\"postlayer\" name=\"postlayer\" value=\"-1\" />\r\n				<input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("\" />\r\n				<span style=\"display:none\">\r\n				<input type=\"checkbox\" value=\"1\" name=\"htmlon\" id=\"htmlon\" ");
	if (usergroupinfo.Allowhtml!=1)
	{

	templateBuilder.Append(" disabled");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"parseurloff\" id=\"parseurloff\" value=\"1\" ");
	if (parseurloff==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"smileyoff\" id=\"smileyoff\" value=\"1\" ");
	if (smileyoff==1)
	{

	templateBuilder.Append(" checked disabled ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"bbcodeoff\" id=\"bbcodeoff\" value=\"1\" ");
	if (bbcodeoff==1)
	{

	templateBuilder.Append(" checked disabled ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"usesig\" id=\"usesig\" value=\"1\" ");
	if (usesig==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"emailnotify\" id=\"emailnotify\" ");
	if (replyemailstatus==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				<input type=\"checkbox\" name=\"postreplynotice\" id=\"postreplynotice\" ");
	if (replynotificationstatus==1)
	{

	templateBuilder.Append(" checked ");
	}	//end if

	templateBuilder.Append("/>\r\n				</span>\r\n				<script type=\"text/javascript\">\r\n					var bbinsert = parseInt('1');\r\n					var smiliesCount = 24;\r\n					var colCount = 8;\r\n				</");
	templateBuilder.Append("script>\r\n				");	char comma = ',';
	

	if (infloat==1)
	{

	templateBuilder.Append("\r\n				<div class=\"pbt cl\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title_text\">RE:");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("<a href=\"javascript:void(0)\" onclick=\"modifytitle();\" class=\"xg2\" style=\"margin-left:10px;\">修改</a></div>\r\n				<script type=\"text/javascript\">\r\n				function modifytitle(){\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title_text').style.display = 'none';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').style.display = '';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').ClassName = 'txt postpx';\r\n				    $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("title').value = 'RE:");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("';\r\n				}\r\n				</");
	templateBuilder.Append("script>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n			");
	if (poster!="")
	{

	templateBuilder.Append("\r\n			<div class=\"pbt cl\" id=\"toreplay_div\">\r\n			<strong>回复 <a target=\"_blank\" href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("#");
	templateBuilder.Append(postid.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(postlayer.ToString());
	templateBuilder.Append("楼<font color=\"Olive\">");
	templateBuilder.Append(poster.ToString());
	templateBuilder.Append("</font>的帖子</a></strong>\r\n			</div>\r\n			<input type=\"hidden\" name=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("toreplay_user\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("toreplay_user\"  value=\"\"/>	\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<div ");
	if (infloat!=1)
	{

	templateBuilder.Append("style=\"margin-right:170px;\" ");
	}
	else
	{

	templateBuilder.Append("style=\"width:600px;\"");
	}	//end if

	templateBuilder.Append(">\r\n			<div class=\"pbt\">\r\n				");
	templateBuilder.Append("<link href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/seditor.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<div class=\"editor_tb\">\r\n	<span class=\"y\">\r\n		");
	if (topicid>0)
	{

	string replyurl = rooturl+"postreply.aspx?topicid="+topicid+"&forumpage="+forumpageid;
	

	if (postid>0)
	{

	 replyurl = replyurl+"&postid="+postid+"&postlayer="+postlayer+"&poster="+Utils.UrlEncode(poster);
	

	}	//end if

	templateBuilder.Append("\r\n		    <a onclick=\"switchAdvanceMode(this.href, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');doane(event);\" href=\"");
	templateBuilder.Append(replyurl.ToString());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/external2.png\" alt=\"高级编辑器\" class=\"vm\"/>高级编辑器</a>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n		    <a onclick=\"switchAdvanceMode(this.href, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');doane(event);\" href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/external2.png\" alt=\"高级编辑器\" class=\"vm\"/>高级编辑器</a>\r\n		");
	}	//end if


	if (infloat!=1)
	{


	if (userid<0||canposttopic)
	{

	string newtopicurl = "";
	

	if (forum.Allowspecialonly<=0)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&forumpage=" + pageid;
	

	}
	else if (1==(forum.Allowpostspecial&1)&&usergroupinfo.Allowpostpoll==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=poll&forumpage=" + pageid;
	

	}
	else if (4==(forum.Allowpostspecial&4)&&usergroupinfo.Allowbonus==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=reward&forumpage=" + pageid;
	

	}
	else if (16==(forum.Allowpostspecial&16)&&usergroupinfo.Allowdebate==1)
	{

	 newtopicurl = forumpath + "posttopic.aspx?forumid=" + forum.Fid + "&type=debate&forumpage=" + pageid;
	

	}	//end if

	string newtopiconclick = "";
	

	if (forum.Allowspecialonly<=0&&canposttopic)
	{

	 newtopiconclick = "showWindow('newthread', '" + forumpath + "showforum.aspx?forumid=" + forum.Fid + "')";
	

	}	//end if


	if (userid<=0)
	{

	 newtopiconclick = "showWindow('login', '" + forumpath + "login.aspx');hideWindow('register');";
	

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n	</span>\r\n	<div>\r\n		<a href=\"javascript:;\" title=\"粗体\" class=\"tb_bold\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[b]', '[/b]')\">B</a>\r\n		<a href=\"javascript:;\" title=\"颜色\" class=\"tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor\" onclick=\"showMenu(this.id, true, 0, 2)\">Color</a>\r\n		");	string coloroptions = "Black,Sienna,DarkOliveGreen,DarkGreen,DarkSlateBlue,Navy,Indigo,DarkSlateGray,DarkRed,DarkOrange,Olive,Green,Teal,Blue,SlateGray,DimGray,Red,SandyBrown,YellowGreen,SeaGreen,MediumTurquoise,RoyalBlue,Purple,Gray,Magenta,Orange,Yellow,Lime,Cyan,DeepSkyBlue,DarkOrchid,Silver,Pink,Wheat,LemonChiffon,PaleGreen,PaleTurquoise,LightBlue,Plum,White";
	
	templateBuilder.Append("\r\n		<div class=\"popupmenu_popup tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor_menu\" style=\"display: none\">\r\n			");
	int colorname__loop__id=0;
	foreach(string colorname in coloroptions.Split(comma))
	{
		colorname__loop__id++;

	templateBuilder.Append("\r\n				<input type=\"button\" style=\"background-color: ");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[color=");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("]', '[/color]')\" />");
	if (colorname__loop__id%8==0)
	{

	templateBuilder.Append("<br />");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n		</div>\r\n		<a href=\"javascript:;\" title=\"图片\" class=\"tb_img\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("img\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'img')\">Image</a>\r\n		<a href=\"javascript:;\" title=\"链接\" class=\"tb_link\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("url\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'url')\">Link</a>\r\n		<a href=\"javascript:;\" title=\"引用\" class=\"tb_quote\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[quote]', '[/quote]')\">Quote</a>\r\n		<a href=\"javascript:;\" title=\"代码\" class=\"tb_code\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[code]', '[/code]')\">Code</a>\r\n	");
	if (config.Smileyinsert==1 && forum.Allowsmilies==1)
	{

	templateBuilder.Append("\r\n		<a href=\"javascript:;\" class=\"tb_smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies\" onclick=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies(");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies_callback);showMenu({'ctrlid':this.id, 'evt':'click', 'layer':2})\">Smilies</a>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n</div>\r\n");
	if (config.Smileyinsert==1 && forum.Allowsmilies==1)
	{

	templateBuilder.Append("\r\n	<div class=\"smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies_menu\" style=\"display:none;width:315px;\">\r\n		<div class=\"smilieslist\">\r\n			");	string defaulttypname = string.Empty;
	
	templateBuilder.Append("\r\n			<div id=\"smiliesdiv\">\r\n				<div class=\"smiliesgroup\" style=\"margin-right: 0pt;\">\r\n					<ul>\r\n					");
	int stype__loop__id=0;
	foreach(DataRow stype in Caches.GetSmilieTypesCache().Rows)
	{
		stype__loop__id++;


	if (stype__loop__id==1)
	{

	 defaulttypname = stype["code"].ToString().Trim();
	

	}	//end if


	if (stype__loop__id==1)
	{

	templateBuilder.Append("\r\n						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" class=\"current\">" + stype["code"].ToString().Trim() + "</a></li>\r\n						");
	}
	else
	{

	templateBuilder.Append("\r\n						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\">" + stype["code"].ToString().Trim() + "</a></li>\r\n						");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n					</ul>\r\n				 </div>\r\n				 <div style=\"clear: both;\" class=\"float_typeid\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie\"></div>\r\n				 <table class=\"smilieslist_table\" id=\"s_preview_table\" style=\"display: none\"><tr><td class=\"smilieslist_preview\" id=\"s_preview\"></td></tr></table>\r\n				 <div id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie_pagenum\" class=\"smilieslist_page\">&nbsp;</div>\r\n			</div>\r\n		</div>\r\n		<script type=\"text/javascript\" reload=\"1\">\r\n			function ");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies(func){\r\n				if($('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML !='' && $('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML != '正在加载表情...')\r\n					return;\r\n				var c = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("tools/ajax.aspx?t=smilies\";\r\n				_sendRequest(c,function(d){var e={};try{e=eval(\"(\"+d+\")\")}catch(f){e={}}var h=e?e:null;func(h);e=null;func=null},false,true);\r\n				setTimeout(\"if($('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML=='')$('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("showsmilie').innerHTML = '正在加载表情...'\", 2000);\r\n			}\r\n			function ");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("getSmilies_callback(obj) {\r\n				smilies_HASH = obj; \r\n				showsmiles(1, '");
	templateBuilder.Append(defaulttypname.ToString());
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\r\n			}\r\n		</");
	templateBuilder.Append("script>\r\n	</div>\r\n");
	}	//end if



	templateBuilder.Append("\r\n				<div class=\"postarea cl\">\r\n					<div class=\"postinner\">\r\n					");
	if (canreply)
	{


	if (infloat==1)
	{

	templateBuilder.Append("\r\n					  <textarea rows=\"7\" cols=\"80\" name=\"");
	templateBuilder.Append(config.Antispampostmessage.ToString().Trim());
	templateBuilder.Append("\" id=\"message\" tabindex=\"3\" style=\"background:url(" + quickbgad[1].ToString().Trim() + ") no-repeat 50% 50%;\" ");
	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"");
	}	//end if

	templateBuilder.Append(" onkeydown=\"ajaxctlent(event, this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("','");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\"></textarea>\r\n					");
	}
	else
	{

	templateBuilder.Append("\r\n					  <textarea rows=\"5\" cols=\"80\" name=\"");
	templateBuilder.Append(config.Antispampostmessage.ToString().Trim());
	templateBuilder.Append("\" id=\"quickpostmessage\" tabindex=\"6\"  style=\"background-image:url(" + quickbgad[1].ToString().Trim() + ");background-repeat:no-repeat;background-position:50% 50%;\" ");
	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"");
	}	//end if

	templateBuilder.Append(" onkeydown=\"ajaxctlent(event, this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("','");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\"></textarea>\r\n					");
	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n					<div class=\"hm p_login cl\">你需要登录后才可以发帖 <a class=\"xg2\" onclick=\"hideWindow('register');showWindow('login', this.href);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\">登录</a> | <a class=\"xg2\" onclick=\"hideWindow('login');showWindow('register', this.href);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\">注册</a></div>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n					</div>\r\n				</div>\r\n			</div>\r\n			</div>\r\n			");
	if (isseccode)
	{

	templateBuilder.Append("\r\n			<div class=\"pbt\" style=\"position: relative;\">\r\n				");
	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n<script type=\"text/javascript\" reload=\"1\">\r\n	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n	if (typeof vcodeimgid == 'undefined'){\r\n		var vcodeimgid = 1;\r\n	}\r\n	else\r\n	    vcodeimgid++;\r\n\r\n    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"4\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"7\"");
	}	//end if

	templateBuilder.Append(" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onfocus=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n	\r\n	function changevcode(form, value){\r\n		if (!$('vcode')){\r\n			var vcode = document.createElement('input');\r\n			vcode.id = 'vcode';\r\n			vcode.name = 'vcode';\r\n			vcode.type = 'hidden';\r\n			vcode.value = value;\r\n			form.appendChild(vcode);\r\n		}else{\r\n			$('vcode').value = value;\r\n		}\r\n	}\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\nvar secclick = new Array();\r\nvar seccodefocus = 0;\r\nfunction opensecwin(id,type) {\r\n	if($('vcode')){\r\n	$('vcode').parentNode.removeChild($('vcode'));}\r\n\r\n	if (!secclick['vcodetext' + id]) {\r\n	    $('vcodetext' + id).value = '';\r\n	    secclick['vcodetext' + id] = 1;\r\n	    if(type)\r\n	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n	}\r\n\r\n	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n	$('vcodetext' + id + '_menu').style.left = '0px';\r\n	$('vcodetext' + id + '_menu').style.display = '';\r\n	$('vcodetext' + id).focus();\r\n	$('vcodetext' + id).unselectable = 'off';\r\n	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n}\r\n</");
	templateBuilder.Append("script>");

	templateBuilder.Append("\r\n			</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<div class=\"pbt\">\r\n				");
	if (topic.Special==4 && isenddebate==false)
	{

	templateBuilder.Append("\r\n				<div class=\"ftid\">\r\n					<select name=\"debateopinion\" id=\"debateopinion\">\r\n						<option value=\"0\" selected>辩论观点</option>\r\n						<option value=\"1\">正方</option>\r\n						<option value=\"2\">反方</option>\r\n					</select>\r\n				</div>\r\n				<script type=\"text/javascript\">simulateSelect('debateopinion');</");
	templateBuilder.Append("script>\r\n				");
	}	//end if


	if (canreply)
	{

	templateBuilder.Append("\r\n					<button type=\"button\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("submit\" name=\"replysubmit\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"5\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"8\"");
	}	//end if

	templateBuilder.Append(" onclick=\"ajaxreply(this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("', false,'");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("',");
	templateBuilder.Append(hide.ToString());
	templateBuilder.Append(");\" class=\"pn\"><span>发表回复</span></button><span class=\"grayfont\">[Ctrl+Enter快速发布]</span>\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n				    <button type=\"button\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("submit\" name=\"replysubmit\" ");
	if (infloat==1)
	{

	templateBuilder.Append("tabindex=\"5\"");
	}
	else
	{

	templateBuilder.Append("tabindex=\"8\"");
	}	//end if

	templateBuilder.Append(" onclick=\"hideWindow('register');showWindow('login', '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx');\" class=\"pn\"><span>发表回复</span></button>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n				<a href=\"###\" id=\"adlinkbtn\" style=\"display:none;\" onclick=\"window.open('" + quickbgad[0].ToString().Trim() + "','_blank');\">查看背景广告</a>\r\n				<a href=\"###\" id=\"closebtn\" style=\"display:none;\" onclick=\"$('quickpostmessage').style.background='';this.style.display='none';$('adlinkbtn').style.display='none';\">隐藏</a>\r\n			</div>\r\n			</div>\r\n			<script type=\"text/javascript\">\r\n			var isendpage = (");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("==");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append(");\r\n			var textobj = $('quickpostmessage');	\r\n			var smileyinsert = 1;\r\n			var showsmiliestitle = 0;\r\n			var smiliesIsCreate = 0;	\r\n			var smilies_HASH = {};\r\n			</");
	templateBuilder.Append("script>\r\n	");
	if (infloat!=1)
	{

	templateBuilder.Append("\r\n		</td>\r\n		</tr>\r\n	</tbody>\r\n	</table>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n</div>\r\n<script type=\"text/javascript\"  reload=\"1\">\r\nString.prototype.trim = function()\r\n{\r\nreturn this.replace(/(^\\s*)|(\\s*$)/g, \"\");\r\n} \r\n");
	if (poster!="")
	{

	templateBuilder.Append("\r\n$(\"toreplay_user\").value=trim(html2bbcode1($(\"toreplay_div\").innerHTML)).trim();\r\n");
	}	//end if

	templateBuilder.Append("\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_quickreply.js\"></");
	templateBuilder.Append("script>\r\n</form>\r\n\r\n");


	}	//end if



	if (infloat!=1)
	{

	templateBuilder.Append("\r\n<div id=\"footer\">\r\n	<div class=\"wrap\"  id=\"wp\">\r\n		<div id=\"footlinks\">\r\n			<p><a href=\"");
	templateBuilder.Append(config.Weburl.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append("</a> - ");
	templateBuilder.Append(config.Linktext.ToString().Trim());
	templateBuilder.Append(" - <a target=\"_blank\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("stats.aspx\">统计</a> - ");
	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>");
	}	//end if

	templateBuilder.Append("\r\n			");
	templateBuilder.Append(config.Statcode.ToString().Trim());
	templateBuilder.Append(config.Icp.ToString().Trim());
	templateBuilder.Append("\r\n			</p>\r\n            <div>广告合作：admin@bamn.cn&nbsp;&nbsp;</div>\r\n		</div>\r\n		<p id=\"copyright\">\r\n			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT\">DiscuzNT</a></strong> 技术支持：<strong><a href=\"http://www.moodsoft.cn\" target=\"_blank\" title=\"Discuz!NT\">MoodSoft</a></strong>\r\n			&copy; 2012-2013 BaMn Inc.\r\n		</p>\r\n		<p id=\"debuginfo\" class=\"grayfont\">\r\n		");
	if (config.Debug!=0)
	{

	templateBuilder.Append("\r\n			Processed in ");
	templateBuilder.Append(this.Processtime.ToString().Trim());
	templateBuilder.Append(" second(s)\r\n			");
	if (isguestcachepage==1)
	{

	templateBuilder.Append("\r\n				(Cached).\r\n			");
	}
	else if (querycount>1)
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" queries.\r\n			");
	}
	else
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n			");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</p>\r\n	</div>\r\n</div>\r\n\r\n\r\n");



	if (infloat!=1)
	{


	if (floatad!="")
	{

	templateBuilder.Append("\r\n	<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_floatadv.js\"></");
	templateBuilder.Append("script>\r\n	");
	templateBuilder.Append(floatad.ToString());
	templateBuilder.Append("\r\n	<script type=\"text/javascript\">theFloaters.play();</");
	templateBuilder.Append("script>\r\n");
	}
	else if (doublead!="")
	{

	templateBuilder.Append("\r\n	<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_floatadv.js\"></");
	templateBuilder.Append("script>\r\n	");
	templateBuilder.Append(doublead.ToString());
	templateBuilder.Append("\r\n	<script type=\"text/javascript\">theFloaters.play();</");
	templateBuilder.Append("script>\r\n");
	}	//end if


	}	//end if




	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
