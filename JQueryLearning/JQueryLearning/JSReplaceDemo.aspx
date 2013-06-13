<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSReplaceDemo.aspx.cs" Inherits="JQueryLearning.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script>
    $(function(){
        var x= '<div class="ui-droppable" id="ParentDIV"><div>XX</div>';
        x = x.replace(/</g, "$lt$");
        alert(x);
    });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            
    </div>
    </form>
</body>
</html>
