using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace JQueryLearning
{
    public partial class AccessViewState : System.Web.UI.Page
    {

        private StateBag PreviousPageViewState
        {
            get
            {
                StateBag returnValue = null;

                if (PreviousPage != null)
                {
                    Object objPreviousPage = (Object)PreviousPage;
                    MethodInfo objMethod = objPreviousPage.GetType().GetMethod("ReturnViewState");

                    return (StateBag)objMethod.Invoke(objPreviousPage, null);
                }

                return returnValue;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                if (PreviousPageViewState != null)
                {
                    Response.Write(PreviousPageViewState["Page1"].ToString());
                }
            }
        }
    }
}
