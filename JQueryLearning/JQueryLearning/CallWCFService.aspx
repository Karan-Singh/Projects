<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallWCFService.aspx.cs" Inherits="JQueryLearning.CallWCFService" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>

    <script language="javascript">
        var counter = 0;

        function CallMyService() {
            counter++;

            $.ajax({type: "POST",
                URL: "Service1.svc/MyFunctionForPlay",
                data: '{"count":"' + counter + '"}',
                contentType: "application/json; charset=utf-8",                
                dataType:"json",
                success: ServiceSucceeded,
                error: ServiceFailed            
                });
        }

        function ServiceFailed(result) {
            Log('Service call failed: ' + result.status + '  ' + result.statusText);
        }

        function ServiceSucceeded(result) {            
            var resultObject = result.MyFunctionForPlayResult;
            Log("Success: " + resultObject);
        }              

        function Log(msg) {
            $("#logdiv").append(msg + "<br />");
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <input id="Button1" type="button" value="Execute" onclick="CallMyService();" />
    <div id="logdiv"></div>  <!--For messages-->
    </div>
    </form>
</body>
</html>
