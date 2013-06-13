using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryLearning
{
    public partial class Protected_test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }

    class A
    {
        protected int x = 123; 
        public A ()
        {
            x = 20;
        }
        
    }

    
    class B : A
    {
        protected int y = 100;

        public B()
        {
            y = 400;
        }

        void F()
        {            
            A a = new A();
            B b = new B();
            //a.x = 10;   // Error
            b.x = 10;   
        }
    }

    class C : B
    {

        void F()
        {
            C cc = new C();
            cc.x = 20;                       
        }
    }
}