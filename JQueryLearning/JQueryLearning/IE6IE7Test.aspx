<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IE6IE7Test.aspx.cs" Inherits="JQueryLearning.IE6IE7Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
    #box 
    {       	 
     background: red;
     *background: green;    /* IE 7 & below*/
     _background: yellow;   /* IE 6 */
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box" style="width:200px; height:200px">    
    </div>
    </form>
</body>
</html>
