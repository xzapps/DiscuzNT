<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SynCodeGet.aspx.cs" Inherits="Discuz.Web.SynCodeGet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>服务器端代码高亮</title>
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
