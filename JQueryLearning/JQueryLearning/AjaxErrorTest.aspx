kj<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxErrorTest.aspx.cs" Inherits="JQueryLearning.AjaxErrorTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">    
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>    
    <script type="text/javascript" language="javascript">
        function pageLoad() {
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(onEndRequest);

            
        }

        function onEndRequest(sender, args) {
            var error = args.get_error();

            if (error != undefined) {
                var lbl = $get("lbl1");
                lbl.innerText = error.message;

                args.set_errorHandled(true);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager AllowCustomErrorsRedirect="false" OnAsyncPostBackError="OnAsyncPostBackError_Method" ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btn1" runat="server" Text="Click" onclick="btn1_Click" />
                <asp:Label ID="lbl1" Text="Label" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>  
        
        <br />
        
   <style type="text/css">
       .header
       {
           -moz-border-radius: inherit;    
           -webkit-border-radius: inherit;
           border-radius: inherit;
           color:#e2caca ;       
       }
                       

   </style>
    </form>
</body>
</html>
