<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowserCloseMethodCall.aspx.cs" Inherits="JQueryLearning.BrowserCloseMethodCall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
    <script language="javascript">
        function Browser_Close() {
            //alert('hi');            
            alert(PageMethods.BrowserCloseMethod());            
            //document.write(PageMethods.BrowserCloseMethod());
        }
    </script>
</head>
<body onunload="Browser_Close()">
    <form id="form1" runat="server">
    <div>
    <asp:scriptmanager id="Scriptmanager1" runat="server" enablepagemethods="true" />
    
    <asp:Label ID="txt" Text="Hello" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
