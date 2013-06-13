<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Div__Play.aspx.cs" Inherits="JQueryLearning.Div__Play" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Badge Designer Prototype</title>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script>
    <script src="jquery-css-transform.js" type="text/javascript"></script>
    <script src="jquery-animate-css-rotate-scale.js" type="text/javascript"></script>
    <script src="AdvBadgeLibrary.js" type="text/javascript"></script>        
    <link href="development-bundle/themes/base/jquery.ui.resizable.css" rel="stylesheet" type="text/css" />
    <link href="development-bundle/themes/base/jquery.ui.theme.css" rel="stylesheet" type="text/css" />    
    
    <style type="text/css">
    
        .dragImgClass{
            position:absolute;  /*DO NOT TOUCH this propoerty. Resizable :- Will prevent implicit repositioning of the neighbouring imgs.*/
        }
        .dragClass {
                font-family: Tahoma, sans;
                color: black;
                background: orange;
                border: 1px solid orange;
                width: 150px;
                height:auto;
                padding: 5px;                   
            }        
        textarea {
                font-family: inherit;
                color: inherit;
                background: transparent;
                border: 0;
                width: 100%;
                height: 100%;
                resize: none;
            }
            
       /*.ui-resizable-helper { border: 2px dotted #00F; }*/       
       /*.obj-selected { border:2px dotted #00f; }*/
               
       #ParentDIV {                              
               position: relative;
               margin-left:200px; background:lightgray;
            }

    </style>
    
    <script type="text/javascript" language="javascript">
        //Dom Ready Evt Handler.
        $(function () { BindElements(); });    
    </script>
    
</head>
<body>
    <form id="form1" runat="server">    
        <br />       
       <div id="dvPos" style="margin-left:200px;"> </div>
       <div id="ParentDIV" style="width:800px; height:500px;">                    
           <div class="dragClass"><p>Drag me around!</p></div>
           <br /><br />
           <img class="dragImgClass" src="logo3.JPG" />
           <br /><br />
           <img class="dragImgClass" src="logo4.JPG" />                      
       </div>
        <br />
        <input id="Btn1" type="button" onclick="getHTML();" value="Show HTML" />
        <asp:CheckBox ID="CheckBox1" runat="server" onclick="toggleGrid(this)" Text="Show Gridlines" />
        <br />Canvas Size : 
        <input type="radio" id="rdSize1" name="CnsSize" checked="checked" onclick="chgCvsSize(this);" value="1" />800x500
        <input type="radio" id="rdSize2" name="CnsSize" onclick="chgCvsSize(this);" value="2" />400x250
        <br />
        <input id="Btn2" type="button" onclick="addTxt();" value="Add Text" />
        <input id="Btn17" type="button" onclick="addImg();" value="Add Img" />
        <input id="Btn10" type="button" onclick="setUrl(false);" value="Insert URL" />
        <!--<input id="Btn11" type="button" onclick="setUrl(true);" value="Remove URL (Img)" />-->
        <input id="Btn3" type="button" onclick="copyObj();" value="Copy" />
        <input id="Btn4" type="button" onclick="deleteObj();" value="Remove" />        
        <input id="Btn16" type="button" onclick="resetObj();" value="Reset Element" />        
        <input id="Btn5" type="button" onclick="clearCanvas();" value="Clear Canvas" />
        <input id="Btn6" type="button" onclick="changeSize(true);" value="Scale Up" />
        <input id="Btn7" type="button" onclick="changeSize(false);" value="Scale Down" />
        <input id="Btn8" type="button" onclick="shrinkSize();" value="Shrink to fit" />
        <input id="Btn9" type="button" onclick="shrinkSize(true);" value="Shrink to fit (all)" />
        <input id="Btn12" type="button" onclick="insertImg();" value="Append Img" />
        <input id="Btn13" type="button" onclick="toggleRound(false);" value="Toggle Roundness" />
        <input id="Btn14" type="button" onclick="toggleRound(true);" value="Toggle Roundness (all)" />
        <input id="Btn15" type="button" onclick="rotateObj();" value="Rotate" />        
        <input id="Btn18" type="button" onclick="toggleCanvas();" value="Toggle Canvas Bg" />        

    <br />Text color:<select id="DDLColor" onchange="applyColor();">
        <option selected="selected"></option>
        <option>Red</option>
        <option>Green</option>
        <option>Blue</option>
        <option>White</option>
    </select><br />
    Text background color:<select id="DDLBackColor" onchange="applyBackColor(false);">
        <option selected="selected"></option>
        <option>Red</option>
        <option>Green</option>
        <option>Blue</option>
    </select><br />
    Text Alignment:<select id="DDLAlign" name="DDLAlign" onchange="applyAlignment();">
           <option selected="selected" value="left">Left</option>
           <option value="center">Center</option>
           <option value="right">Right</option>                                
     </select><br />
     Text Font Style:<select id="DDLFontStyle" onchange="applyStyle();">
            <option selected="selected" value="normal">Normal</option>
            <option value="bold">Bold</option>
            <option value="bolder">Bolder</option>
            <option value="lighter">Lighter</option>
    </select><br />
    Canvas background color:
    <select id="DDLCvsBackColor" onchange="applyBackColor(true);">
        <option selected="selected"></option>
        <option>Red</option>
        <option>Green</option>
        <option>Blue</option>
        <option value="0">Default</option>        
    </select><br /><br />    
        <div id="dvHtml" style="background-color:Black; color:Aqua;"></div>            
    </form>
</body>
</html>
