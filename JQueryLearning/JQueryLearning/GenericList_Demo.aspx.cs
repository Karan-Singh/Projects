using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class GenericList_Demo : System.Web.UI.Page
    {
        string _text = "Hello world demo for the string operation";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            Label3.Text = "";
            System.Diagnostics.Stopwatch myWatch = new System.Diagnostics.Stopwatch();
            myWatch.Start();
            
            for (int x = 0; x < 100000; x++)
            {
                sb.Append(_text);
            }

            //Label3.Text = sb.ToString();

            myWatch.Stop();
            Label1.Text = myWatch.ElapsedMilliseconds.ToString() + " ms";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<string> gl = new List<string>();

            Label3.Text = "";

            System.Diagnostics.Stopwatch myWatch = new System.Diagnostics.Stopwatch();
            myWatch.Start();

            for (int x = 0; x < 100000; x++)
            {
                gl.Add(_text);
            }

            Label3.Text =  string.Join("", gl.ToArray());

            //for (int x = 0; x < 100000; x++)
            //{
            //    Label3.Text += gl[x];
            //}
            
            myWatch.Stop();
            Label2.Text = myWatch.ElapsedMilliseconds.ToString() + " ms";
        }
    }
}
