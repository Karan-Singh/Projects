<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQ_IterationTypes.aspx.cs"
    Inherits="JQueryLearning.JQ_IterationTypes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript">
        $(function () {
            $('li').each(function () {
                $(this).css('color', 'blue');  /*explicit iteration (pitfall)*/
                $(this).css('font-size', '5em');
            });


            /*Use of implicit iteration*/
            $('li').css('color', 'red').css('font-size', '5em');

            /*Use of implicit iteration - Another version*/
            $('li').css({ 'color': 'green', 'font-size': '5em' });

            /*Event Binding*/
            $('li').click(function () {

            });

            /*
            $('ul').delegate('li', 'click', function () {                
                $('#context').append('<div>' + $(this).text() + '</div>');
            });
            */

            //click handlers bound to the document obj
            $('li').live('click', function () {

            });
            
            //click handler bound to the ul level only rather than the document level. Bit of perf increase.
            var ul1 = $('ul')[0];
            $('li', ul1).live('click', function () {
                $('#context').append('<div>' + $(this).text() + '</div>');
            });
            
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul>
            <li>Canada</li>
            <li>Usa</li>
            <li>Uk</li>
            <li>India</li>
        </ul>
    </div>
    <br /><br />
        <div id="context" ></div>
    </form>
</body>
</html>
