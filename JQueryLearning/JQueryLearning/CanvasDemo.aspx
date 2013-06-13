<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanvasDemo.aspx.cs" Inherits="JQueryLearning.CanvasDemo" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title> 
     <script type="text/javascript">  
     function draw() {  
       var canvas = document.getElementById("canvas");
       if (canvas.getContext) {
           var ctx = canvas.getContext("2d");

           ctx.fillStyle = "rgb(200,0,0)";
           ctx.fillRect(10, 10, 55, 50);

           ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
           ctx.fillRect(30, 30, 55, 50);
       }
       else {
           alert('HTML-5 <Canvas> is not supported.');
       }
       
     }  
   </script>  
</head>
 <body onload="javascript:draw();">  
    <canvas id="canvas" width="150" height="150"></canvas>  
  </body> 
</html>