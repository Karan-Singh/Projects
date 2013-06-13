using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class ViewStatePage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //label1.Text = "Hello";
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //label1.Text = DateTime.Now.ToLongDateString();
        }

        protected override void OnInit(EventArgs e)
        {
            //TextBox t1 = new TextBox(); 
            //t1.ID = "txtName";            
            //t1.Text = "Enter ur name";
            //this.form1.Controls.Add(t1);

            Control c = this.ParseControl("Enter Your Name: <asp:textbox id='txtFName' runat='server' />");
            this.form1.Controls.Add(c);

            //DateTime start = DateTime.Now;
            //for (int i = 0; i < 100000; i++)
            //{
            //    c = this.ParseControl("Enter your name: <asp:TextBox id='txtFirstName' runat='server'/>");
            //}
            //DateTime end = DateTime.Now;
            //Response.Write((end - start).TotalSeconds);

            base.OnInit(e);
        }
    }
}
