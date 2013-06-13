<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableDemo.aspx.cs" Inherits="JQueryLearning.TableDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="jquery-1.8.3.js"></script>

    <script type="text/javascript">
        function demo() {
            $('#dv1').html('adas');

        }
    </script>

    <style type="text/css">
        .helloo
        {
            -moz-border-radius: inherit;
            -webkit-border-radius: inherit;
            border-radius: inherit;             
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">       

            
    <div  style="position: absolute; width: 549px; height: 104px; top: 26px; left: 31px">
        <style type="text/css">
            table, td
            {
                border: 2px solid green;
            }
        </style>
        <table cellspacing="2" cellpadding="2" width="500">
            <tbody>
                <tr>
                    <td style="border: 2px solid green;">
                        hello
                    </td>
                    <td>
                        one&nbsp;&nbsp;
                    </td>
                    <td>
                        two
                    </td>
                </tr>
                <tr>
                    <td>
                        three
                    </td>
                    <td>
                        four
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
