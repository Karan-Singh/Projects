using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics.Contracts;

namespace JQueryLearning
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sample s = new Sample(10,"hello");
            //Sample s = new Sample(10, "");
            Response.Write(s.ShowNumber());
        }
    }

    public partial class Sample
    {
        int z; string s;

        public Sample(int x, string str)
        {
            Contract.Requires(str != "","Given string is blank!!");
            //Contract.Requires<ArgumentException>(str != "", "String is absent!!");
            z = x;            
            s = str;
        }

        public string ShowNumber()
        {
            return "Value is " + z;
        }

    }
}
