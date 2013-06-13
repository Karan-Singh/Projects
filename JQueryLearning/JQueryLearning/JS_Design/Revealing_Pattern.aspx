<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Revealing_Pattern.aspx.cs" Inherits="JQueryLearning.JS_Design.Revealing_Pattern" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
        var myRevealingModule = function () {
            var privateVar = "Roger Federer",
                publicVar = "Hey there!";

            function privateFunction() {
                console.log("Name: " + privateVar);
            }

            function publicSetName(strName) {
                privateVar = strName;

            }

            function publicGetName() {
                privateFunction();
            }

            return {
                setName: publicSetName,
                greeting: publicVar,
                getName: publicGetName
            };

        } ();

        myRevealingModule.setName("Paul Kinlan");
        myRevealingModule.getName();
        
        ///Singleton

        var mySingleton = (function () {
            var instance;

            function init() {
                function privateMethod() {
                    console.log("I am private..");
                }

                var privateVariable = "Im also private.";

                return {
                    publicMethod: function () {
                        console.log("The public can see me!!");
                    },
                    publicProperty: "I am also public"
                };
            };

            return {
                getInstance: function () {
                    if (!instance) { instance = init(); console.log("instance created!"); }
                    return instance;
                }
            };
        })();

       
        var singleA = mySingleton.getInstance();
        var singleB = mySingleton.getInstance();
        console.log(singleA === singleB);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
