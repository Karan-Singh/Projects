using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace JQueryLearning
{
    public partial class UP_AsyncPostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
           
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (!Page.IsPostBack)
                ltr1.DataBind();
        }

        protected void btnPB_Click(object sender, EventArgs e)
        {
            runJQCode("alert('after a standard postback.')");
        }

        protected void btnPB_Async_Click(object sender, EventArgs e)
        {
            runJQCode("alert('after an async postback.')");
            ltr1.DataBind();
        }

        private void runJQCode(string jsCode)
        {
            ScriptManager sm = ScriptManager.GetCurrent(this);

            if (sm != null && sm.IsInAsyncPostBack)
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), Guid.NewGuid().ToString(), execJQCode(jsCode), true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), execJQCode(jsCode), true);
            }
        }

        protected void btnPB_Async_Fake_Click(object sender, EventArgs e)
        {
            string msg = execJQCode("alert('Hello')");
            ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), msg, true);
        }

        private string execJQCode(string jsCode)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("$(function(){ ");
            sb.AppendLine(jsCode);
            sb.AppendLine("});");

            return sb.ToString();
        }

        
    }
}