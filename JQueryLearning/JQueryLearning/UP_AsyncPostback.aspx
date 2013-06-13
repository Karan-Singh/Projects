<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UP_AsyncPostback.aspx.cs" Inherits="JQueryLearning.UP_AsyncPostback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="sm1" runat="server">        

    </asp:ScriptManager>
    
    <div>               
          <asp:updatepanel id="up1" runat="server">
            <ContentTemplate>
                    <%=DateTime.Now.ToLongTimeString()%>
                    <br /><br /><br />
                    Inside an update Panel....<asp:Literal ID="ltr1" runat="server" Text='<%#DateTime.Now.ToLongTimeString()%>'></asp:Literal>
                    <br /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnPB" runat="server" Text="Standard Postback" onclick="btnPB_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnPB_Async_Fake" runat="server" 
                        Text="Not Working - Async Postback" onclick="btnPB_Async_Fake_Click" />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnPB_Async" runat="server" Text="Working - Async Postback" onclick="btnPB_Async_Click" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnPB" />
            </Triggers>
          </asp:updatepanel>
    </div>
    </form>
</body>
</html>
