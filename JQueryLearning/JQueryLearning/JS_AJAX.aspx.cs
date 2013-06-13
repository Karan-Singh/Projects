using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class JS_AJAX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (ScriptManager1.IsInAsyncPostBack)
            {
                Label1.Text = "Ajax postback at : " + DateTime.Now;
                Label2.Text = "Ajax postback at : " + DateTime.Now;
            }
            else
            {
                Label1.Text = "Standard postback at : " + DateTime.Now;
                Label2.Text = "Standard postback at : " + DateTime.Now;
            }

            //Label3.Text = Request.Params.Get("__EVENTTARGET");

        }
    }
}
