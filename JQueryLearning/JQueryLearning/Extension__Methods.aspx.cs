using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JQueryLearning
{
    public partial class Extension__Methods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int myint = 12345678;
            const string ADD_BREAK = "<br />";

            dvInfo.InnerHtml += myint.ReverseDigits() + ADD_BREAK;
            dvInfo.InnerHtml += MyExtensions.ReverseDigits(myint) + ADD_BREAK;

            string s = "Hello";
            dvInfo.InnerHtml += s.GetDefiningAssembly() + ADD_BREAK;

            myCalc mc = new myCalc();
            dvInfo.InnerHtml += mc.Add(22, 33) + ADD_BREAK;
            dvInfo.InnerHtml += (mc.Subtract(10, 2)).ToString() + ADD_BREAK;

            Point pct = new Point(PointColor.bloodred) { X = 20, Y = 40 };            
            dvInfo.InnerHtml += pct.ToString() + ADD_BREAK;

            Rectangle myRect = new Rectangle { TopLeft = new Point { X = 10, Y = 15 }, 
                                               BottomRight = new Point { X = 20, Y = 25 } };
            dvInfo.InnerHtml += myRect.ToString() + ADD_BREAK;

            List<Rectangle> mylistofrectangles = new List<Rectangle>
            {
                new Rectangle{ TopLeft = new Point{X = 10, Y=20}, BottomRight= new Point{X = 20, Y=30}},
                new Rectangle{ TopLeft = new Point{X = 11, Y=21}, BottomRight= new Point{X = 22, Y=32}}
            };

            foreach (var r in mylistofrectangles)
            {
                dvInfo.InnerHtml += r + ADD_BREAK;
            }
        }
    }

    public class myCalc : IBasicMath
    {
        public int Add(int x, int y)
        {
            return x + y;
        }

        //public int Subtract(int x, int y)
        //{
        //    return 100;
        //}
    }

    public enum PointColor {lightblue, bloodred, gold}

    public class Point
    {
        private int xPos, yPos;
        private PointColor pc;

        public int X
        {
            get { return xPos; }
            set { xPos = value; }
        }
        public int Y
        {
            get { return yPos; }
            set { yPos = value; }
        }

        public Point() { }
        public Point(PointColor pcx)
        { pc = pcx; }
        public Point(int x, int y)
        {
            xPos = x;
            yPos = y;
            pc = PointColor.gold;
        }

        public override string ToString()
        {
            return string.Format("[{0}, {1}, Color = {2}]", xPos, yPos, pc);
        }
    }

    public class Rectangle
    {
        private Point topLeft = new Point();
        private Point bottomRight = new Point();

        public Point TopLeft
        {
            get { return topLeft; }
            set { topLeft = value; }
        }

        public Point BottomRight
        {
            get { return bottomRight; }
            set { bottomRight = value; }
        }

        public override string ToString()
        {
          return string.Format("[TopLeft: {0}, {1}, BottomRight: {2}, {3}]", topLeft.X, topLeft.Y, bottomRight.X, bottomRight.Y);
        }

    }

}