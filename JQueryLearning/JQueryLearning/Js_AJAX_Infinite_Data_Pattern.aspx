<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Js_AJAX_Infinite_Data_Pattern.aspx.cs" Inherits="JQueryLearning.Js_AJAX_Infinite_Data_Pattern" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Infinite data</title>

    <script language="javascript" type="text/javascript">
        var ArrayCount = 3;
        var ListData = new Array("<a href='http://www.asp.net'>ASP.NET 1</a>",
                                 "<a href='http://www.asp.net'>ASP.NET 2</a>",
                                 "<a href='http://www.asp.net'>ASP.NET 3</a>");

        function pageLoad(sender, args) {
            DisplayData();
        }

        function DisplayData() {
            document.getElementById('AllData').innerHTML = "";

            for (i = ArrayCount - 1; i >= 0; i--) {
                document.getElementById('AllData').innerHTML = ListData[i] + "<br />" + document.getElementById('AllData').innerHTML;
            }
        }

        function ButtonAddNewItem_onclick() {                 
           JQueryLearning.WebService1.ItemFetch(OnComplete, OnError);
        }

        function OnComplete(retData) {
            for (i = 0; i < ArrayCount - 1; i++) {
                ListData[i] = ListData[i + 1];
            }

            ListData[ArrayCount - 1] = retData;
            DisplayData();
        }   

        function OnError(retData) {
            alert("Service Error");
        }
        

    </script>
</head>
<body>
    <form id="form1" runat="server">  
  
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebService1.asmx" />
        </Services>
    </asp:ScriptManager>
    
    <center>
        <div id="AllData" style="background-color:Lime; width:300px;"></div>        
        <br /><br />
        <input id="ButtonAddNewItem" type="button" value="Add New Item" 
        onclick="return ButtonAddNewItem_onclick()" />
    </center>     
  
    </form>
</body>
</html>