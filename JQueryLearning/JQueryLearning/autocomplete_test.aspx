<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autocomplete_test.aspx.cs" Inherits="JQueryLearning.autocomplete_test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>   
        Name:<input type="text" name="name" autocomplete="off" /><br/>
        Address:<input type="text" name="address" /><br/> 
        Passwd:<input type="password" name="password" autocomplete="off" /><br/>
        <input type="Submit" name="Submit" value="Submit" />
    </div>
    </form>
</body>
</html>
