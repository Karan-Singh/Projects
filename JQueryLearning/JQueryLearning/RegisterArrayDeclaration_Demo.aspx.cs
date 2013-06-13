using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class RegisterArrayDeclaration_Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterArrayDeclaration("MyArr", "'Hello'");
            Page.ClientScript.RegisterArrayDeclaration("MyArr", "'John'");
            Page.ClientScript.RegisterArrayDeclaration("MyArr", "'Boy'");
        }
    }
}
