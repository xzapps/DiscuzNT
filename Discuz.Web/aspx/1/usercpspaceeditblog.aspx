<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspaceeditblog" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2013/11/19 13:53:14.
		本页面代码由Discuz!NT模板引擎生成于 2013/11/19 13:53:14. 
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



	templateBuilder.Append("\r\n<script type=\"text/javascript\">\r\nvar forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n</");
	templateBuilder.Append("script>\r\n\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>编辑日志</strong>\r\n	</div>\r\n</div>\r\n<div class=\"wrap uc cl\">\r\n   ");

	if (userid>0)
	{

	templateBuilder.Append("\r\n<div class=\"uc_app\">\r\n	<h2>用户中心</h2>\r\n	<ul>\r\n	");
	if (pagename=="usercpprofile.aspx?action=avatar")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n	");
	}	//end if


	if (pagename=="usercptopic.aspx"||pagename=="usercppost.aspx"||pagename=="usercpdigest.aspx"||pagename=="usercpprofile.aspx"||pagename=="usercppreference.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpprofile.aspx\">个人资料</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpprofile.aspx\">个人资料</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpinbox.aspx"||pagename=="usercpsentbox.aspx"||pagename=="usercpdraftbox.aspx"||pagename=="usercppostpm.aspx"||pagename=="usercpshowpm.aspx"||pagename=="usercpannouncepm.aspx"||pagename=="usercpignorelist.aspx"||pagename=="usercpnotice.aspx"||pagename=="usercppmset.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpinbox.aspx\">短消息</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpinbox.aspx\">短消息</a></li>\r\n	");
	}	//end if


	if (pagename=="mytopics.aspx"||pagename=="myposts.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"mytopics.aspx\">我的帖子</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"mytopics.aspx\">我的帖子</a></li>\r\n	");
	}	//end if


	if (pagename=="myattachment.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"myattachment.aspx\">附件</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"myattachment.aspx\">附件</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpsubscribe.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpsubscribe.aspx\">收藏夹</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpsubscribe.aspx\">收藏夹</a></li>\r\n	");
	}	//end if


	if (config.Enablespace==1 && user.Spaceid>0)
	{


	if (pagename=="usercpspacepostblog.aspx"||pagename=="usercpspacemanageblog.aspx"||pagename=="usercpspaceeditblog.aspx"||pagename=="usercpspacelinklist.aspx"||pagename=="usercpspacelinkedit.aspx"||pagename=="usercpspacelinkadd.aspx"||pagename=="usercpspacecomment.aspx"||pagename=="usercpspacemanagecategory.aspx"||pagename=="usercpspacecategoryadd.aspx"||pagename=="usercpspacecategoryedit.aspx"||pagename=="usercpspacemanageattachment.aspx"||pagename=="usercpspaceset.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpspacemanageblog.aspx\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpspacemanageblog.aspx\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}	//end if


	}	//end if


	if (config.Enablealbum==1)
	{


	if (pagename=="usercpspacemanagealbum.aspx"||pagename=="usercpspacemanagephoto.aspx"||pagename=="usercpspacephotoadd.aspx"||pagename=="usercpeditphoto.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpspacemanagealbum.aspx\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpspacemanagealbum.aspx\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</a></li>\r\n	");
	}	//end if


	}	//end if


	if (pagename=="usercpcreditspay.aspx"||pagename=="usercpcreditstransfer.aspx"||pagename=="usercpcreditspayoutlog.aspx"||pagename=="usercpcreditspayinlog.aspx"   ||pagename=="usercpcreaditstransferlog.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpcreditspay.aspx\">积分</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpcreditspay.aspx\">积分</a></li>\r\n	");
	}	//end if


	if (pagename=="usercp.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercp.aspx\">用户组&权限</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercp.aspx\">用户组&权限</a></li>\r\n	");
	}	//end if


	if (pagename=="usercpnewpassword.aspx")
	{

	templateBuilder.Append("\r\n	<li class=\"current\"><a href=\"usercpnewpassword.aspx\">更改密码</a></li>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<li><a href=\"usercpnewpassword.aspx\">更改密码</a></li>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</ul>\r\n</div>\r\n");
	}	//end if



	templateBuilder.Append("\r\n	<div class=\"uc_main\">\r\n	<div class=\"uc_content\">\r\n		<h1>编辑日志</h1>\r\n		");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n<div class=\"uc_header\">\r\n");
	if (userid>0 && user.Spaceid>0)
	{

	templateBuilder.Append("\r\n	<ul class=\"f_tab\">\r\n		<li ");
	if (pagename=="usercpspacepostblog.aspx"||pagename=="usercpspacemanageblog.aspx"||pagename=="usercpspaceeditblog.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanageblog.aspx\"><span>管理日志</span></a></li>\r\n		<li ");
	if (pagename=="usercpspacelinklist.aspx"||pagename=="usercpspacelinkadd.aspx"||pagename=="usercpspacelinkedit.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspacelinklist.aspx\"><span>友情链接</span></a></li>\r\n		<li ");
	if (pagename=="usercpspacecomment.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspacecomment.aspx\"><span>管理评论</span></a></li>\r\n		<li  ");
	if (pagename=="usercpspacemanagecategory.aspx"||pagename=="usercpspacecategoryadd.aspx"||pagename=="usercpspacecategoryedit.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanagecategory.aspx\"><span>管理分类</span></a></li>\r\n		<li ");
	if (pagename=="usercpspacemanageattachment.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanageattachment.aspx\"><span>管理附件</span></a></li>\r\n		<li ");
	if (pagename=="usercpspaceset.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercpspaceset.aspx\"><span>基本设置</span></a></li>\r\n	</ul>\r\n");
	}	//end if

	templateBuilder.Append("\r\n</div>	\r\n");
	}	//end if




	if (page_err==0)
	{


	if (ispost)
	{


	templateBuilder.Append("	<div class=\"msgbox\">\r\n		<h1>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("　提示信息</h1>\r\n		<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n		");
	if (msgbox_url!="")
	{

	templateBuilder.Append("\r\n		<p><a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</div>");


	}
	else
	{

	templateBuilder.Append("\r\n			<form id=\"postform\" name=\"postpm\" method=\"post\" action=\"\">\r\n			<table cellspacing=\"0\" cellpadding=\"0\" class=\"tfm\" summary=\"个人资料\">\r\n				<tbody>\r\n				<tr>\r\n					<th>日志标题</th>\r\n					<td><input name=\"title\" type=\"text\" id=\"title\" size=\"40\" value=\"");
	templateBuilder.Append(spacepostsinfo.Title.ToString().Trim());
	templateBuilder.Append("\" maxlength=\"150\" class=\"txt\"/></td>\r\n				</tr>\r\n				<tr>\r\n					<th>日志类别</th>\r\n					<td>\r\n						");
	if (categoryslist.Rows.Count!=0)
	{


	int rows__loop__id=0;
	foreach(DataRow rows in categoryslist.Rows)
	{
		rows__loop__id++;

	templateBuilder.Append("\r\n							<input type=\"checkbox\" name=\"category\" value=\"" + rows["categoryid"].ToString().Trim() + "\"\r\n							");
	if (rows["checked"].ToString().Trim()!="-1")
	{

	templateBuilder.Append("\r\n							 checked=\"checked\"\r\n							");
	}	//end if

	templateBuilder.Append("\r\n							>" + rows["title"].ToString().Trim() + "&nbsp;\r\n							");
	}	//end loop

	templateBuilder.Append("\r\n							<a href=\"usercpspacecategoryadd.aspx\">新建日志类别</a>\r\n						");
	}
	else
	{

	templateBuilder.Append("\r\n							暂无日志类别,<a href=\"usercpspacecategoryadd.aspx\">新建日志类别</a>\r\n						");
	}	//end if

	templateBuilder.Append("\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<th>内容</th>\r\n					<td><!--<textarea id=\"DataTextarea\" cols=\"80\" rows=\"20\" name=\"DataTextarea\" class=\"txtarea\">");
	templateBuilder.Append(spacepostsinfo.Content.ToString().Trim());
	templateBuilder.Append("</textarea>-->\r\n                    <div id=\"blogtexteditor\"></div>\r\n                    </td>\r\n				</tr>\r\n				<tr>\r\n					<th>上传文件</th>\r\n					<td><iframe width=\"80%\" height=\"40\" id=\"checkveriframe\" allowTransparency=\"true\" style=\"border-width: 0px; margin: 0px;\" frameborder=\"0\" scrolling=\"no\" src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/uploadfile.aspx\"></iframe><div id=\"postattachfile\" style=\"border: 0px; display: block;\"></div></td>\r\n				</tr>\r\n				");
	if (enabletag)
	{

	templateBuilder.Append("\r\n				<tr>\r\n					<th>标签(Tags)</th>\r\n					<td>\r\n						<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n						<script type=\"text/javascript\" src=\"javascript/post_editor.js\"></");
	templateBuilder.Append("script>\r\n						<input type=\"text\" name=\"tags\" id=\"tags\" value=\"");
	templateBuilder.Append(spaceposttags.ToString());
	templateBuilder.Append("\" size=\"55\" class=\"txt\"/><input type=\"button\" onclick=\"relatekw($('title').value, dntEditor.GetText());\" value=\"可用标签\"/>(用空格隔开多个标签，最多可填写 5 个)\r\n					</td>\r\n				</tr>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n				<tr>\r\n					<th>发布类型</th>\r\n					<td><input type=\"radio\" name=\"poststatus\" value=\"1\"\r\n						");
	if (spacepostsinfo.PostStatus==1)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />直接发布\r\n						<input type=\"radio\" name=\"poststatus\" value=\"0\"	\r\n						");
	if (spacepostsinfo.PostStatus==0)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />放入草稿箱\r\n						<input type=\"radio\" name=\"poststatus\" value=\"2\"\r\n						");
	if (spacepostsinfo.PostStatus==2)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />私有<br />\r\n						<label for=\"user\" class=\"labelshort\">评论类型:</label>\r\n						<input type=\"radio\" name=\"commentstatus\" value=\"1\"\r\n						");
	if (spacepostsinfo.CommentStatus==1)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />不允许评论\r\n						<input type=\"radio\" name=\"commentstatus\" value=\"0\"\r\n						");
	if (spacepostsinfo.CommentStatus==0)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />允许匿名评论\r\n						<input name=\"commentstatus\" type=\"radio\" value=\"2\"\r\n						");
	if (spacepostsinfo.CommentStatus==2)
	{

	templateBuilder.Append("\r\n							checked=\"checked\"\r\n						");
	}	//end if

	templateBuilder.Append(" />仅允许注册用户评论\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<th></th>\r\n					<td>\r\n						<button type=\"submit\" name=\"Submit\" id=\"postsubmit\" onclick=\"return checkBlog();\" class=\"pn\"><span>确定</span></button>[完成后可按Ctrl+Enter提交]\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n			</table>\r\n			</form>\r\n			<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n            <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/simplyeditor.js\" reload=\"1\"></");
	templateBuilder.Append("script>\r\n			<script type=\"text/javascript\">\r\n			    var titleEditor;\r\n			    if (titleEditor == null) {\r\n			        titleEditor = new SimplyEditor('blogtext', 'blogtexteditor', '");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("', '");
	templateBuilder.Append(blogcontent.ToString());
	templateBuilder.Append("', '600', '10');\r\n			    }\r\n\r\n//				var dntEditor;\r\n//				function CreateEditor()\r\n//				{\r\n//					dntEditor = new DNTeditor('DataTextarea', '90%', '250', $('DataTextarea').value);\r\n//					dntEditor.Style = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/editor.css\";\r\n//					dntEditor.BasePath = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("';\r\n//					dntEditor.ReplaceTextarea();\r\n//				}\r\n\r\n//				function PrepareSave()\r\n//				{\r\n//					$('DataTextarea').value = dntEditor.GetHtml();\r\n//				}\r\n\r\n//				function validate(theform)\r\n//				{\r\n//				   PrepareSave();\r\n//				   return true;\r\n//				}\r\n\r\n//				CreateEditor();\r\n			</");
	templateBuilder.Append("script>\r\n			<script type=\"text/javascript\" src=\"javascript/template_spaceblog.js\"></");
	templateBuilder.Append("script>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n	");
	}
	else
	{


	templateBuilder.Append("<div class=\"msgbox error_msg\">\r\n	<h3>错误提示</h3>\r\n	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n	<p class=\"errorback\">\r\n		<script type=\"text/javascript\">\r\n			if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n			{\r\n				document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|  \");\r\n			}\r\n		</");
	templateBuilder.Append("script>\r\n		&nbsp; &nbsp; <a href=\"forumindex.aspx\">论坛首页</a>\r\n		");
	if (usergroupid==7)
	{

	templateBuilder.Append("\r\n		 &nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"login.aspx\">登录</a>&nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</p>\r\n</div>");


	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n	</div>\r\n</div\r\n");

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
