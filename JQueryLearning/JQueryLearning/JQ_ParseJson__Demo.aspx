<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQ_ParseJson__Demo.aspx.cs" Inherits="JQueryLearning.JQ_ParseJson__Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>

    <script language="javascript">
        $(function () {
            var jsonp = '[{"Language":"jQTest","ID":"1"}, {"Language":"C#","ID":"2"}]';
            var lang = '';
            var obj = $.parseJSON(jsonp);

            $.each(obj, function () {
                lang += this.Language + " ";
            });

            $('div').html(lang);
            $('span.c1.c2').css('color','red');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div> </div>
    <span class="c1 c2"> hello baby</span>
    </form>
</body>
</html>
