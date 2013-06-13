<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignPattern.aspx.cs" Inherits="JQueryLearning.SingletonPattern" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Singleton Example" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Factory Example" />
    
    </div>
    &nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Abstract Factory Example" />
    &nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Builder Example" />
    </form>
</body>
</html>
