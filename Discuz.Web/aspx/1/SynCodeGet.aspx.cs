using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ActiproSoftware.CodeHighlighter;
using System.Configuration;
using System.Reflection;
using ActiproSoftware.SyntaxEditor;

namespace Discuz.Web
{
    public partial class SynCodeGet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            //ActiproSoftware.CodeHighlighter.CodeHighlighter ch = new ActiproSoftware.CodeHighlighter.CodeHighlighter();
            //ch.LanguageKey = LanguageDropDownList.SelectedValue;
            //ch.Text = Code.Text;
            //ch.Page = this;
            //Type t = ch.GetType();

            ////通过反射运行控件的处理代码的私有方法
            //MethodInfo method = t.GetMethod("a", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
            //method.Invoke(ch, null);

            ////通过反射处理后的代码
            //FieldInfo field = t.GetField("i", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
            //ReturnCode = (string)field.GetValue(ch);
            string lang = LanguageDropDownList.SelectedValue;
            string code = Code.Text;
            
            ReturnCode = BuildCode(lang,code,false);

            //将代码放入pre标签中以保持代码格式，并将代码以JavaScript字符串的格式编码，以输出到浏览器
            ReturnCode = JStringEncode("<pre style='background-color:#eeeeee;font-size:13px;BORDER:1px solid #CCCCCC;PADDING-RIGHT: 5px;PADDING-BOTTOM: 4px;PADDING-left: 4px;PADDING-TOP: 4px;WIDTH: 98%;word-break:break-all'>" + ReturnCode + "</pre>");
            ReturnPanel.Visible = true;
        }

        private string BuildCode(string langStr, string code, bool isShowLineNum)
        {
            //ActiproSoftware.SyntaxEditor.SyntaxLanguage  lang = null;
            ////尝试从缓存获取配置节
            //CodeHighlighterConfiguration config = HttpContext.Current.Cache["CodeHighlighterConfig"] as CodeHighlighterConfiguration;
            //if (config == null)
            //{
            //    //缓存不存在，重新从 web.config 获取并保存缓存
            //    config = (CodeHighlighterConfiguration)ConfigurationManager.GetSection("codeHighlighter");
            //    HttpContext.Current.Cache.Insert("CodeHighlighterConfig", config);
            //}
            ////获取语言
            //foreach (string key in config.LanguageConfigs.Keys)
            //{
            //    if (key.ToLower() == langStr.ToLower())
            //    {
            //        lang = CodeHighlighter.GetLanguage(config, key);
            //        break;
            //    }
            //}
            ////不明语言，不理会返回
            //if (lang == null)
            //    return code;
            //CodeHighlighterEngine engine = new CodeHighlighterEngine();
            //engine.OutliningEnabled = false;
            //engine.LineNumberMarginVisible = isShowLineNum;
            //return engine.GenerateHtmlInline(string.Empty, code, lang);

            return "";
        }

        /// <summary>
        /// 替换掉字符串中的特殊字符，如把 " 替换成 \"
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string JStringEncode(string str)
        {
            if (str == null)
            {
                return string.Empty;
            }
            //替换反斜杠
            str = str.Replace(@"\", @"\\");
            //替换回车
            str = str.Replace("\r", @"\r");
            str = str.Replace("\n", @"\n");
            //替换 " 号
            str = str.Replace("\"", "\\\"");
            return str;
        }

        public string ReturnCode { get; set; }
    }
}