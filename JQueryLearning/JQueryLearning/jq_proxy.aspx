<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jq_proxy.aspx.cs" Inherits="JQueryLearning.jq_proxy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jquery Proxy</title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>    
</head>
<body>
    <form id="form1" runat="server">
    <div id="dv1">Click Me!</div>
    <div id="dv2"></div>

    <script language="javascript">
        var obj = {
            somevar: 'Hello',
            dosomething: function () {                
                $('#dv2').append('<div>' + this.somevar + '</div>');
            }
        };

        //$('#dv1').click(obj.dosomething);  //The target obj will be div but the desired is obj.
        //$('#dv1').click(function() { obj.dosomething(); });
        $('#dv1').click($.proxy(obj.dosomething, obj));
    </script>

    </form>
</body>
</html>
