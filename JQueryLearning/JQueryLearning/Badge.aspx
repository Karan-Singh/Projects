<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Badge.aspx.cs" Inherits="JQueryLearning.Badge" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: absolute; background-color: #f02c2c; width: 600pt; 
        height: 780pt; overflow: hidden" id="ParentDIV">  
        <div style="position: absolute; font-family: Arial; height: 25pt; 
            color: #000000; font-size: 12pt; top: 101.627pt; left: 159.377pt" 
            align="left">{[C-FULLNAME:parameter]}</div>  </div>
    </form>
</body>
</html>
