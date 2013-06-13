<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Constructor-Pattern.aspx.cs" Inherits="JQueryLearning.JS_Design.Constructor_Pattern" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../jquery-1.7.2.min.js" type="text/javascript"></script>

    <script language="javascript">
        var newObj = {}; 
        newObj.somekey = "hello world";
        var key = newObj.somekey;
        console.log(key);

        Object.defineProperties(newObj, {
            "key1": { value: "hello1", writable: true },
            "key2": { value: "hello2", writable: false }
        });

        console.log(newObj["key2"]);

        /*********************************
         Sample 1
        **********************************/
        function car(model, year, miles) {
            this.model = model;
            this.year = year;
            this.miles = miles;
          
          /*            
            this.toString = function () {
                return this.model + " has done " + this.miles + " miles.";
            };          
        */
        }
        
        car.prototype.toString = function () {
            return this.model + " has done " + this.miles + " miles in India.";
        };
        

        var civic = new car("Honda Civic", 2009, 20300);
        var mondeo = new car("Ford Mondeo", 2010, 30000);

        console.log(civic.toString());
        console.log(mondeo.toString());

        /*************************************
        Sample 2 - Modules (object literals)
        **************************************/
        var myModule = {
            myProperty: "somevalue",

            myConfig: { useCaching: true,
                lang: "en"
            },

            myMethod: function () {
                console.log("Where the heck is peace in the the world!");
            },

            myMethod2: function () {
                console.log("Caching is : " + this.myConfig.useCaching ? "enabled" : "disabled");
            },

            myMethod3: function (newConfig) {
                if (typeof newConfig === "object") {
                    this.myConfig = newConfig;
                    console.log(this.myConfig.lang);
                }
            }
        };

        myModule.myMethod2();
        myModule.myMethod3({ lang: "fr", useCaching: false });

        /*************************************
        Sample 3 - Module Pattern
        **************************************/
        var testModule = (function () {
            var counter = 0;

            return {
                incrementCounter: function () {
                    return counter++;
                },
                resetCounter: function () {
                    console.log("counter value prior to reset : " + counter);
                    counter = 0;
                }
            };
        })();
                
        testModule.incrementCounter();
        testModule.incrementCounter();
        testModule.resetCounter();
        console.log(testModule.counter);

        /*************************************
        Sample 4 - Module Pattern (namespace)
        **************************************/
        var myNS = (function () {
            var myPrivatevar, myPrivateMethod;

            myPrivatevar = 0;

            myPrivateMethod = function (foo) {
                console.log(foo);
                console.log(myPrivatevar);
            };

            return {
                myPublicVar: "foo1",

                myPublicFunction: function (bar) {
                    myPrivatevar++;
                    myPrivatevar++;                    
                    myPrivateMethod(bar);
                }
            };

        })();

        myNS.myPublicFunction("hello");
        

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
