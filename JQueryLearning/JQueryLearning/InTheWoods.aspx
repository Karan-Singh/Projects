<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InTheWoods.aspx.cs" Inherits="JQueryLearning.woods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
     <style type="text/css">
        #box 
            { 
            	background-color:Red;
            	width:200px;
            	height:200px;
            	display:none;
            }
        
        #box2 
            { 
            	background-color:blue;
            	width:200px;
            	height:200px;
            	position:relative;
            }
            
        #box3
            { 
            	background-color:green;
            	width:200px;
            	height:200px;            	
            }
    
            
        p a
        {
        	color:Red;
        }
        
        .alert
        {
         color:red;
         font-weight:bold;
        }
        
        .border
        {
        	 border:5px solid black;
        }
        
        .highlight
        {
           background-color:Yellow;
        }
     </style>
     
     <script language="javascript" type="text/javascript">
         $(function() {

             $('a').click(function() {
                 //$('#box').fadeOut('slow');
                 //$('#box').slideUp(4000);
                 $('#box').show(4000);
                 $('p a').css('color', 'green');

             });

             $('#box2').click(function() {
                 $(this).animate({ "left": "300px" }, 4000);
                 $(this).animate({ "width": "50px" }, 4000);
             });


             // $('li').css('color', 'red');
             //$('li').addClass('alert');
             //$('li:first').addClass('alert');
             //$('li:last').addClass('alert');
             //$('li:odd').addClass('alert');
             //$('li:nth-child(4)').addClass('alert');
             //$('li:eq(4)').addClass('alert');   //0 based index
             //$('li a[title=title]').addClass('alert');
             //$('li>a').addClass('alert');

             var i = $('#nav li').size() + 1;

             $('#add').click(function() {
                 $('<li>List ' + i + '</li>').appendTo('ul');
                 i++;
             });

             $('#remove').click(function() {
                 $('li:last').remove();
                 i--;
             });


             $('#toggle').click(function() {
                 //$('#box3').toggle(3000);
                 $('#box3').toggleClass('border');
             });

             $('p').click(function() {
                 $(this).toggleClass('highlight');
             });

             $('#container img').animate({
                 "opacity": 0.5
             });

             $('#container img').hover(function() {
                 $(this).stop().animate({ "opacity": 1.0 });
             }, function() {
                 $(this).stop().animate({ "opacity": 0.5 });
             });


         });
     </script>
</head>
<body>
    <form id="form1" runat="server">
    <!--<div id="box"></div>
    <a href="#">Click me</a>-->
    <p>
        kasdlasj dlkjas dlkjas dlka sjdlkasj ldkj laskjdlkjaslkdjlkasjlkdjlkasd
        laksjdlk asjldjlkj askldj <a href="#">abc</a>laksj dlkaj slkdjlkasjdlkjalskjdklaj sdlkjasd
        lkasjd lkasjdkljlaskdjlkaj<a href="#"> sdk </a>ljaslkdjla sdlajsdljalsjdlkjasldjlasjljdlasj
    </p>
    <p></p>
    <div id="box2"></div>
    <p></p>
    <ul id="nav">
        <li>List 1</li>
        <li><a href="#" title="not title">List 2</a></li>
        <li>List 3</li>
        <li>List 4</li>
        <li><a href="#" title="title">List 5</a></li>
        <li>List 6</li>
    </ul>
    <a href="#" id="add">Add List Item</a><br />
    <a href="#" id="remove">Remove List Item</a>
    <p></p>
    <div id="box3"></div>
    
    <a id="toggle" href="#">Click</a>
    <p>This is a paragraph block.</p>
    <p>This is a paragraph block.</p>
    <p>This is a paragraph block.</p>
    <p>This is a paragraph block.</p>
    <p>This is a paragraph block.</p>
    
    <p></p>
    
    <div id="container">
        <img src="1.jpg" alt="image" />
        <img src="2.jpg" alt="image" />
        <img src="3.jpg" alt="image" />
        <img src="4.jpg" alt="image" />
        <img src="5.jpg" alt="image" />
    </div>
    
    </form>
</body>
</html>
