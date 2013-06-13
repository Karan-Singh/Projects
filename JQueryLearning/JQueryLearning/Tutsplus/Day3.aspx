<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Day3.aspx.cs" Inherits="JQueryLearning.Tutsplus.Day3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../jquery-1.7.1.min.js" type="text/javascript"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <ul>
        <li>Item1</li>
        <li>Item2</li>
        <li>
            <ul class="">
                <li>Hello nested child</li>
            </ul>
        </li>
     </ul>
    </div>
    </form>
</body>
</html>
