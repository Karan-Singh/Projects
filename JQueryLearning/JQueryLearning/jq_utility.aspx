﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jq_utility.aspx.cs" Inherits="JQueryLearning.jq_utility" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript">

        var firstObj = { foo: 'bar', a: 'b' };
        var secondObj = { foo: 'zoo' };
               
        var newObj = $.extend(secondObj, firstObj);

        console.log(firstObj.foo);
        console.log(secondObj.foo);
        console.log(secondObj.a);

//        newObj = $.extend(firstObj, secondObj);

//        console.log(firstObj.foo);
//        console.log(secondObj.foo);
//        console.log(secondObj.a);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
