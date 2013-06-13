<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jq_customEvents.aspx.cs" Inherits="JQueryLearning.jq_customEvents" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <script src="jquery-1.7.1.min.js" type="text/javascript"></script>    
</head>
<body>
    <form id="form1" runat="server">
    <div class="room" id="kitchen">Kitchen
	    <div class="lightbulb on">LightBulb</div>
	    <div class="switch">Switch 1</div>
	    <div class="switch">Switch 2</div>
	    <div class="clapper">Clapper</div>
	</div>

    <script language="javascript">
        /*
        $('.switch, .clapper').click(function () {
            var $light = $(this).parent().find('.lightbulb');

            if ($light.hasClass('on')) {                
                $light.removeClass('on').addClass('off');
            }
            else {                
                $light.removeClass('off').addClass('on');
            }

        });
        */

        $('.lightbulb').bind('changeState', function (e) {
            var $light = $(this);

            if ($light.hasClass('on')) {
                $light.removeClass('on').addClass('off');
            }
            else {
                $light.removeClass('off').addClass('on');
            }
        });

        $('.switch, .clapper').click(function () {
            $(this).parent().find('.lightbulb').trigger('changeState');
        });
    </script>

    </form>
</body>
</html>
