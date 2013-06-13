using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;

namespace JQueryLearning
{
    public partial class DemoFormatMask : System.Web.UI.Page
    {       

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlString MASK_UF_UTL_FORMATCURRENCY = new SqlString("{0:#,##0.00##;(#,##0.00##);0.00##}");
            
            MASK_UF_UTL_FORMATCURRENCY = new SqlString("{0:#,##0.00##; -#,##0.00##; 0.00##}");

            SqlMoney sm = -700;
            ltrValue.Text = string.Format(MASK_UF_UTL_FORMATCURRENCY.Value, sm.Value);

            sm = 700;
            ltrValue.Text += "<br />" + string.Format(MASK_UF_UTL_FORMATCURRENCY.Value, sm.Value);
        }
    }
}