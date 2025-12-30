<%@ Page Language="C#" %>
  <%@ Import Namespace="ActiproSoftware.CodeHighlighter" %>
  <%@ Import Namespace="System.Reflection" %>
  <%@ Import Namespace="System.Web" %>
  <%@ Import Namespace="ActiproSoftware.ComponentModel" %>

  
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  
  <script runat="server">
      protected string ReturnCode;
      
     protected override void OnLoad(EventArgs e)
    {
        if (!IsPostBack)
         {
             //绑定列表，显示所有支持的语言        
             CodeHighlighterConfiguration config = (CodeHighlighterConfiguration)ConfigurationManager.GetSection("codeHighlighter");
             string[] keys = new string[config.LanguageConfigs.Keys.Count];
             config.LanguageConfigs.Keys.CopyTo(keys, 0);
             Array.Sort(keys);
             foreach (string key in keys)
             {
                 LanguageDropDownList.Items.Add(key);
             }
             LanguageDropDownList.SelectedIndex = LanguageDropDownList.Items.IndexOf(LanguageDropDownList.Items.FindByText("C#"));
         }
         
         base.OnLoad(e);
     }
 
     protected void Insert_Click(object sender, EventArgs e)
     {
         ActiproSoftware.CodeHighlighter.CodeHighlighter ch = new ActiproSoftware.CodeHighlighter.CodeHighlighter();
         ch.LanguageKey = LanguageDropDownList.SelectedValue;
         ch.Text = Code.Text;
         ch.Page = this;
         Type t = ch.GetType();
 
        //通过反射运行控件的处理代码的私有方法
        // MethodInfo method = t.GetMethod("a", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
         //method.Invoke(ch, null);
 
         //通过反射处理后的代码
        // FieldInfo field = t.GetField("i", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
        //ReturnCode = (string)field.GetValue(ch);
         CodeHighlighterEngine engine = new CodeHighlighterEngine();
         engine.OutliningEnabled = false;
         engine.LineNumberMarginVisible = false;
         CodeHighlighterConfiguration config = (CodeHighlighterConfiguration)ConfigurationManager.GetSection("codeHighlighter");
         ReturnCode = engine.GenerateHtmlInline(string.Empty, Code.Text, CodeHighlighter.GetLanguage(config, ch.LanguageKey));
 
         //将代码放入pre标签中以保持代码格式，并将代码以JavaScript字符串的格式编码，以输出到浏览器
         ReturnCode = JStringEncode("<pre style='background-color:#eeeeee;font-size:13px;BORDER:1px solid #CCCCCC;PADDING-RIGHT: 5px;PADDING-BOTTOM: 4px;PADDING-left: 4px;PADDING-TOP: 4px;WIDTH: 98%;word-break:break-all'>" + ReturnCode + "</pre>");
         ReturnPanel.Visible = true;
     }
         /// <summary>
         /// 替换掉字符串中的特殊字符，如把 " 替换成 \"
         /// </summary>
         /// <param name="str"></param>
         /// <returns></returns>
         public static string JStringEncode( string str )
         {
             if( str == null )
             {
                 return string.Empty;
             }
             //替换反斜杠
            str = str.Replace( @"\", @"\\" );
             //替换回车
             str = str.Replace( "\r", @"\r" );
             str = str.Replace( "\n", @"\n" );
             //替换 " 号
             str = str.Replace( "\"", "\\\"" );
             return str;
         }
 </script>
 
 <html xmlns="http://www.w3.org/1999/xhtml">
 
 <head id="Head1" runat="server">
     <title>插入源代码</title>
 </head>
 <body>
     <form id="form1" runat="server">
        <div>
            <table id="Table1" class="tb" cellspacing="0" cellpadding="3" border="0">
                 <tr>
                     <th align="right" style="width: 80px;">
                         编程语言:</th>
                     <td>
                         <asp:DropDownList ID="LanguageDropDownList" runat="server" Width="100px">
                         </asp:DropDownList></td>
                 </tr>
                 <!--tr>
                     <th align="right">
                         选项:</th>
                     <td>
                         <input id="chkLineNumberMarginVisible" type="checkbox" name="chkLineNumberMarginVisible" /><label
                            for="chkLineNumberMarginVisible">显示行号</label>&nbsp;<input id="chkOutliningEnabled"
                                 type="checkbox" name="chkOutliningEnabled" checked="checked" /><label for="chkOutliningEnabled">允许代码折叠</label>&nbsp;<input
                                     id="ckbIsCollapse" type="checkbox" name="ckbIsCollapse" /><label for="ckbIsCollapse">全部折叠</label>&nbsp;折叠标题:
                         <input name="txbCollapseText" type="text" id="txbCollapseText" style="width: 70" /></td>
                 </tr-->
                 <tr>
                     <th valign="top" align="right">
                         代码:</th>
                     <td>
                        <asp:TextBox ID="Code" runat="server" Height="200px" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;<asp:Button ID="Insert" runat="server" OnClick="Insert_Click" Text="确定" />&nbsp;&nbsp;&nbsp;<input
                            onclick="return window.close()" type="button" value="关闭"></td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="ReturnPanel" runat="server" Visible="false">
        <script language="javascript">
        //在Opener页面中插入处理后的Html文本
        window.opener.insertText("<% = ReturnCode %>");
        window.close();
        </script>
        </asp:Panel>
    </form>
</body>
</html>