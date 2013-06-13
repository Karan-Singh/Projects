using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class Timer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                //ViewState["time"] = DateTime.Now.AddHours(2.0);
                //ViewState["time"] = DateTime.Now.AddMinutes(11.0);
                ViewState["time"] = DateTime.Now.AddMinutes(65.0);
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            TimeSpan time1 = new TimeSpan();

            time1 = (DateTime)ViewState["time"] - DateTime.Now;

            if (time1.TotalSeconds <= 0)
            {
                Label1.Text = "TimeOut!";                
            }
            else
            {
                if (time1.TotalMinutes > 59)
                {
                    Label1.Text = string.Format("{0}:{1:D2}:{2:D2}",
                                    time1.Hours,
                                    time1.Minutes,
                                    time1.Seconds);
                }
                else
                {
                    Label1.Text = string.Format("{0:D2}:{1:D2}",                                    
                                    time1.Minutes,
                                    time1.Seconds);
                }
            }
        }

        protected void btn11_Click(object sender, EventArgs e)
        {
            lbl2.Text += "<br />Hit time:- "+ Label1.Text;
        }


    }
}
