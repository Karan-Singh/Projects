using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class PartialClassDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Coord nc = new Coord(10,20);
            Label1.Text =  nc.PrintCoord();
        }
    }

   public partial class Coord
    {
        public int x;
        public int y;
             
        public Coord(int a, int b)
        {
            this.x = a;
            this.y = b;
        }
    }

   public partial class Coord
   {
       public string PrintCoord()
       {
           return string.Format("Coordinates:- {0}, {1}", x, y);
       }
   }

}
