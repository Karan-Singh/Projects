using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class ViewStateContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["Page1"] = "Hello World :-)";
            Server.Transfer("AccessViewState.aspx");
        }

        public StateBag ReturnViewState()
        {
            return ViewState;
        }
    }
}
