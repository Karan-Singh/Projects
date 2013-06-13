<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JS_AJAX.aspx.cs" Inherits="JQueryLearning.JS_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button3
        {
            width: 620px;
        }
        #Button4
        {
            width: 622px;
        }
    </style>
    <script language="javascript">
        function Button3_onclick() {
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm._doPostBack('Button1', '');
        }

        function Button4_onclick() {
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm._doPostBack('UpdatePanel1', '');
        }    
    </script>
</head>
<body>
    <form id="form1" runat="server">        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>    
    
    <p>
        &nbsp;</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Inside the Update Panel" 
                Width="417px" />
        </ContentTemplate>
    </asp:UpdatePanel>
    
            <br />
    <br />
    
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Outside the Update Panel" 
                Width="418px" />    
         
    <p>
        <input id="Button3" type="button" value="Call JS to Fire AyscPostback" onclick="Button3_onclick()" /></p>
        <p>
        <input id="Button4" type="button" 
                value="Second technique to Fire the AyscPostback" 
                onclick="Button4_onclick()" /></p>
        
        
        <asp:Label ID="Label3" runat="server"></asp:Label>
    
    </form>

</body>
</html>
