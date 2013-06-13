<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterArrayDeclaration_Demo.aspx.cs" Inherits="JQueryLearning.RegisterArrayDeclaration_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {
            for (var i = 0; i < MyArr.length; i++) {
                document.write(MyArr[i]);               
            }
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
