using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace JQueryLearning
{
    public partial class Mask_CC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mystring = "342342341249876";
            string last4 = Regex.Match(mystring, @".{4}\Z").Value;
            Response.Write(last4);
        }
    }
}