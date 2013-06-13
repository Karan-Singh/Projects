<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSCoordinateSample.aspx.cs" Inherits="JQueryLearning.JSCoordinateSample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>    
       
    <script type="text/javascript">  
    
        function show_coords(event){
        x=event.clientX;
        y=event.clientY;
        //alert("X coords: " + x + ", Y coords: " + y);
        
        $("#pId").text("X coords: " + x + ", Y coords: " + y);
    }

    function show_coords2(obj) {
        //alert(obj);
        //x = event.clientX;
        //y = event.clientY;
        //alert("X coords: " + x + ", Y coords: " + y);

        $("#pId").text("X coords: " + obj.offsetLeft + ", Y coords: " + obj.offsetTop);
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">    
    <p id="pId"></p>
        
    <div onmousemove="show_coords(event)" style="width:500px; height:100px; background-color:Yellow; font-weight:bold; color:Red;">
        Move the mouse in this area and check the coordinates!
    </div>
    
    <br /><br />
    <div onmousemove="show_coords2(this)" style="width:500px; height:100px; background-color:Silver; font-weight:bold; color:Black;">
        Move the mouse in this area and check the coordinates!
    </div>
    
      
    

    </form>
</body>
</html>
