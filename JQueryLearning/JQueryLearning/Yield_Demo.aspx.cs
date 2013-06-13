using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class Yield_Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (int i in Power(2, 20))
            {
                Response.Write(string.Format("{0} <br />", i));
            }
        }

        private IEnumerable<object> Power(int number, int exponent)
        {
            int counter = 0;
            int result = 1;

            while (counter++ < exponent)
            {
                result *= number;
                yield return result;
            }
        }
    }
}