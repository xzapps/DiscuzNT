<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.usercpprofile" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2013/11/19 13:52:54.
		本页面代码由Discuz!NT模板引擎生成于 2013/11/19 13:52:54. 
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



	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(config.Jqueryurl.ToString().Trim());
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    jQuery.noConflict();\r\n</");
	templateBuilder.Append("script>\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"usercpprofile.aspx\">用户中心</a> &raquo; <strong>编辑个人档案</strong>\r\n	</div>\r\n</div>\r\n<div class=\"wrap uc cl\">\r\n	");

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



	templateBuilder.Append("\r\n	<div class=\"uc_main\" style=\" margin-left:40px; width:730px;float:left;\">\r\n	<div class=\"uc_content\">\r\n		");
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

	templateBuilder.Append("\r\n		<form action=\"\" method=\"post\" ID=\"Form1\" enctype=\"multipart/form-data\">\r\n		");
	if (action=="avatar")
	{

	templateBuilder.Append("\r\n		    <div id=\"avatarchange\">\r\n			    <h1 class=\"u_t\">设置头像</h1>\r\n			    <input name=\"avatarchanged\" type=\"hidden\" value=\"0\" id=\"avatarchanged\" />\r\n			    <table cellspacing=\"0\" cellpadding=\"0\" class=\"tfm\" summary=\"设置头像\">\r\n			    <caption>\r\n				    <h2 class=\"xs2\">当前我的头像</h2>\r\n				    <p>如果你还没有设置自己的头像，系统会显示为默认头像，你需要自己上传一张新照片来作为自己的个人头像。</p>\r\n			    </caption>\r\n			    <tbody>\r\n			    <tr>\r\n				    <td>				\r\n                        <img id=\"avatar\" src=\"images/common/none.gif\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_medium.gif';\" />\r\n			       </td>\r\n			    </tr>\r\n			    </tbody>\r\n			    </table>\r\n			    <table cellspacing=\"0\" cellpadding=\"0\" class=\"tfm\">\r\n			    <caption>\r\n				    <h2 class=\"xs2\">设置我的新头像</h2>\r\n				    <p>请选择一个新照片进行上传编辑。头像保存后，你可能需要刷新一下本页面(按F5键)，才能查看最新的头像效果。</p>\r\n			    </caption>\r\n			    <tbody>\r\n			    <tr>\r\n				    <td>\r\n                        ");
	if (config.Silverlight==1)
	{

	templateBuilder.Append("\r\n					    <p class=\"sel_avt cl\">\r\n                            <a href=\"javascript:;\" onclick=\"$('avatarctrl').style.display = '';$('avatarSilverlight').style.display = 'none';\">Flash头像</a>\r\n					        <a href=\"#/MainPage\" onclick=\"$('avatarSilverlight').style.display = '';$('avatarctrl').style.display = 'none';\">超级银光头像</a>\r\n                        </p>\r\n                        ");
	}	//end if

	templateBuilder.Append("\r\n					    <div id=\"avatarctrl\">\r\n					    <script type=\"text/javascript\">                     \r\n						    document.write(AC_FL_RunContent('width', '540', 'height', '253', 'scale', 'exactfit', 'src', '");
	templateBuilder.Append(avatarFlashParam.ToString());
	templateBuilder.Append("', 'id', 'mycamera', 'name', 'mycamera', 'quality', 'high', 'bgcolor', '#ffffff', 'wmode', 'transparent', 'menu', 'false', 'swLiveConnect', 'true', 'allowScriptAccess', 'always'));\r\n					    </");
	templateBuilder.Append("script>\r\n					    </div>\r\n                        ");
	if (config.Silverlight==1)
	{

	templateBuilder.Append("\r\n					    <div id=\"avatarSilverlight\" style=\"clear:both;display:none; width:520px;height:300px;\">\r\n					     ");
							     string authToken=Discuz.Common.DES.Encode(oluserinfo.Olid.ToString() + "," + oluserinfo.Username.ToString(), oluserinfo.Password.Substring(0, 10)).Replace("+", "[");
						      
	templateBuilder.Append("                \r\n					    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/Avatar/silverlight.js\" reload=\"1\"></");
	templateBuilder.Append("script>               \r\n					    <div id=\"silverlightControlHost\" style=\"width:520px;height:300px;\">\r\n						    <object  id=\"avatarUpload\" data=\"data:application/x-silverlight-2,\" type=\"application/x-silverlight-2\" width=\"520px\" height=\"300px\">\r\n						      <param name=\"source\" value=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/Avatar/ClientBin/Discuz.WebCam.xap\"/>\r\n						      <param name=\"onError\" value=\"onSilverlightError\" />\r\n						      <param name=\"background\" value=\"white\" />\r\n						      <param name=\"minRuntimeVersion\" value=\"4.0.50401.0\" />\r\n						      <param name=\"onLoad\" value=\"onLoad\" />\r\n						      <param name=\"autoUpgrade\" value=\"true\" />\r\n						      <param name=\"initParams\" value=\"authToken=");
	templateBuilder.Append(authToken.ToString());
	if (FTPs.GetForumAvatarInfo.Allowupload==1)
	{

	templateBuilder.Append(",ftpUrl=");
	templateBuilder.Append(FTPs.GetForumAvatarInfo.Remoteurl.ToString().Trim());
	}	//end if

	templateBuilder.Append("\" />	\r\n						      <a href=\"http://go.microsoft.com/fwlink/?LinkID=149156&v=4.0.50401.0\" style=\"text-decoration:none\" target=\"_blank\">\r\n							      <img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/Avatar/avatar.jpg\" alt=\"安装微软Silverlight控件,即刻使用银光头像\" style=\"border-style:none\"/>\r\n						      </a>\r\n						    </object>\r\n					    </div>              \r\n					    <script type=\"text/javascript\">\r\n					       function onLoad(plugin, userContext, sender) {\r\n							    $(\"avatarUpload\").content.JavaScriptObject.CloseAvatar = updateavatar;//注册js方法以便silverlight调用\r\n					       }                  \r\n					    </");
	templateBuilder.Append("script>\r\n					    </div>\r\n                        ");
	}	//end if

	templateBuilder.Append("\r\n					    <script type=\"text/javascript\">\r\n					    function updateavatar(sender, args) {\r\n					       $('avatar').src = '");
	templateBuilder.Append(avatarImage.ToString());
	templateBuilder.Append("?random=1' + Math.random();\r\n					       $('avatarSilverlight').style.display = 'none';                      \r\n					    }\r\n					    updateavatar();\r\n					    </");
	templateBuilder.Append("script>\r\n			       </td>\r\n			    </tr>\r\n			    </tbody>\r\n			    </table>\r\n		    </div>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n		    <div id=\"u_cp\">\r\n		    <h1>个人资料</h1>\r\n		    ");

	if (userid>0)
	{

	templateBuilder.Append("\r\n<ul class=\"f_tab\">\r\n    ");
	if (pagename=="usercppreference.aspx")
	{

	templateBuilder.Append("\r\n        <li id=\"u_cpfile_li\"><a href=\"usercpprofile.aspx?action=cpfile\">基本资料</a></li>\r\n	    <li id=\"u_contact_li\"><a href=\"usercpprofile.aspx?action=contact\">联系方式</a></li>\r\n	    <li id=\"u_signature_li\"><a href=\"usercpprofile.aspx?action=signature\">签名</a></li>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n	    <li id=\"u_cpfile_li\"><a href=\"javascript:void(0);\" onclick=\"ShowPanel('u_cpfile');\">基本资料</a></li>\r\n	    <li id=\"u_contact_li\"><a href=\"javascript:void(0);\" onclick=\"ShowPanel('u_contact');\">联系方式</a></li>\r\n	    <li id=\"u_signature_li\"><a href=\"javascript:void(0);\" onclick=\"ShowPanel('u_signature');\">签名</a></li>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	<li ");
	if (pagename=="usercppreference.aspx")
	{

	templateBuilder.Append("class=\"cur_tab\"");
	}	//end if

	templateBuilder.Append("><a href=\"usercppreference.aspx\">论坛设置</a></li>\r\n</ul>\r\n");
	}	//end if



	templateBuilder.Append("\r\n		    <table cellspacing=\"0\" cellpadding=\"0\" class=\"tfm\" summary=\"个人资料\">\r\n		    <tbody id=\"u_cpfile\">\r\n			    <tr>\r\n				    <th>真实姓名</th>\r\n				    <td><input name=\"realname\" type=\"text\" id=\"realname\" value=\"");
	templateBuilder.Append(user.Realname.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>性别</th>\r\n				    <td>\r\n						<div class=\"ftid\">\r\n							<select name=\"gender\" id=\"gender\">\r\n								<option value=\"0\" ");
	if (user.Gender==0)
	{

	templateBuilder.Append("selected=\"selected\"");
	}	//end if

	templateBuilder.Append(">保密</option>\r\n								<option value=\"1\" ");
	if (user.Gender==1)
	{

	templateBuilder.Append("selected=\"selected\"");
	}	//end if

	templateBuilder.Append(">男</option>\r\n								<option value=\"2\" ");
	if (user.Gender==2)
	{

	templateBuilder.Append("selected=\"selected\"");
	}	//end if

	templateBuilder.Append(">女</option>\r\n							</select>\r\n						</div>\r\n						<script type=\"text/javascript\">simulateSelect('gender');</");
	templateBuilder.Append("script>\r\n				    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>生日</th>\r\n				    <td>\r\n					    <input name=\"bday\" type=\"text\"  class=\"txt\" id=\"bday\" size=\"10\" value=\"");
	templateBuilder.Append(user.Bday.ToString().Trim());
	templateBuilder.Append("\" style=\"cursor:default\" onClick=\"showcalendar(event, 'bday', 'cal_startdate', 'cal_enddate', '1980-01-01');\" readonly=\"readonly\" />&nbsp;<button type=\"button\" onclick=\"$('bday').value='';\" class=\"pn\"><span>清空</span></button>\r\n					    <input type=\"hidden\" name=\"cal_startdate\" id=\"cal_startdate\" size=\"10\"  value=\"1900-01-01\" />\r\n					    <input type=\"hidden\" name=\"cal_enddate\" id=\"cal_enddate\" size=\"10\"  value=\"");
	templateBuilder.Append(nowdatetime.ToString());
	templateBuilder.Append("\" />\r\n				    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>来自</th>\r\n				    <td>\r\n					    <input name=\"location\" type=\"text\" class=\"txt\" id=\"location\" class=\"colorblue\" value=\"");
	templateBuilder.Append(user.Location.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" />\r\n				    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>身份证号码</th>\r\n				    <td>\r\n					    <input name=\"idcard\" type=\"text\" id=\"idcard\" value=\"");
	templateBuilder.Append(user.Idcard.ToString().Trim());
	templateBuilder.Append("\" size=\"25\"  class=\"txt\"/>\r\n				    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>昵称</th>\r\n				    <td><input type=\"text\" class=\"txt\" size=\"25\" id=\"nickname\" name=\"nickname\" value=\"");
	templateBuilder.Append(user.Nickname.ToString().Trim());
	templateBuilder.Append("\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>自我介绍</th>\r\n				    <td>\r\n					    <textarea name=\"bio\" cols=\"50\" rows=\"4\" id=\"bio\" class=\"txtarea\" onclick=\"if (document.getElementById('bio').value.length > 500) {alert('自我介绍长度最大为500字'); return false;}\" >");
	templateBuilder.Append(user.Bio.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n				    </td>\r\n			    </tr>\r\n		    </tbody>\r\n		    <tbody id=\"u_contact\">\r\n			    <tr>\r\n				    <th>移动电话号码</th>\r\n				    <td><input name=\"mobile\" type=\"text\"  class=\"txt\" id=\"mobile\" value=\"");
	templateBuilder.Append(user.Mobile.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" /></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>固定电话号码</th>\r\n				    <td><input name=\"phone\" type=\"text\" id=\"phone\" value=\"");
	templateBuilder.Append(user.Phone.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" class=\"txt\" /></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>EMail</th>\r\n				    <td><input name=\"email\" type=\"text\" id=\"email\" value=\"");
	templateBuilder.Append(user.Email.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" class=\"txt\"/> \r\n					    <input name=\"showemail\" type=\"checkbox\" id=\"showemail\" value=\"0\" ");
	if (user.Showemail==0)
	{

	templateBuilder.Append("checked=\"checked\"");
	}	//end if

	templateBuilder.Append("/>Email保密\r\n				    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>主页</th>\r\n				    <td><input name=\"website\" type=\"text\" id=\"website\" value=\"");
	templateBuilder.Append(user.Website.ToString().Trim());
	templateBuilder.Append("\" size=\"25\" class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>MSN Messenger</th>\r\n				    <td><input name=\"msn\" type=\"text\" id=\"msn\" value=\"");
	templateBuilder.Append(user.Msn.ToString().Trim());
	templateBuilder.Append("\" size=\"25\"  class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>QQ</th>\r\n				    <td><input name=\"qq\" type=\"text\" id=\"qq\" value=\"");
	templateBuilder.Append(user.Qq.ToString().Trim());
	templateBuilder.Append("\" size=\"25\"  class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>Skype</th>\r\n				    <td><input name=\"skype\" type=\"text\" id=\"skype\" value=\"");
	templateBuilder.Append(user.Skype.ToString().Trim());
	templateBuilder.Append("\" size=\"25\"  class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>ICQ</th>\r\n				    <td><input name=\"icq\" type=\"text\" id=\"icq\" value=\"");
	templateBuilder.Append(user.Icq.ToString().Trim());
	templateBuilder.Append("\" size=\"25\"  class=\"txt\"/></td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th>Yahoo Messenger</th>\r\n				    <td><input name=\"yahoo\" type=\"text\" id=\"yahoo\" value=\"");
	templateBuilder.Append(user.Yahoo.ToString().Trim());
	templateBuilder.Append("\" size=\"30\"  class=\"txt\"/></td>\r\n			    </tr>\r\n		    </tbody>\r\n		    <tbody id=\"u_signature\">\r\n			    <tr>\r\n				    <th>签名</th>\r\n				    <td>\r\n                        <div id=\"signaturepreview\" style=\"display:none\" class=\"rulespreview\"></div>\r\n                            ");	string coloroptions = "Black,Sienna,DarkOliveGreen,DarkGreen,DarkSlateBlue,Navy,Indigo,DarkSlateGray,DarkRed,DarkOrange,Olive,Green,Teal,Blue,SlateGray,DimGray,Red,SandyBrown,YellowGreen,SeaGreen,MediumTurquoise,RoyalBlue,Purple,Gray,Magenta,Orange,Yellow,Lime,Cyan,DeepSkyBlue,DarkOrchid,Silver,Pink,Wheat,LemonChiffon,PaleGreen,PaleTurquoise,LightBlue,Plum,White";
	
	string seditorid = "signature";
	
	char comma = ',';
	
	templateBuilder.Append("\r\n                            <link href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/seditor.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n                            <div class=\"editor_tb\" style=\"width:70%\">\r\n                                <span class=\"y\">\r\n                                    <a id=\"viewsignature\" href=\"###\" onclick=\"preview('signaturepreview','signaturemessage')\">预览</a>		\r\n	                            </span>\r\n                                <div>\r\n                                    ");
	if (usergroupinfo.Allowsigbbcode==1)
	{

	templateBuilder.Append("\r\n		                                <a href=\"javascript:;\" title=\"粗体\" class=\"tb_bold\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[b]', '[/b]')\">B</a>\r\n		                                <a href=\"javascript:;\" title=\"颜色\" class=\"tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor\" onclick=\"showMenu(this.id, true, 0, 2)\">Color</a>\r\n		                                <div class=\"popupmenu_popup tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor_menu\" style=\"display: none;width:120px;\">\r\n			                                ");
	int colornamedes__loop__id=0;
	foreach(string colornamedes in coloroptions.Split(comma))
	{
		colornamedes__loop__id++;

	templateBuilder.Append("\r\n				                                <input type=\"button\" style=\"background-color: ");
	templateBuilder.Append(colornamedes.ToString());
	templateBuilder.Append("\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[color=");
	templateBuilder.Append(colornamedes.ToString());
	templateBuilder.Append("]', '[/color]')\" />");
	if (colornamedes__loop__id%8==0)
	{

	templateBuilder.Append("<br />");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n		                                </div>\r\n		                                <a href=\"javascript:;\" title=\"链接\" class=\"tb_link\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("url\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'url')\">Link</a>\r\n                                    ");
	}	//end if


	if (usergroupinfo.Allowsigimgcode==1)
	{

	templateBuilder.Append("\r\n                                        <a href=\"javascript:;\" title=\"图片\" class=\"tb_img\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("img\" onclick=\"seditor_menu('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', 'img')\">Image</a>\r\n                                    ");
	}	//end if

	templateBuilder.Append("\r\n                                </div>\r\n                        </div>\r\n					    <textarea id=\"signaturemessage\" rows=\"4\" cols=\"50\" name=\"signature\" class=\"txtarea\" style=\"width:70%;padding:0;\">");
	templateBuilder.Append(user.Signature.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n				    </td>\r\n                    <td>\r\n                        <p>Discuz!NT代码: ");
	if (usergroupinfo.Allowsigbbcode==1)
	{

	templateBuilder.Append("可用");
	}
	else
	{

	templateBuilder.Append("不可用");
	}	//end if

	templateBuilder.Append("</p>\r\n                        <p>图片代码: ");
	if (usergroupinfo.Allowsigimgcode==1)
	{

	templateBuilder.Append("可用");
	}
	else
	{

	templateBuilder.Append("不可用");
	}	//end if

	templateBuilder.Append("</p>\r\n                    </td>\r\n			    </tr>\r\n			    <tr>\r\n				    <th></th>\r\n				    <td><input name=\"sigstatus\" type=\"checkbox\" id=\"sigstatus\" value=\"1\" ");
	if (user.Sigstatus==1)
	{

	templateBuilder.Append(" checked=\"checked\"");
	}	//end if

	templateBuilder.Append("/>使用签名</td>\r\n			    </tr>\r\n		    </tbody>\r\n		    <tr>\r\n			    <th> </th>\r\n			    <td><button value=\"true\" id=\"editsubmit\" name=\"editsubmit\" type=\"submit\" class=\"pn\"><span>提交</span></button></td>\r\n		    </tr>\r\n		    </table>\r\n		    </div>\r\n		    <script type=\"text/javascript\">\r\n		        function InitProfilePanel() {\r\n		            $('u_cpfile').style.display = 'none';\r\n		            $('u_contact').style.display = 'none';\r\n		            $('u_signature').style.display = 'none';\r\n		            $('u_cpfile_li').className = '';\r\n		            $('u_contact_li').className = '';\r\n		            $('u_signature_li').className = '';\r\n		        }\r\n\r\n		        function ShowPanel(id) {\r\n		            InitProfilePanel();\r\n		            $(id).style.display = '';\r\n		            $(id + \"_li\").className = 'cur_tab';\r\n		        }\r\n		        var action = '");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("';\r\n		        action = action == '' ? 'u_cpfile' : 'u_' + action;\r\n\r\n		        ShowPanel(action);\r\n		    </");
	templateBuilder.Append("script>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n		</form>\r\n		");
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

	templateBuilder.Append("\r\n	</div>\r\n	</div>\r\n</div>\r\n<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_calendar.js\"></");
	templateBuilder.Append("script>\r\n");

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
