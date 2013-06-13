using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;


namespace JQueryLearning
{
    public static class MyExtensions
    {
        public static string GetDefiningAssembly(this object obj)
        {
            return string.Format("{0} lives here:- {1}", obj.GetType().Name, Assembly.GetAssembly(obj.GetType()));
        }

        public static int ReverseDigits(this int i)
        {
            char[] digits = i.ToString().ToCharArray();
            Array.Reverse(digits);
            string newDigits = new string(digits);
            return int.Parse(newDigits);
        }
    }



    public interface IBasicMath
    {
        int Add(int x, int y);
    }

    public static class MathExtensions
    {
        public static int Subtract(this IBasicMath itf, int x, int y)
        {
            return x - y;
        }        
    }



}