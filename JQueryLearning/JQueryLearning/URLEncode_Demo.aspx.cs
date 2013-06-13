using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class URLEncode_Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String MyURL;
            //MyURL = "http://www.mydomain.com/pagex.aspx?title=" + Server.UrlEncode("ASP.NET Examples");
            //MyURL += "&fname=" + Server.UrlEncode("karan Saini");

            //MyURL = "http://www.mydomain.com/pagex.aspx?title= ASP.NET Examples&fname=karan saini!@#$#$%%!@?";
            //MyURL = Server.UrlPathEncode(MyURL);

            //MyURL = "http://www.mydomain.com/pagex.aspx?title=" + Server.UrlEncode("ASP.NET Examples");
            //MyURL += "&fname=" + Server.UrlEncode("karan Saini &!@#$%^/");

            //MyURL = Server.UrlEncode("http://www.mydomain.com/pagex.aspx?title=ASP.NET Examples&fname=karan Saini &!@#$%^/");

            MyURL = "http://www.mydomain.com/pagex.aspx?" + Server.UrlEncode("title=ASP.NET Examples&fname=karan Saini &!@#$%^/");
            
            Response.Redirect(MyURL);
        }
    }
}
