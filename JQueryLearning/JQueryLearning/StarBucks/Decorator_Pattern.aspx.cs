using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning.StarBucks
{
    public enum CUPSIZE { GRANDE, TALL, VENTI };

    public partial class Decorator_Pattern : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //I need espresso.
            Beverage bv = new Espresso();
            dv1.InnerHtml = bv.getDescription() + ": $" + bv.Cost() + "<br />";

            //I need HouseBlend with dbl mocha and whip in Tall size.
            Beverage bv2 = new HouseBlend();
            bv2.setSize(CUPSIZE.TALL);
            bv2 = new Mocha(bv2);
            bv2 = new Mocha(bv2);
            bv2 = new Whip(bv2);
            dv1.InnerHtml += bv2.getDescription() + ": $" + bv2.Cost() + "<br />";
            //dv1.InnerHtml += bv2.GetType();
        }
    }

    public abstract class Beverage
    {     
        public CUPSIZE cupSz;
        public string description = "Unknown Beverage";     

        public virtual string getDescription()
        {
            return description;
        }

        public abstract double Cost();

        public void setSize(CUPSIZE cs)
        {
            cupSz = cs;
        }

        public CUPSIZE getSize()
        {
            return cupSz;
        }
    }

    
    public class Espresso : Beverage
    {
        public Espresso()
        {
            description = "Espresso";
        }

        public override double Cost()
        {
            return 1.99;
        }
    }

    public class HouseBlend : Beverage
    {
        public HouseBlend()
        {
            description = "House Blend Coffee";
        }   

        public override double Cost()
        {
            return 0.89;
        }
    }

    public abstract class CondimentDecorator : Beverage
    {
        public abstract override string getDescription();
    }

    
    public class Mocha : CondimentDecorator
    {
        Beverage bev;        

        public Mocha(Beverage b)
        {
            this.bev = b;
        }

        public override string getDescription()
        {
            return bev.getDescription() + ", Mocha";
        }

        public override double Cost()
        {
            return bev.Cost() + 0.2;
        }
    }

    public class Whip : CondimentDecorator
    {
        Beverage bev;

        public Whip(Beverage b)
        {
            this.bev = b;
        }

        public override string getDescription()
        {
            return bev.getDescription() + ", Whip";
        }

        
        public override double Cost()
        {
            double cost = bev.Cost();
            cost += 0.10;

            if (bev.getSize() == CUPSIZE.TALL)
            {
                cost += 0.15;   //Add more price for the bigger size.
            }

            return cost;
        }

        //public double GetWhipCost()
        //{
        //    return 0.10;
        //}

    }
}