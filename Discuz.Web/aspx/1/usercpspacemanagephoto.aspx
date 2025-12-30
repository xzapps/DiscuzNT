<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.usercpphotomanage" %>
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



	templateBuilder.Append("\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n       <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo;  <a href=\"usercp.aspx\">用户中心</a>  &raquo;  <a href=\"usercpspacemanagealbum.aspx\">管理");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("</a>  &raquo;  <strong>管理图片</strong>\r\n	</div>\r\n</div>\r\n<div class=\"wrap uc cl\">\r\n	");

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



	templateBuilder.Append("\r\n	<div class=\"uc_main\">\r\n	<div class=\"uc_content\">\r\n	<h1 class=\"u_t\">管理图片</h1>\r\n");
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

	templateBuilder.Append("\r\n	<form id=\"photolist\" name=\"photolist\" action=\"\" method=\"post\">\r\n	<h3>");
	templateBuilder.Append(currentalbumname.ToString());
	templateBuilder.Append("(<strong style=\"color:#000;font-weight:bold;\">");
	templateBuilder.Append(photocount.ToString());
	templateBuilder.Append("</strong>)</h3>\r\n	<ul id=\"photo\">\r\n	    ");
	if (photocount>0)
	{


	int singlePhotoInfo__loop__id=0;
	foreach(DataRow singlePhotoInfo in photoList.Rows)
	{
		singlePhotoInfo__loop__id++;

	templateBuilder.Append("\r\n		<li>\r\n			<table cellspacing=\"0\" cellpadding=\"0\" summary=\"管理相片\">\r\n			<tr>\r\n				<td class=\"photo_img\" style=\"vertical-align:bottom;height:170px;\">\r\n					<a href='showphoto.aspx?photoid=" + singlePhotoInfo["photoid"].ToString().Trim() + "' target='_blank'>\r\n					<img src='" + singlePhotoInfo["TFileName"].ToString().Trim() + "' border='0' title='" + singlePhotoInfo["Description"].ToString().Trim() + "' style=\"max-width: 150px; max-height: 150px;\"></a>\r\n					");
	if (singlePhotoInfo["isattachment"].ToString()=="1")
	{

	templateBuilder.Append("\r\n					<span style='position:relative;left:-15px;top:0px;z-index:1'><img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/album/images/attphoto.gif' width='30' height='37' border='0' title=\"来自附件\"></span>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type='checkbox' name='photoid' value='" + singlePhotoInfo["PhotoId"].ToString().Trim() + "' /> " + singlePhotoInfo["PhotoOrder"].ToString().Trim() + "&nbsp;&nbsp; <a href=\"usercpeditphoto.aspx?photoid=" + singlePhotoInfo["photoid"].ToString().Trim() + "\">编辑</a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"font-weight:700;\">" + singlePhotoInfo["title"].ToString().Trim() + "</td>\r\n			</tr>\r\n			<tr>\r\n				<td>时间：" + singlePhotoInfo["PostDate"].ToString().Trim() + "</td>\r\n			</tr>\r\n			</table>\r\n		</li>\r\n		");
	}	//end loop


	}
	else
	{

	templateBuilder.Append("\r\n		<div class=\"zerothreads\">暂无图片</div>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	</ul>\r\n	<hr class=\"solidline\"/>\r\n	<div class=\"cpbox s_clear\">\r\n		<div class=\"pages_btns\">\r\n		    ");
	if (pagecount>1)
	{

	templateBuilder.Append("\r\n			<div class=\"pages\">\r\n				");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append(" <em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em> \r\n			</div>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n			<input type=\"checkbox\" onclick=\"checkAll(this.checked,this.form)\" />全选&nbsp;&nbsp;\r\n			<a href=\"###\" onclick=\"return delePhoto($('photolist'))\">删除图片</a>&nbsp;&nbsp;\r\n			<a href=\"###\" onclick=\"if(changeAlbum($('photolist'))) $('photolist').submit();\">转移图片</a>到\r\n			<select name=\"alibumList\" id=\"alibumList\">\r\n			");
	int alibum__loop__id=0;
	foreach(DataRow alibum in albumList.Rows)
	{
		alibum__loop__id++;

	templateBuilder.Append("\r\n				<option value=\"" + alibum["albumid"].ToString().Trim() + "\">" + alibum["title"].ToString().Trim() + "</option>\r\n			");
	}	//end loop

	templateBuilder.Append("\r\n			</select>\r\n			&nbsp;&nbsp;\r\n			将\r\n			<select name=\"logoList\" id=\"logoList\">\r\n			");
	int logo__loop__id=0;
	foreach(DataRow logo in logoList.Rows)
	{
		logo__loop__id++;

	templateBuilder.Append("\r\n				<option value=\"" + logo["photoid"].ToString().Trim() + "\">" + logo["PhotoOrder"].ToString().Trim() + "</option>\r\n			");
	}	//end loop

	templateBuilder.Append("\r\n			</select>\r\n			<a href=\"###\" onclick=\"return setLogo($('photolist'))\">设置为封面</a>\r\n			&nbsp;&nbsp;<a href=\"usercpspacephotoadd.aspx?albumid=");
	templateBuilder.Append(albumid.ToString());
	templateBuilder.Append("\">增加图片</a>\r\n			<input type=\"hidden\" name=\"active\" id=\"active\" value=\"\" />\r\n		</div>\r\n	</div>\r\n	</form>\r\n\r\n	");
	}	//end if


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

	templateBuilder.Append("\r\n	</div>\r\n	</div>\r\n<script type=\"text/javascript\">\r\n	function checkAll(bCheck,theform)\r\n	{\r\n		for (var i = 0;i < theform.elements.length;i++)\r\n		{\r\n			var e = theform.elements[i];\r\n			if (e.name == \"photoid\")\r\n				e.checked = bCheck;\r\n		}\r\n	}\r\n	\r\n	function delePhoto(theform)\r\n	{\r\n		var checkPhoto = isCheckPhoto(theform);	\r\n		if(!checkPhoto)\r\n		{\r\n			alert(\"您没有选中所要删除的图片！\");\r\n			return false;\r\n		}\r\n		else\r\n		{\r\n			if(confirm(\"您真要删除下面所选图片吗？删除后将无法恢复！\"))\r\n			{\r\n				$(\"active\").value = \"delete\";\r\n				theform.submit();\r\n			}\r\n			else\r\n			{\r\n				return false;\r\n			}\r\n		}\r\n	}\r\n	\r\n	function changeAlbum(theform)\r\n	{\r\n		var checkPhoto = isCheckPhoto(theform);	\r\n		if(!checkPhoto)\r\n		{\r\n			alert(\"您没有选中所要转移的图片！\");\r\n			return false;\r\n		}\r\n		else\r\n		{\r\n			o = $(\"alibumList\");\r\n			if(confirm(\"您确认要将相册中所选图片转移到 \" + o.options[o.selectedIndex].text + \" 相册中吗？\"))\r\n			{\r\n				$(\"active\").value = \"change\";\r\n				return true;\r\n			}\r\n			else\r\n			{\r\n				return false;\r\n			}\r\n		}\r\n	}\r\n	\r\n	function setLogo(theform)\r\n	{\r\n		o = $(\"logoList\");\r\n		var currentablumname = '");
	templateBuilder.Append(currentalbumname.ToString());
	templateBuilder.Append("';\r\n		if (confirm(\"您确认要将 \" + o.options[o.selectedIndex].text + \" 图片设置为当前相册\\\"\" + currentablumname + \"\\\"的封面吗？\"))\r\n		{\r\n			$(\"active\").value = \"setlogo\";\r\n			theform.submit();\r\n		}\r\n		else\r\n		{\r\n			return false;\r\n		}\r\n	}\r\n	\r\n	function isCheckPhoto(theform)\r\n	{\r\n		var checkPhoto = false;\r\n		for (var i=0;i<theform.elements.length;i++)\r\n		{\r\n			var e = theform.elements[i];\r\n			if (e.name == \"photoid\" && e.checked)\r\n			{\r\n				return true;\r\n			}\r\n		}\r\n		return false;\r\n	}\r\n	\r\n</");
	templateBuilder.Append("script>\r\n</div>\r\n");

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
