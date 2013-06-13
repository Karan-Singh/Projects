<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JS_AJAX_Analysis.aspx.cs" Inherits="JQueryLearning.JS_AJAX_Analysis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>

    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <script language="javascript">
        function UpdateTime() {
            PageMethods.GetCurrectTime(OnSucceeded, OnFailed);
        }

        function OnSucceeded(result, userContext, methodName) {
            $get('Label1').innerHTML = result;
        }

        function OnFailed(error, userContext, methodName) {
            $get('Label1').innerHTML = "An error occured...Plz try again.";
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server">
        </asp:ScriptManager>    
        
        <asp:UpdatePanel runat="server" ID="up1">
            <ContentTemplate>
                <asp:Label runat="server" ID="Label1" Text="Update Me!" /><br /><br />
               <asp:Button runat="server" ID="Button1" Text="AJAX Postback Update" OnClick="Button1_Click" />
             <input type="button" id="Button2" value="Web Method Update" onclick="UpdateTime();" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>
