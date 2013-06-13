using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class JS_UpdatePanel_Persistence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            Label1.Text = "Its now " + DateTime.Now.ToLongTimeString();

        }
    }
}
