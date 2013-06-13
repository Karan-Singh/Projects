<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jquery_Clone_Demo.aspx.cs" Inherits="JQueryLearning.Jquery_Clone_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript">
        $(function () {
            $('#dvClickme').bind('click', function () {
                alert('You clicked me...');
            });

            $('#btnClone').bind('click', function () {
                $('#dvClickme').clone(true).appendTo('#Div1');
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
        <div style="width: 142px; color: #00FF00; background-color: #000000; font-weight: bold; font-size: medium; height: 45px;" id="dvClickme" > Click Me </div>
        <br /><br />
        <input type="button" id="btnClone" value="Clone obj" />  
        <br /><br /><br />
        <div id="Div1">  </div>
    
    </form>
</body>
</html>
