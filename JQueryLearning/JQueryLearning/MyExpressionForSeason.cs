using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Compilation;
using System.CodeDom;

namespace JQueryLearning
{
    //[ExpressionPrefix("MyCustomExpr")]
    //[ExpressionEditor("MyCustomExprEditor")]
    public class MyExpressionForSeason : ExpressionBuilder
    {

        public override System.CodeDom.CodeExpression GetCodeExpression(System.Web.UI.BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
        {
            //throw new NotImplementedException();

            string param = entry.Expression;

            if (String.Compare(param, "Winters", true) == 0)
            {
                return new CodePrimitiveExpression(string.Format("I like {0} and the snowfall!", param));
            }
            else
            {
                return new CodePrimitiveExpression(string.Format("Summers sucks!"));
            }
           
        }

        public override bool SupportsEvaluate
        {
            get { return true; }
        }
    }
}