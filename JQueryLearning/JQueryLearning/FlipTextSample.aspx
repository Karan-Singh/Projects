<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlipTextSample.aspx.cs" Inherits="JQueryLearning.FlipTextSample" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="jquery.mb.flipText.js"></script>
  <script type="text/javascript">
      $(function() {
          $("#tb").mbFlipText(true); // top to bottom
          $("#bt").mbFlipText(false); // bottom to top
      });
  </script>
</head>
<body>
    <form id="form1" runat="server">        
        <div id="tb" style="font-family: Arial; font-size: 12pt; color: #000000; position: absolute; left: 105px; top: 75px; height: 30pt; width: 100pt;" align="Left">hello world baby</div>        
        
        <!--<div id="bt" > text bottom to top  </div>-->

        <select style="width:100px;">
          <option>UK</option>
          <option>Dummy long text data to break the 100px width of the select control</option>
          <option>USA</option>
        </select>
    </form>
</body>
</html>
