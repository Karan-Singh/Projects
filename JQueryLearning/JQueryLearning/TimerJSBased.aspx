<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimerJSBased.aspx.cs" Inherits="JQueryLearning.TimerJSBased" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
    <script type="text/javascript">

        function countdown() {
            seconds = document.getElementById("timerLabel").innerHTML;
            if (seconds > 0) {
                document.getElementById("timerLabel").innerHTML = seconds - 1;
                setTimeout("countdown()", 1000);
            }
        }

        setTimeout("countdown()", 1000);

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <span id="timerLabel" runat="server">10</span>



    </div>
    </form>
</body>
</html>
