<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-onNG_Tool_Demo.aspx.cs" Inherits="JQueryLearning.edit_onNG_Tool_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title></title>
    <script src="lib/js/jquery/jquery-1.4.min.js" type="text/javascript"></script>
    <script src="lib/js/edit-on-ng.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="lib/css/edit-on-ng.css" />
</head>

<script type="text/javascript">
    eong = new eongApplication(800, 500, "eongInstance", "eongInstance", "eong");
    eong.setCodebase('/lib/bin');
    eong.setUIConfigURL('../config/uiconfig.json');
    eong.setConfigURL('../config/config.json');
    
    window.onload = function() {
        eong.loadEditor();
        };
</script>

<body>
    <form id="form1" runat="server">
       <div id="eongInstance">
        </div>
    </form>
</body>
</html>
