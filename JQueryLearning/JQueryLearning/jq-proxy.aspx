<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jq-proxy.aspx.cs" Inherits="JQueryLearning.jq_proxy1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js"></script>
    <style type="text/css">
        #form1
        {
            width: 209px;
            margin-right: 883px;
            height: 109px;
        }

        .mycss
        {
             background-color:orange;
             font:bold 12px verdana;
        }
        #dv1
        {
            height: 130px;
        }
    </style>
 
    <script type="text/javascript">
    
    $(function() { 
        /*
        $('#dv1').click(function () {
            $(this).addClass('mycss');
        });
        */

        $('#dv1').click(function () {
            setTimeout($.proxy(function () {
                //alert(this);
                $(this).addClass('mycss');                
            }, this), 1000);
        });
        
    });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <p></p>
    <div id="dv1"> Click Me!</div>
        </form>
</body>
</html>
