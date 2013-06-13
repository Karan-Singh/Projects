<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoverDemo.aspx.cs" Inherits="JQueryLearning.HoverDemo" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>IE8 Test page</title>
    <style type="text/css">
        body{ font-family:sans-serif;}
        a{
            background-color:#ffcc00;
            color:#000;
            padding-left:10px;
            text-decoration:none;
            float:left;
        }
        a span{
            float:left;
        }
        a:hover{
            color:#fff;
            text-decoration:underline;
        }
        a:hover span{
            background-color:#000;
        }
        
        .trHover
        {
        	background-color:#ffcc00;
            color:#000;
            padding-left:10px;
            text-decoration:none;            
        }
        
        .trHover:hover        
        {
        	background-color:#fff;
        }
        
    </style>
  </head>
  <body>
    <a href="#">
        <span>Text</span>
    </a>
    <table border="1">
        <tr class="trHover">
            <td>Hello</td>
            <td>Baby</td>
        </tr>
    </table>
  </body>
</html>
