using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SingletonNS;
using FactoryNS;
using AbstractFactoryNS;
using BuilderNS;
using AbstractClassNS;

namespace JQueryLearning
{
    public partial class SingletonPattern : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SingleInstanceClass sic1, sic2;
            sic1 = SingleInstanceClass.Create();
            if (sic1 != null)
            {
                Label1.Text = "OK<br />";
            }


            sic2 = SingleInstanceClass.Create();
            if (sic2 == null)
            {
                Label1.Text += "NO MORE OBJECTS<br />";
            }          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Factory f1 = new Factory();
            IBase obj = f1.GetObject(2);
            Label1.Text = obj.DoIt();

            Label1.Text += Factory.GetObject().DoIt();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            IFactory fac = new ConcreteFactory2();
            IBaseAF obj = fac.getObj();
            Label1.Text = obj.DoIt();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Director d = new Director();
            
            IBuilder build = new BuilderB();
            Label1.Text = d.Construct(build);

            build = new BuilderA();
            Label1.Text += d.Construct(build);

            BuilderA a = new BuilderA();
            string s = a.DoBuilderA();
            
            c1 c = new c1();
            Label1.Text += c.AddNum(12, 12).ToString();
            Label1.Text += c.MultipleNum(12, 12).ToString();             
        }
    } 
}



namespace AbstractClassNS
{
    public abstract class Calculatable
    {
        public int MultipleNum(int a, int b)
        {
            return a * b;
        }

        public abstract int AddNum(int a, int b);        
    }

    public class c1 : Calculatable
    {
        public override int AddNum(int a, int b)
        {
            return a + b;            
        }
    }
}

namespace BuilderNS
{
    interface IBuilder
    {
        string DoIt();
    }

    interface IB1
    {
        string x1();
    }

    class BuilderA : IBuilder
    {
        public string DoIt()
        {
            return "Assemble a computer with mono monitor<br>";            
        }

        public string DoBuilderA()
        {
            return "Hello";
        }
    }

    class BuilderB : IBuilder
    {
        public string DoIt()
        {
            return "Assemble a computer with color monitor<br>";
        }
    }
    
    class Director
    {
        public string Construct(IBuilder builder)
        {
           return builder.DoIt();
        }
    }

}

namespace AbstractFactoryNS
{
    interface IBaseAF
    {
        string DoIt();
    }

    class derived1 : IBaseAF
    {
        public string DoIt()
        {
            return "Derived 1 method";
        }
    }

    class derived2 : IBaseAF
    {
        public string DoIt()
        {
            return "Derived 2 method";
        }
    }

    interface IFactory
    {
        IBaseAF getObj();
    }

    class ConcreteFactory1 : IFactory
    {
        public IBaseAF getObj()
        {
            return new derived1();
        }
    }

    class ConcreteFactory2 : IFactory
    {
        public IBaseAF getObj()
        {
            return new derived2();
        }
    }
}

namespace FactoryNS
{
    class Factory
    {
        public IBase GetObject(int type)
        {
            IBase ib = null;

            switch (type)
            {
                case 1:
                    ib = new Derived1();
                    break;
                case 2:
                    ib = new Derived2();
                    break;
            }

            return ib;
        }

        public static IBase GetObject()
        {
            //IBase ib = new Derived1();            
            return new Derived1();
        }
    }

   interface IBase
    {
        string DoIt();
    }

    class Derived1 : IBase
    {
        public string DoIt()
        {
            return "Derived 1 Method<br>";
        }
    }

    class Derived2 : IBase
    {
        public string DoIt()
        {
            return "Derived 2 Method <br>";
        }
    }
}

namespace SingletonNS
{
    class SingleInstanceClass
    {
        private static SingleInstanceClass sic = null;
        private static bool instanceFlag = false;

        private SingleInstanceClass()
        {
        }

        //~SingleInstanceClass()
        //{
        //    instanceFlag = false;
        //}

        public static SingleInstanceClass Create()
        {
            if (!instanceFlag)
            {
                sic = new SingleInstanceClass();
                instanceFlag = true;
                return sic;
            }
            else
            {
                return null;
                //return sic;
            }
        }

        //protected void Finalize()
        //{
        //    instanceFlag = false;
        //}
    }
}
