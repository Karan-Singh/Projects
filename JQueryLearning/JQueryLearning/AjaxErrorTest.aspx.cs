using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class AjaxErrorTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            object b = null;
            lbl1.Text = b.ToString();
        }

        protected void OnAsyncPostBackError_Method(object sender, AsyncPostBackErrorEventArgs e)
        {
            ScriptManager1.AsyncPostBackErrorMessage = "Sorry for the Error in Ajax - " + e.Exception.Message;
        }
    }
}
