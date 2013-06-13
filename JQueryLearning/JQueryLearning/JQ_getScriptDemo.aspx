﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQ_getScriptDemo.aspx.cs" Inherits="JQueryLearning.JQ_getScriptDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript">
        $(function () {
            $('#btnLoad').click(function () {
                $.ajaxSetup({cache: true});
                $.getScript('demoScript.js', function () {
                    demo();
                    $.ajaxSetup({ cache: false });
                });
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <br />
            <br />
            <input type="button" id="btnLoad" value="Load JS script" />
    </div>
    </form>
</body>
</html>
