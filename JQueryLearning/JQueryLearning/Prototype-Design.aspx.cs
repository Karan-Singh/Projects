using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

namespace JQueryLearning
{
    public partial class Prototype_Design : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeManager empM = new EmployeeManager();
            empM["100"] = new Employee("John", "Smith");
            empM["101"] = new Employee("Bill", "Jones");
            empM["102"] = new Employee("Tom", "Carter");

            //empM["103"] = empM["101"].Clone(true) as Employee;
            empM["103"] = empM["101"].Clone(false) as Employee;

            //empM["104"] = empM["100"].Clone(false) as Employee;
        }
    }

    public static class DeepCloneExtension
    {
        public static T DoDeepClone<T>(this T obj)
        {
            if (!obj.GetType().IsSerializable) {
                throw new ArgumentException("Object provided is not serialized!!");
            }

            if (obj == null) {
                return default(T);
            }
            else
            {
                BinaryFormatter bf = new BinaryFormatter();
                using (MemoryStream ms = new MemoryStream())
                {
                    bf.Serialize(ms, obj);
                    ms.Seek(0, SeekOrigin.Begin);
                    return (T)bf.Deserialize(ms);
                }
            }
        }
    }

    public abstract class EmployeePrototype
    {
        public abstract EmployeePrototype Clone(bool deepClone);
    }

    public class EmployeeManager
    {
        public Dictionary<string, EmployeePrototype> _employees = new Dictionary<string, EmployeePrototype>();

        public EmployeePrototype this[string idx]
        {
            get { return _employees[idx]; }
            set { _employees.Add(idx, value); }
        }
    }

    [Serializable()]
    public class Employee : EmployeePrototype
    {
        private string _firstName;
        private string _lastName;

        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value;}
        }

        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }

        public Employee(string fName, string lName)
        {
            this._firstName = fName;
            this._lastName = lName;
        }

        public override EmployeePrototype Clone(bool deepClone)
        {
            switch(deepClone)
            {
                case true:
                    return this.DoDeepClone() as EmployeePrototype;                    
                case false:
                    return this.MemberwiseClone() as EmployeePrototype; //Shallow Clone
                default:
                    return this.MemberwiseClone() as EmployeePrototype; //Shallow Clone
            }
        }

    }

}