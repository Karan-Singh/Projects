using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class JS_AJAX_Analysis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetCurrectTime()
        {
            return "Coming from WebMethod: " + DateTime.Now.ToLongTimeString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Coming from AJAX Postback: " + DateTime.Now.ToLongTimeString();
        }
    }
}
