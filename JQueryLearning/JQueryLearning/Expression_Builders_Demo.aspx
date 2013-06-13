<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expression_Builders_Demo.aspx.cs" Inherits="JQueryLearning.Expression_Builders_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expression Builders Demo</title>
    <style type="text/css">
        .rad { color:Red; font-size:3px;  }  
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Literal ID="ltrSeason" runat="server" Text="<%$ AppSettings: Season %>"></asp:Literal>
       <br /><br />
       <asp:Literal ID="Literal1" runat="server" Text="<%$ MyCustomExpr:Winters %>"></asp:Literal>
    </div>
    </form>
</body>
</html>
