<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showforum" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2013/11/19 13:52:55.
		本页面代码由Discuz!NT模板引擎生成于 2013/11/19 13:52:55. 
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

	templateBuilder.Append("\r\n<div class=\"wrap cl pageinfo\">\r\n    <div id=\"nav\">\r\n        ");
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
	templateBuilder.Append(forumnav.ToString());
	templateBuilder.Append("\r\n        ");
	if (ismoder)
	{

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\"\r\n            style=\"float: right;\">发新主题&nbsp;&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;");
	}	//end if

	templateBuilder.Append("\r\n    </div>\r\n</div>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	if (page_err==0)
	{

	templateBuilder.Append("\r\n<script type=\"text/javascript\">\r\n	var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n    var imagedir = \"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("\";\r\n	var fid = parseInt(");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append(");\r\n	var postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n	var postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n	var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n	var forumurl = forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n</");
	templateBuilder.Append("script>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_showforum.js\"></");
	templateBuilder.Append("script>\r\n\r\n<div id=\"navsecond\" style=\"float: left; margin-left: 1px; width: 165px; padding-left:30px;\">\r\n ");
	if (page_err==0)
	{

	templateBuilder.Append("\r\n    <div class=\"wrap cl\">\r\n        ");

	if (pagewordad.Length>0)
	{

	templateBuilder.Append("\r\n<div id=\"ad_text\" style=\" width:740px;\">\r\n	<table cellspacing=\"1\" cellpadding=\"0\" width=\"100%\" summary=\"text ad\">\r\n	<tbody>\r\n		<tr>\r\n		");	int adindex = 0;
	

	int pageword__loop__id=0;
	foreach(string pageword in pagewordad)
	{
		pageword__loop__id++;


	if (adindex<4)
	{

	templateBuilder.Append("\r\n			<td>");
	templateBuilder.Append(pageword.ToString());
	templateBuilder.Append("</td>\r\n				");	 adindex = adindex+1;
	

	}
	else
	{

	templateBuilder.Append("\r\n		</tr><tr>\r\n			<td>");
	templateBuilder.Append(pageword.ToString());
	templateBuilder.Append("</td>\r\n				");	 adindex = 1;
	

	}	//end if


	}	//end loop


	if (pagewordad.Length%4>0)
	{


					for (int j = 0; j < (4 - pagewordad.Length % 4); j++)
					{
				
	templateBuilder.Append("\r\n			<td>&nbsp;</td>\r\n			");
					}
				

	}	//end if

	templateBuilder.Append("\r\n		</tr>\r\n	</tbody>\r\n	</table>\r\n</div>\r\n");
	}	//end if


	if (pagead.Count>0)
	{


	int pageadtext__loop__id=0;
	foreach(string pageadtext in pagead)
	{
		pageadtext__loop__id++;

	templateBuilder.Append("\r\n        <div class=\"ad_text sclear\">\r\n            ");
	templateBuilder.Append(pageadtext.ToString());
	templateBuilder.Append("\r\n        </div>\r\n    ");
	}	//end loop


	}	//end if




	if (showforumlogin!=1)
	{

	templateBuilder.Append("\r\n        <div id=\"forumheader\" >\r\n            <h2 style=\" width:160px;\">");	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0);
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</h2>\r\n        </div>\r\n\r\n        \r\n\r\n        \r\n        ");
	if (forum.Layer!=0)
	{

	templateBuilder.Append("\r\n        <div class=\"main thread\">\r\n            <form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&infloat=1\">\r\n            <div>\r\n                <table summary=\"");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" id=\"threadlist\" cellspacing=\"0\" cellpadding=\"0\" style=\" width:160px;\">\r\n                    ");
	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

break;

	}	//end loop

	string tdivimg = "";
	

	if (toptopiclist.Count>0 && topiclist.Count>0)
	{


	}	//end if


	int topic__loop__id=0;
	foreach(TopicInfo topic in topiclist)
	{
		topic__loop__id++;

	templateBuilder.Append("\r\n                    <tbody>\r\n                        <tr>\r\n                            <th style=\"border-bottom: 0px;\">\r\n                                ");
	if (pageid<3 && forum.Allowthumbnail==1)
	{


	}
	else
	{

	 aspxrewriteurl = Urls.ShowTopicAspxRewrite(topic.Tid,0, DNTRequest.GetInt("typeid", -1));
	

	if (topic.Special==4)
	{

	 aspxrewriteurl = Urls.ShowDebateAspxRewrite(topic.Tid, DNTRequest.GetInt("typeid", -1));
	

	}	//end if

	int ishtmltitle = Topics.GetMagicValue(topic.Magic, MagicType.HtmlTitle);
	

	if (ishtmltitle==1)
	{

	templateBuilder.Append("\r\n                                <a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	if (config.Aspxrewrite!=1)
	{

	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(pageid.ToString());
	}	//end if

	templateBuilder.Append("\">\r\n                                    ");
	templateBuilder.Append(Topics.GetHtmlTitle(topic.Tid).ToString().Trim());
	templateBuilder.Append("</a>\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <a onclick=\"atarget(this)\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	if (config.Aspxrewrite!=1)
	{

	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(pageid.ToString());
	}	//end if

	templateBuilder.Append("\">\r\n                                    ");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n                                ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n                            </th>\r\n                        </tr>\r\n                    </tbody>\r\n                    ");
	}	//end loop

	templateBuilder.Append("\r\n                </table>\r\n                \r\n            </form>\r\n        </div>\r\n\r\n        \r\n\r\n    </div>\r\n    ");
	templateBuilder.Append(tdivimg.ToString());
	templateBuilder.Append("\r\n    ");
	if (config.Whosonlinestatus!=0 && config.Whosonlinestatus!=1)
	{


	}	//end if

	templateBuilder.Append("\r\n\r\n    \r\n</div>\r\n\r\n");
	}	//end if

	templateBuilder.Append("\r\n<script type=\"text/javascript\">\r\n    var maxpage = parseInt('");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("');\r\n    var pageid = parseInt('");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("');\r\n    if (maxpage > 1) {\r\n        document.onkeyup = function (e) {\r\n            e = e ? e : window.event;\r\n            var tagname = is_ie ? e.srcElement.tagName : e.target.tagName;\r\n            if (tagname == 'INPUT' || tagname == 'TEXTAREA') return;\r\n            actualCode = e.keyCode ? e.keyCode : e.charCode;\r\n            if (pageid < maxpage && actualCode == 39) {\r\n                window.location = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append(Urls.ShowForumAspxRewrite(forumid,pageid+1,forum.Rewritename).ToString().Trim());
	templateBuilder.Append("';\r\n            }\r\n            if (pageid > 1 && actualCode == 37) {\r\n                window.location = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append(Urls.ShowForumAspxRewrite(forumid,pageid-1,forum.Rewritename).ToString().Trim());
	templateBuilder.Append("';\r\n            }\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>\r\n");
	}	//end if


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


	if (forum.Subforumcount>0&&subforumlist.Count>0)
	{


	templateBuilder.Append("<div id=\"subforum\" class=\"main cl list\">\r\n	<div id=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\"  class=\"fi\" summary=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\">\r\n	<table cellspacing=\"0\" cellpadding=\"0\">\r\n	<tbody>	\r\n	");
	if (forum.Colcount==1)
	{


	int subforum__loop__id=0;
	foreach(IndexPageForumInfo subforum in subforumlist)
	{
		subforum__loop__id++;

	templateBuilder.Append("\r\n			<tr>\r\n				");	 aspxrewriteurl = this.ShowForumAspxRewrite(subforum.Fid,0);
	
	templateBuilder.Append("\r\n				<th ");
	if (config.Shownewposticon==1)
	{

	templateBuilder.Append("class=\"notopic ");
	if (subforum.Havenew=="new")
	{

	templateBuilder.Append("new");
	}	//end if

	templateBuilder.Append("\"");
	}	//end if

	templateBuilder.Append(">\r\n					<h2>						\r\n						");
	if (subforum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(subforum.Fid,0,subforum.Rewritename);
	
	templateBuilder.Append("\r\n							<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n						");
	}
	else
	{

	templateBuilder.Append("\r\n							<a href=\"");
	templateBuilder.Append(subforum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n						");
	}	//end if

	templateBuilder.Append("\r\n						");
	templateBuilder.Append(subforum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n					</h2>\r\n				</th>\r\n			  </tr>\r\n		");
	}	//end loop


	}
	else
	{

	int subforumindex = 0;
	
	double colwidth = 99.6 / forum.Colcount;
	

	int subforum__loop__id=0;
	foreach(IndexPageForumInfo subforum in subforumlist)
	{
		subforum__loop__id++;

	 subforumindex = subforumindex+1;
	

	if (subforumindex==1)
	{

	templateBuilder.Append("\r\n			<tr>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n				<th style=\"width:");
	templateBuilder.Append(colwidth.ToString());
	templateBuilder.Append("%;\" ");
	if (config.Shownewposticon==1)
	{

	templateBuilder.Append("class=\"notopic ");
	if (subforum.Havenew=="new")
	{

	templateBuilder.Append("new");
	}	//end if

	templateBuilder.Append("\"");
	}	//end if

	templateBuilder.Append(">\r\n				<h2>				\r\n				");
	if (forum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(subforum.Fid,0,subforum.Rewritename);
	
	templateBuilder.Append("\r\n					<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n					<a href=\"");
	templateBuilder.Append(subforum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n				");
	}	//end if

	templateBuilder.Append("\r\n				");
	templateBuilder.Append(subforum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n				</h2>\r\n				\r\n				 </th>\r\n		");
	if (subforumindex==forum.Colcount)
	{

	templateBuilder.Append("\r\n			</tr>\r\n			");	 subforumindex = 0;
	

	}	//end if


	}	//end loop


	}	//end if

	templateBuilder.Append("\r\n	</tbody>\r\n	</table>\r\n	</div>\r\n</div>");


	}	//end if

	templateBuilder.Append("\r\n\r\n</div>\r\n");
	if (forum.Layer==0)
	{

	templateBuilder.Append("\r\n</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n\r\n<div id=\"maincontent\" style=\"width: 720px; padding:5px;\">\r\n            ");
	if (forum.Description!="")
	{

	templateBuilder.Append("\r\n                <p>");
	templateBuilder.Append(forum.Description.ToString().Trim());
	templateBuilder.Append("</p>\r\n            ");
	}	//end if


	if (forum.Rules!="")
	{

	templateBuilder.Append("\r\n	            <div id=\"rules\">");
	templateBuilder.Append(forum.Rules.ToString().Trim());
	templateBuilder.Append("</div>\r\n            ");
	}	//end if

	templateBuilder.Append("\r\n</div>\r\n\r\n<div id=\"sidebar\" style=\"width: 165px; float: left; margin-left:20px;\">\r\n    <div style=\"border:1px solid #ccc;width:150px; height:600px;float:left;\">广告</div>\r\n</div>\r\n\r\n");

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



	templateBuilder.Append("\r\n");
	templateBuilder.Append(mediaad.ToString());
	templateBuilder.Append("\r\n");
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


	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
