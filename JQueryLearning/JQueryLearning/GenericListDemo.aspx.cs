using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class GenericListDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<string> lst1 = new List<string>() {"January","February","March"};
            List<string> lst2 = new List<string>() {"January", "April", "March" };
            List<string> lst3 = new List<string>() { "January", "April", "March", "May" };
            List<string> lst4 = new List<string>() { "Jan", "Feb", "Jan", "April", "Feb" };
            IEnumerable<string> lstNew = null;


            lstNew = lst1.Intersect(lst2, StringComparer.OrdinalIgnoreCase);
            PrintList(lstNew);
        }

        private void PrintList(IEnumerable<string> str)
        {
            foreach (var s in str)
            {
                Label1.Text += s + "<br/>";
            }

            Label1.Text += "*************************************";
        }
    }
}
