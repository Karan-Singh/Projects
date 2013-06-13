using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class Sample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string viewStateString = Request.Form["__VIEWSTATE"];
            byte[] stringBytes = Convert.FromBase64String(viewStateString);

            string decodedValue = System.Text.Encoding.ASCII.GetString(stringBytes);
            Response.Write(decodedValue);
        }
    }
}
