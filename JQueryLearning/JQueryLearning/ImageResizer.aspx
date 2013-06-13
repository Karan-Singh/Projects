<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageResizer.aspx.cs" Inherits="JQueryLearning.ImageResizer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nathanael Jones control<br />
        <br />
    
        <asp:FileUpload ID="FileUpload1"  runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Resize" />
        <br />
        <br />
    
    <asp:Literal ID="BasePageUserInfoText" Text="test&amp;prod11111" runat="server" EnableViewState="False"></asp:Literal>

    <asp:Literal ID="Literal1">test&amp;prod112222222111 A&nbsp;B </asp:Literal>

    </div>
    </form>
</body>
</html>
