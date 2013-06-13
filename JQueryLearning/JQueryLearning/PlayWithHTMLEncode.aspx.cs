using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class PlayWithHTMLEncode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string testStr = "Add Click (réservation d'hébergement) <script>alert('play');</script>";
            //testStr = HttpUtility.HtmlEncode(testStr);
           
            ltrDump.Text = testStr;
            
            anKite.InnerText = testStr;
            
            //anKite.InnerHtml = testStr;
        }
    }
}