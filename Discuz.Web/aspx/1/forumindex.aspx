<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.forumindex" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2013/11/19 13:53:11.
		本页面代码由Discuz!NT模板引擎生成于 2013/11/19 13:53:11. 
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



	templateBuilder.Append("\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if


	if (config.Isframeshow!=0)
	{

	templateBuilder.Append("\r\n		<script type=\"text/javascript\">\r\n		if(top == self) {\r\n			document.write('<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("frame.aspx?f=1\" target=\"_top\" class=\"frameswitch\">分栏模式<\\/a>');\r\n		}\r\n		</");
	templateBuilder.Append("script>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n		<a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" ");
	if (config.Forumjump==1)
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\"");
	}	//end if

	templateBuilder.Append(" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; 首页\r\n	</div>\r\n</div>\r\n\r\n<div id=\"navsecond\" style=\"float:left; margin-left:20px; width:165px;\">\r\n<!--分类 板块 开始-->\r\n<div>\r\n");	int lastforumlayer = -1;
	
	int lastcolcount = 1;
	
	int lastforumid = 0;
	
	int subforumcount = 0;
	
	int subcount = 0;
	

	int forum__loop__id=0;
	foreach(IndexPageForumInfo forum in forumlist)
	{
		forum__loop__id++;


	if (forum.Layer==0)
	{

	 subcount = 0;
	

	if (lastforumlayer>-1)
	{


	if (lastcolcount!=1)
	{


	if (subforumcount!=0)
	{

	for (int i = 0; i < lastcolcount-subforumcount; i++)
	{
		templateBuilder.Append("<td>&nbsp;</td>");
	}

	templateBuilder.Append("\r\n		</tr>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n		</table>\r\n		</div>\r\n	</div>\r\n		");
	}
	else
	{

	templateBuilder.Append("\r\n		</table>\r\n		</div>\r\n	</div>	\r\n		");
	}	//end if

	templateBuilder.Append("\r\n	<div id=\"ad_intercat_");
	templateBuilder.Append(lastforumid.ToString());
	templateBuilder.Append("\"></div>\r\n	");
	}	//end if


	if (forum.Colcount!=1)
	{

	 subforumcount = 0;
	

	}	//end if

	templateBuilder.Append("\r\n	<div>\r\n		<div>\r\n			<h2>\r\n				");	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n			</h2>\r\n		</div>\r\n		<div id=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" summary=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" class=\"fi\" style=\"");
	templateBuilder.Append(forum.Collapse.ToString().Trim());
	templateBuilder.Append("\">\r\n		<table cellspacing=\"0\" cellpadding=\"0\">\r\n		");	 lastforumlayer = 0;
	
	 lastcolcount = forum.Colcount;
	
	 lastforumid = forum.Fid;
	

	}
	else
	{

	 subcount = subcount+1;
	

		    if (maxsubcount > 0)
	        {
	            if (subcount > maxsubcount)
	                continue;
	        }
	        

	if (forum.Colcount==1)
	{

	templateBuilder.Append("\r\n		<tbody id=\"forum");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\">\r\n			<tr>\r\n				");	 aspxrewriteurl = this.ShowTopicAspxRewrite(forum.Lasttid,0);
	
	templateBuilder.Append("\r\n				<th ");
	if (config.Shownewposticon==1)
	{

	templateBuilder.Append("class=\"notopic");
	if (forum.Havenew=="new")
	{

	templateBuilder.Append(" new");
	}	//end if

	templateBuilder.Append("\"");
	}	//end if

	templateBuilder.Append(">\r\n					<span>\r\n					");
	if (forum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("\r\n						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n					");
	}
	else
	{

	templateBuilder.Append("\r\n						<a href=\"");
	templateBuilder.Append(forum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n					");
	}	//end if


	if (forum.Icon!="")
	{

	string fname = Utils.RemoveHtml(forum.Name);
	
	templateBuilder.Append("\r\n					    <img src=\"");
	templateBuilder.Append(forum.Icon.ToString().Trim());
	templateBuilder.Append("\" border=\"0\" hspace=\"5\" alt=\"");
	templateBuilder.Append(fname.ToString());
	templateBuilder.Append("\"/>\r\n				    ");
	}	//end if

	templateBuilder.Append("\r\n					");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n					</span>\r\n				</th>\r\n			</tr>\r\n		</tbody>\r\n	");
	}
	else
	{

	 subforumcount = subforumcount+1;
	
	double colwidth = 99.9 / forum.Colcount;
	

	if (subforumcount==1)
	{

	templateBuilder.Append("\r\n		<tbody>\r\n		<tr>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n			<th style=\"width:");
	templateBuilder.Append(colwidth.ToString());
	templateBuilder.Append("%;\" ");
	if (config.Shownewposticon==1)
	{

	templateBuilder.Append("class=\"notopic ");
	if (forum.Havenew=="new")
	{

	templateBuilder.Append("new");
	}	//end if

	templateBuilder.Append("\"");
	}	//end if

	templateBuilder.Append(">\r\n				<span>				\r\n				");
	if (forum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("\r\n					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n				");
	}
	else
	{

	templateBuilder.Append("\r\n					<a href=\"");
	templateBuilder.Append(forum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n				");
	}	//end if

	templateBuilder.Append("\r\n                ");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n				</span>\r\n			</th>\r\n");
	if (subforumcount==forum.Colcount)
	{

	templateBuilder.Append("\r\n		</tr>\r\n		</tbody>\r\n	");	 subforumcount = 0;
	

	}	//end if


	}	//end if

	 lastforumlayer = 1;
	
	 lastcolcount = forum.Colcount;
	

	}	//end if


	}	//end loop


	if (lastcolcount!=1 && subforumcount!=0)
	{

	for (int i = 0; i < lastcolcount-subforumcount; i++)
	{
		templateBuilder.Append("<td>&nbsp;</td>");
	}

	templateBuilder.Append("\r\n		</tr>\r\n");
	}	//end if

	templateBuilder.Append("\r\n	</table>\r\n	</div>\r\n</div>\r\n</div>\r\n<!--分类 板块 结束-->\r\n</div>\r\n\r\n\r\n<div id=\"maincontent\" style=\"width:743px;margin-left:10px;\">\r\n<script type=\"text/javascript\">\r\nvar postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\nvar postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\nvar disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n</");
	templateBuilder.Append("script>\r\n\r\n<div class=\"wrap cl forum\">\r\n\r\n		<span>公告:</span>	\r\n			");
	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	string announcementlastdatetime = ForumUtils.ConvertDateTime(announcement["starttime"].ToString().Trim());
	
	templateBuilder.Append("\r\n				<a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\" class=\"xg2\" title=\"" + announcement["title"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "<em>");
	templateBuilder.Append(announcementlastdatetime.ToString());
	templateBuilder.Append("</em></a>\r\n			");
	}	//end loop

	templateBuilder.Append("\r\n\r\n	<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/template_announcement.js\"></");
	templateBuilder.Append("script>\r\n\r\n    <div class=\"topic_num cl\">\r\n	今日:<em class=\"xg2\">");
	templateBuilder.Append(todayposts.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>昨日:<em class=\"xg2\">");
	templateBuilder.Append(yesterdayposts.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>最高:<em title=\"(");
	templateBuilder.Append(highestpostsdate.ToString());
	templateBuilder.Append(")\" class=\"xg2\">");
	templateBuilder.Append(highestposts.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>课程:<em class=\"xg2\">");
	templateBuilder.Append(totaltopic.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>交流:<em class=\"xg2\">");
	templateBuilder.Append(totalpost.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>同学:<em class=\"xg2\">");
	templateBuilder.Append(totalusers.ToString());
	templateBuilder.Append("</em><span class=\"pipe\">|</span>欢迎新同学:<a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(lastuserid).ToString());
	templateBuilder.Append("\" class=\"xg2\">");
	templateBuilder.Append(lastusername.ToString());
	templateBuilder.Append("</a>\r\n</div>\r\n\r\n");

	if (forumhotconfiginfo.Enable)
	{

	templateBuilder.Append("\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(cssdir.ToString());
	templateBuilder.Append("/forumhot.css\" type=\"text/css\" media=\"all\" />\r\n<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append(jsdir.ToString());
	templateBuilder.Append("/slide.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    function tabselect(id) {\r\n        $('hot_layer_' + id).style.display = ''\r\n        $('tab_li_' + id).className = 'current'\r\n        for (var i = 1; i <= 5; i++) {\r\n            if (i != id) {\r\n                if ($('tab_li_' + i)) {\r\n                    $('tab_li_' + i).className = 'switchNavItem'\r\n                    $('hot_layer_' + i).style.display = 'none';\r\n                }\r\n            }\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>\r\n<div class=\"main cl forumhot\">\r\n    <table width=\"740\" cellspacing=\"0\" cellpadding=\"0\">\r\n	    <tbody>\r\n	        <tr>\r\n		        <td>\r\n		            <div class=\"title_bar xg2\">\r\n			            <ul id=\"tabswi1_A\" class=\"tab_forumhot\">\r\n			            ");
	int forumhotiteminfo1__loop__id=0;
	foreach(ForumHotItemInfo forumhotiteminfo1 in forumhotconfiginfo.ForumHotCollection)
	{
		forumhotiteminfo1__loop__id++;


	if (forumhotiteminfo1.Id==1 && forumhotiteminfo1.Enabled==1)
	{

	templateBuilder.Append("\r\n				                <li class=\"switchNavItem\" index=\"2\" id=\"tab_li_");
	templateBuilder.Append(forumhotiteminfo1.Id.ToString().Trim());
	templateBuilder.Append("\"><a href=\"javascript:;\"  onmousemove=\"tabselect(");
	templateBuilder.Append(forumhotiteminfo1.Id.ToString().Trim());
	templateBuilder.Append(")\">");
	templateBuilder.Append(forumhotiteminfo1.Name.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n				            ");
	}	//end if


	if (forumhotiteminfo1.Id==2 && forumhotiteminfo1.Enabled==1)
	{

	templateBuilder.Append("\r\n				                <li class=\"switchNavItem\" index=\"2\" id=\"tab_li_");
	templateBuilder.Append(forumhotiteminfo1.Id.ToString().Trim());
	templateBuilder.Append("\"><a href=\"javascript:;\"  onmousemove=\"tabselect(");
	templateBuilder.Append(forumhotiteminfo1.Id.ToString().Trim());
	templateBuilder.Append(")\">");
	templateBuilder.Append(forumhotiteminfo1.Name.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n				            ");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			            </ul>\r\n		            </div>\r\n		            <div id=\"tabswi1_B\" class=\"pd cl\">\r\n		            ");
	int forumhotiteminfo2__loop__id=0;
	foreach(ForumHotItemInfo forumhotiteminfo2 in forumhotconfiginfo.ForumHotCollection)
	{
		forumhotiteminfo2__loop__id++;


	if (forumhotiteminfo2.Id!=6 && forumhotiteminfo2.Enabled==1)
	{


	if (forumhotiteminfo2.Datatype=="topics")
	{

	templateBuilder.Append("\r\n			                    <div class=\"newHotB\" name=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\" id=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\"  style=\"display:none\">	\r\n				                    ");
	int hottopic__loop__id=0;
	foreach(DataRow hottopic in ForumHots.GetTopicList(forumhotiteminfo2).Rows)
	{
		hottopic__loop__id++;

	string topicsname2 = Utils.RemoveHtml(hottopic["title"].ToString().Trim());
	
	string topicsname = forumhotiteminfo2.Topictitlelength>0?Utils.GetSubString(Utils.RemoveHtml(hottopic["title"].ToString().Trim()),forumhotiteminfo2.Topictitlelength*2,""):"";
	
	string forumsname = forumhotiteminfo2.Forumnamelength>0?Utils.GetSubString(Utils.RemoveHtml(hottopic["name"].ToString().Trim()),forumhotiteminfo2.Forumnamelength*2,""):"";
	
	 aspxrewriteurl = this.ShowTopicAspxRewrite(hottopic["tid"].ToString().Trim(),0);
	
	string aspxrewriteurl1 = this.ShowForumAspxRewrite(hottopic["fid"].ToString().Trim(),0);
	

	if (hottopic__loop__id==1)
	{

	int tid = TypeConverter.ObjectToInt(hottopic["tid"]);
	

	int firsttopic__loop__id=0;
	foreach(DataRow firsttopic in ForumHots.GetFirstPostInfo(tid,forumhotiteminfo2.Cachetimeout).Rows)
	{
		firsttopic__loop__id++;


	if (firsttopic["layer"].ToString().Trim()=="0")
	{

	string message = ForumHots.RemoveUbb(firsttopic["message"].ToString().Trim(),300);
	
	templateBuilder.Append("\r\n						                        <dl class=\"i_hot\">\r\n							                        <dt class=\"xg2\"><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\"  title=\"");
	templateBuilder.Append(topicsname2.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topicsname.ToString());
	templateBuilder.Append("</a></dt>\r\n							                        <dd>");
	templateBuilder.Append(message.ToString());
	templateBuilder.Append("</dd>\r\n						                        </dl>\r\n						                        ");
	}	//end if


	}	//end loop


	}
	else
	{


	if (hottopic__loop__id==8 || hottopic__loop__id==2)
	{

	templateBuilder.Append("\r\n					                        <ul class=\"hotlist\">\r\n					                        ");
	}	//end if

	templateBuilder.Append("					\r\n					                        <li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl1.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	if (forumhotiteminfo2.Forumnamelength>0)
	{

	templateBuilder.Append("【");
	templateBuilder.Append(forumsname.ToString());
	templateBuilder.Append("】");
	}	//end if

	templateBuilder.Append("</a><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" class=\"xg2\"  title=\"");
	templateBuilder.Append(topicsname2.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topicsname.ToString());
	templateBuilder.Append("</a></li>\r\n					                        ");
	if (hottopic__loop__id==7 || hottopic__loop__id==13)
	{

	templateBuilder.Append("\r\n					                        </ul>\r\n					                        ");
	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n				                </div>\r\n			                ");
	}	//end if


	if (forumhotiteminfo2.Datatype=="users")
	{

	templateBuilder.Append("\r\n			                    <div class=\"newHotB\" name=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\" id=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\" style=\"display:none\">	\r\n				                    ");
	int user__loop__id=0;
	foreach(ShortUserInfo user in ForumHots.GetUserList(forumhotiteminfo2.Dataitemcount,forumhotiteminfo2.Sorttype,forumhotiteminfo2.Cachetimeout,forumhotiteminfo2.Id))
	{
		user__loop__id++;

	 aspxrewriteurl = this.UserInfoAspxRewrite(user.Uid);
	

	if (user__loop__id%10==1 || user__loop__id==1)
	{


	if (user__loop__id==1)
	{

	templateBuilder.Append("\r\n							                    <ul class=\"hotlist cl one\">\r\n						                    ");
	}
	else
	{

	templateBuilder.Append("\r\n							                    <ul class=\"hotlist cl two\">\r\n						                    ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n					                    <li>\r\n					                        <em>\r\n					                        [\r\n					                        ");
	if (forumhotiteminfo2.Sorttype=="credits")
	{
	templateBuilder.Append(user.Credits.ToString().Trim());
	}	//end if


	if (forumhotiteminfo2.Sorttype=="posts"||forumhotiteminfo2.Sorttype=="today"||forumhotiteminfo2.Sorttype=="thisweek"||forumhotiteminfo2.Sorttype=="thismonth")
	{
	templateBuilder.Append(user.Posts.ToString().Trim());
	}	//end if


	if (forumhotiteminfo2.Sorttype=="digestposts")
	{
	templateBuilder.Append(user.Digestposts.ToString().Trim());
	}	//end if


	if (forumhotiteminfo2.Sorttype=="lastactivity")
	{
	templateBuilder.Append(user.Lastactivity.ToString().Trim());
	}	//end if


	if (forumhotiteminfo2.Sorttype=="joindate")
	{
	templateBuilder.Append(user.Joindate.ToString().Trim());
	}	//end if

	templateBuilder.Append("\r\n					                        ]\r\n					                        </em>\r\n					                        <img onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/common/noavatar_small.gif';\" src=\"");
	templateBuilder.Append(Avatars.GetAvatarUrl(user.Uid,AvatarSize.Small).ToString().Trim());
	templateBuilder.Append("\" width=\"16\" height=\"16\"><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(user.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n					                    </li>\r\n					                    ");
	if (user__loop__id%10==0)
	{

	templateBuilder.Append("\r\n					                    </ul>\r\n					                    ");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			                    </div>\r\n			                ");
	}	//end if


	if (forumhotiteminfo2.Datatype=="forums")
	{

	templateBuilder.Append("\r\n			                    <div class=\"newHotB\" name=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\" id=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo2.Id.ToString().Trim());
	templateBuilder.Append("\" style=\"display:none\">	\r\n				                    ");
	int foruminfo__loop__id=0;
	foreach(ForumInfo foruminfo in ForumHots.GetHotForumList(forumhotiteminfo2.Dataitemcount,forumhotiteminfo2.Sorttype,forumhotiteminfo2.Cachetimeout,forumhotiteminfo2.Id))
	{
		foruminfo__loop__id++;

	 aspxrewriteurl = this.ShowForumAspxRewrite(Utils.StrToInt(foruminfo.Fid, 0),0);
	

	if (foruminfo__loop__id%10==1 || foruminfo__loop__id==1)
	{


	if (foruminfo__loop__id==1)
	{

	templateBuilder.Append("\r\n							                    <ul class=\"hotlist cl one\">\r\n						                    ");
	}
	else
	{

	templateBuilder.Append("\r\n							                    <ul class=\"hotlist cl two\">\r\n						                    ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n					                        <li><em>\r\n					                        [\r\n					                        ");
	if (forumhotiteminfo2.Sorttype=="posts"||forumhotiteminfo2.Sorttype=="today"||forumhotiteminfo2.Sorttype=="thismonth")
	{
	templateBuilder.Append(foruminfo.Posts.ToString().Trim());
	}	//end if


	if (forumhotiteminfo2.Sorttype=="topics")
	{
	templateBuilder.Append(foruminfo.Topics.ToString().Trim());
	}	//end if

	templateBuilder.Append("\r\n                                            ]\r\n					                        </em><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(foruminfo.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n					                        </li>\r\n					                    ");
	if (foruminfo__loop__id%10==0)
	{

	templateBuilder.Append("\r\n					                    </ul>\r\n					                    ");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			                    </div>\r\n			                ");
	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n		            </div>\r\n		        </td>\r\n	        </tr>\r\n	    </tbody>\r\n    </table>\r\n</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<script type=\"text/javascript\">\r\n    for (var i = 1; i <= 5; i++) {\r\n        try {\r\n            $('hot_layer_' + i).style.display = ''\r\n            $('tab_li_' + i).className = 'current'\r\n            break;\r\n        }\r\n        catch (e) {\r\n            continue;\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");

	templateBuilder.Append("\r\n\r\n<br />\r\n");

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



	templateBuilder.Append("\r\n\r\n<br />\r\n\r\n\r\n\r\n<!--友情链接 开始-->\r\n");
	if (forumlinkcount>0)
	{

	templateBuilder.Append("\r\n	<div id=\"forumlinks\">\r\n    友情链接：	\r\n	");	bool forumlinkend = false;
	

	int forumlink__loop__id=0;
	foreach(DataRow forumlink in forumlinklist.Rows)
	{
		forumlink__loop__id++;


	if (forumlink__loop__id==1)
	{

	templateBuilder.Append("\r\n		<ul class=\"forumlinks\">	\r\n		");
	}	//end if


	if (forumlink["logo"].ToString().Trim()!="")
	{

	templateBuilder.Append("\r\n		<li style=\" width: 5em;\">\r\n			<a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\"><img src=\"" + forumlink["logo"].ToString().Trim() + "\" alt=\"" + forumlink["name"].ToString().Trim() + "\"  class=\"forumlink_logo\"/></a>\r\n			<h5><a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\">" + forumlink["name"].ToString().Trim() + "</a></h5>\r\n			<p>" + forumlink["note"].ToString().Trim() + "</p>\r\n		</li>\r\n		");
	}
	else if (forumlink["name"].ToString().Trim()!="$$otherlink$$")
	{

	templateBuilder.Append("\r\n		<li style=\" width: 5em;\">\r\n			<h5>\r\n				<a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\">" + forumlink["name"].ToString().Trim() + "</a>\r\n			</h5>\r\n			<p>" + forumlink["note"].ToString().Trim() + "</p>\r\n		</li>\r\n	");
	}
	else
	{


	if (forumlinkend==false)
	{

	templateBuilder.Append("\r\n		</ul>\r\n		");	 forumlinkend = true;
	

	}	//end if

	templateBuilder.Append("\r\n	<div class=\"" + forumlink["url"].ToString().Trim() + "\">\r\n	    <ul>\r\n		" + forumlink["note"].ToString().Trim() + "\r\n		</ul>\r\n	</div>\r\n	");
	}	//end if


	}	//end loop


	if (forumlinkend==false)
	{

	templateBuilder.Append("\r\n		</ul>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<!--友情链接 结束-->\r\n\r\n\r\n\r\n<!--在线情况 开始-->\r\n");
	if (config.Whosonlinestatus!=0 && config.Whosonlinestatus!=2)
	{

	templateBuilder.Append("\r\n<div id=\"online\">\r\n	<div>\r\n		<h3>\r\n			<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("onlineuser.aspx\">在线用户</a> - <em>");
	templateBuilder.Append(totalonline.ToString());
	templateBuilder.Append("</em> 人在线 ");
	if (showforumonline)
	{

	templateBuilder.Append("- ");
	templateBuilder.Append(totalonlineuser.ToString());
	templateBuilder.Append(" 会员<span id=\"invisible\"></span>, ");
	templateBuilder.Append(totalonlineguest.ToString());
	templateBuilder.Append(" 游客");
	}	//end if

	templateBuilder.Append("- 最高记录是 <em>");
	templateBuilder.Append(highestonlineusercount.ToString());
	templateBuilder.Append("</em> 于 <em>");
	templateBuilder.Append(highestonlineusertime.ToString());
	templateBuilder.Append("</em>\r\n			<em style=\"padding-left:10px;\">共<cite>");
	templateBuilder.Append(totalusers.ToString());
	templateBuilder.Append("</cite>位会员- 新会员:<a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(lastuserid).ToString());
	templateBuilder.Append("\" class=\"xg2\">");
	templateBuilder.Append(lastusername.ToString());
	templateBuilder.Append("</a></em>\r\n			");
	if (showforumonline==false)
	{

	templateBuilder.Append("\r\n			<em style=\"padding-left:10px;\"><a href=\"?showonline=yes#online\" class=\"xg2\">点击查看在线列表</a></em>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n		</h3>\r\n	</div>\r\n</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<!--在线情况 结束-->\r\n\r\n\r\n\r\n\r\n</div>\r\n");
	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n	<div id=\"styleswitcherhome_menu\" class=\"popupmenu_popup cl skin\" style=\"display: none;\">\r\n		<ul>\r\n		");
	templateBuilder.Append(templatelistboxoptionsforforumindex.ToString());
	templateBuilder.Append("\r\n		</ul>\r\n	</div>\r\n");
	}	//end if


	}	//end if


	if (config.Forumjump==1)
	{

	templateBuilder.Append("\r\n	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");
	}	//end if

	templateBuilder.Append("\r\n</div>\r\n\r\n\r\n\r\n\r\n    <div id=\"sidebar\" style=\"width:165px; float:left;\">\r\n    <div style=\" width:160px; height:300px; border:1px solid #ccc;\">\r\n        <h3>好学同学</h3>\r\n        ");
	int forumhotiteminfo3__loop__id=0;
	foreach(ForumHotItemInfo forumhotiteminfo3 in forumhotconfiginfo.ForumHotCollection)
	{
		forumhotiteminfo3__loop__id++;


	if (forumhotiteminfo3.Id==4 && forumhotiteminfo3.Enabled==1)
	{


	if (forumhotiteminfo3.Datatype=="users")
	{

	templateBuilder.Append("\r\n			                    <div class=\"newHotB\" name=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo3.Id.ToString().Trim());
	templateBuilder.Append("\" id=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo3.Id.ToString().Trim());
	templateBuilder.Append("\">	\r\n				                    ");
	int user__loop__id=0;
	foreach(ShortUserInfo user in ForumHots.GetUserList(forumhotiteminfo3.Dataitemcount,forumhotiteminfo3.Sorttype,forumhotiteminfo3.Cachetimeout,forumhotiteminfo3.Id))
	{
		user__loop__id++;

	 aspxrewriteurl = this.UserInfoAspxRewrite(user.Uid);
	

	if (user__loop__id%10==1 || user__loop__id==1)
	{


	if (user__loop__id==1)
	{

	templateBuilder.Append("\r\n							                    <ul class=\" cl one\">\r\n						                    ");
	}
	else
	{

	templateBuilder.Append("\r\n							                    <ul class=\" cl two\">\r\n						                    ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n					                    <li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(user.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n					                    </li>\r\n					                    ");
	if (user__loop__id%10==0)
	{

	templateBuilder.Append("\r\n					                    </ul>\r\n					                    ");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			                    </div>\r\n			                ");
	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n</div>\r\n        <br />\r\n\r\n        <div style=\" width:160px; height:300px; border:1px solid #ccc;\">\r\n\r\n         <h3>课程排行</h3>\r\n        ");
	int forumhotiteminfo4__loop__id=0;
	foreach(ForumHotItemInfo forumhotiteminfo4 in forumhotconfiginfo.ForumHotCollection)
	{
		forumhotiteminfo4__loop__id++;


	if (forumhotiteminfo4.Id==5 && forumhotiteminfo4.Enabled==1)
	{


	if (forumhotiteminfo4.Datatype=="forums")
	{

	templateBuilder.Append("\r\n			                    <div class=\"newHotB\" name=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo4.Id.ToString().Trim());
	templateBuilder.Append("\" id=\"hot_layer_");
	templateBuilder.Append(forumhotiteminfo4.Id.ToString().Trim());
	templateBuilder.Append("\">	\r\n				                    ");
	int foruminfo__loop__id=0;
	foreach(ForumInfo foruminfo in ForumHots.GetHotForumList(forumhotiteminfo4.Dataitemcount,forumhotiteminfo4.Sorttype,forumhotiteminfo4.Cachetimeout,forumhotiteminfo4.Id))
	{
		foruminfo__loop__id++;

	 aspxrewriteurl = this.ShowForumAspxRewrite(Utils.StrToInt(foruminfo.Fid, 0),0);
	

	if (foruminfo__loop__id%10==1 || foruminfo__loop__id==1)
	{


	if (foruminfo__loop__id==1)
	{

	templateBuilder.Append("\r\n							                    <ul class=\" cl one\">\r\n						                    ");
	}
	else
	{

	templateBuilder.Append("\r\n							                    <ul class=\" cl two\">\r\n						                    ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n					                        <li><em>\r\n					                        [\r\n					                        ");
	if (forumhotiteminfo4.Sorttype=="posts"||forumhotiteminfo4.Sorttype=="today"||forumhotiteminfo4.Sorttype=="thismonth")
	{
	templateBuilder.Append(foruminfo.Posts.ToString().Trim());
	}	//end if


	if (forumhotiteminfo4.Sorttype=="topics")
	{
	templateBuilder.Append(foruminfo.Topics.ToString().Trim());
	}	//end if

	templateBuilder.Append("\r\n                                            ]\r\n					                        </em><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(foruminfo.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n					                        </li>\r\n					                    ");
	if (foruminfo__loop__id%10==0)
	{

	templateBuilder.Append("\r\n					                    </ul>\r\n					                    ");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n			                    </div>\r\n			                ");
	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n\r\n                    </div>\r\n    </div>\r\n\r\n");

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



	templateBuilder.Append("\r\n");
	templateBuilder.Append(mediaad.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append(inforumad.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
