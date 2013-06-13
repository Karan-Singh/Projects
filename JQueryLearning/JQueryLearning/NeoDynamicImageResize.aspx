<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NeoDynamicImageResize.aspx.cs" Inherits="JQueryLearning.NeoDynamicImageResize" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Neodynamic control testing<br />
        <br />
        <asp:FileUpload ID="FileUpload1"  runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Resize" onclick="Button1_Click" />
        <br />
        <br />
        <asp:Image ID="img1" runat="server" />
    </div>
    </form>
</body>
</html>
