<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JQueryLearning.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
    <script language="javascript">
        function FocusImage() {
            //alert('hi');
            alert(document.getElementById('img1'));
            document.getElementById('img1').focus();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <img  alt="asdas" title="sdasd" src="3.jpg" /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <p></p><p></p>
    <div>
     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:ImageButton ImageUrl="~/3.jpg" ID="ImageButton1" runat="server" />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>
    <p></p><p></p>
    <div>
        <asp:TextBox onblur="javascript:FocusImage();" ID="TextBox5" runat="server"></asp:TextBox>
        
        <img id="img1"  alt="asdas" title="sdasd" src="3.jpg" /><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
