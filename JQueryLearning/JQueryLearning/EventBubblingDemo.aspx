<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventBubblingDemo.aspx.cs" Inherits="JQueryLearning.EventBubblingDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(function () {
            $("#dv1").on("click", function () {                
                ColorMe(this,'red');
            });
        });        

        function ColorMe(obj, clr){            
            $(obj).css('backgroundColor', clr);
        }       
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div id="dv1" style="width:200px; background-color:Yellow;">
        <ul>
            <li onclick="ColorMe(this, 'orange');">USA</li>
            <li>UK</li>
            <li>Canada</li>
            <li>India</li>
        </ul>
    </div>
    
    </div>
    </form>
</body>
</html>
