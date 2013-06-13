<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirebugDemo.aspx.cs" Inherits="JQueryLearning.FirebugDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.2.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function onLoad() {
            console.log("Page onLoad");
        }
        function onUnload() {
            console.log("Page onUnload");
        }

        function RunIteration() {
            console.profile();
            //console.time("fn-time-taken")

            for (x = 0; x <= 50; x++) {
                $('#dv1').append("Iterator - " + x + "<br />");
            }

            //console.timeEnd("fn-time-taken")
            console.profileEnd();
        }

        function dvclick() {
            console.log("Element clicked!!");
        }

        function SetColor() {
            $('#dv1').css({ 'background-color': 'orange' });
        }
</script>
    <style type="text/css">
        #Div2
        {
            width: 111px;
        }
        #dv1
        {
            width: 220px;
        }
    </style>
</head>
<body onload="onLoad()" onunload="onUnload()">

    <form id="form1" runat="server">
    <input type="button" value="Print" onclick="RunIteration();" />
    <input type="button" value="Color it" onclick="SetColor();" /><br />
    <br />

&nbsp;<div id="Div2"  onclick="dvclick();"
        style="background-color: #000000; color: #00FFFF; font-weight: bold">Click me!<br />
    </div>
    <div id="dv1"> </div>
    </form>
</body>
</html>
