using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace JQueryLearning
{
    public partial class BadgePrintingPosition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //DataTable dt = new DataTable();

            //dt.Columns.Add("CellPosition", typeof(string));

            //DataRow dr = dt.NewRow();
            //dr[0] = "1";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "2";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "3";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "4";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "5";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "6";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "7";
            //dt.Rows.Add(dr);

            //dr = dt.NewRow();
            //dr[0] = "8";
            //dt.Rows.Add(dr);

            ////Repeater1.DataSource = dt;
            ////Repeater1.DataBind();

            ////gv.DataSource = dt;
            ////gv.DataBind();

            ////GridView1.DataSourceID = "SqlDataSource1";
            ////BoundField field = new BoundField();
            ////field.HeaderText = "New Column";
            ////DataControlField col;
            ////col = field;
            ////GridView1.Columns.Add(col);
            ////GridView1.DataBind();
                        
            
            BuildPostionTable(4,2);
            
            
        }

        private void BuildPostionTable(int rows, int columns)
        {
            int counter = 1;
            //string checkedVal;
            StringBuilder sbTable = new StringBuilder();

            sbTable.Append("<table style='50%'>");

            for (int r = 0; r < rows; r++)
            {
                sbTable.Append("<tr>");

                for (int c = 0; c < columns; c++)
                {
                    //if (r == 0 && c == 0)
                    //{
                    //    checkedVal = " checked='checked'";
                    //}
                    //else
                    //{
                    //    checkedVal = "";
                    //}

                    //Ver 1
                    //sbTable.Append("<td><div style='float:left;padding-right:5px;'><input onclick='SavePosition(" + counter + ");' name='pos' type='radio' value='" + counter + "'" + checkedVal + "></input></div><div style='float:left;text-align:center;width:150px; height:100px;font-weight:bold; font-size:larger;border:1px solid gray;'><br /><br />" + counter + "<td>");
                    
                    //Ver 2
                    //sbTable.Append("<td><div style='float:left;padding-right:5px;'><input onclick='SavePosition(" + counter + ");' name='pos' type='radio' value='" + counter + "'" + checkedVal + "></input></div><div title='Select Badge Position' onclick='javascript:FlipAndSavePosition(this," + counter + ");' id='dPos" + counter + "' style='cursor:pointer;float:left;text-align:center;width:150px; height:100px;font-weight:bold; font-size:larger;border:1px solid gray;'><br /><br />" + counter + "<td>");
                    
                    //Ver 3
                    sbTable.Append("<td><div title='Select Badge Position' onclick='javascript:SavePosition(this," + counter + ");' id='dPos" + counter + "' style='cursor:pointer; text-align:center; width:150px; height:100px; font-weight:bold; font-size:larger;border:1px solid gray;'><br /><br />" + counter + "<td>");
                    
                    counter++;
                }

                sbTable.Append("</tr>");
            }

            sbTable.Append("</table>");

            Label l1 = new Label();
            l1.Text = sbTable.ToString();
            phPosition.Controls.Add(l1);
        }


        public void print_click(object o, EventArgs e)
        {
            lbl.Text = "Selected Badge Position:- " + Request.Form["hdPos"];
        }
    }
}
