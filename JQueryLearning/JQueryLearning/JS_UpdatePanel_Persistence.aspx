<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JS_UpdatePanel_Persistence.aspx.cs" Inherits="JQueryLearning.JS_UpdatePanel_Persistence" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager> 
    
    <script language="javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        setTimeout("Update()", 3000);

        function Update() {
            prm._doPostBack('UpdatePanel1', '');
            setTimeout("Update()", 3000);
        }
    </script>
      
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"  onload="UpdatePanel1_Load">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </ContentTemplate>        
    </asp:UpdatePanel>
    
    </form>
</body>
</html>
