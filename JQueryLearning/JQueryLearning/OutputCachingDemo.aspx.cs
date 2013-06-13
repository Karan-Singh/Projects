using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class OutputCachingDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {      
          //Label1.Text = DateTime.Now.ToLongTimeString();

           Response.Write("<h1>Hello Cruel World</h1>");

           //HttpContext.Current.ApplicationInstance.CompleteRequest(); 
           //Response.End();
           Response.Write("<h1>Goodbye Cruel World</h1>");
        }
    }
}
