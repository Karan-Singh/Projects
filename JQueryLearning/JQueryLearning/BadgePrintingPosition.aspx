<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BadgePrintingPosition.aspx.cs" Inherits="JQueryLearning.BadgePrintingPosition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>        
    <script  type="text/javascript">
    
         $(document).ready(function() {
            $("#dPos1").css("background-color", "orange");
            $('#hdPos').attr('value', 1);
         });

        
        function SavePosition(sDiv,val) {
            //alert(sDiv);
            //alert(sDiv.id);
            //alert(sDiv.style.backgroundColor);
            //alert(val);
            //alert($('#hdPos').attr('value'));

            //var ctlId = sDiv.id + $('#hdPos').attr('value');
            //alert(sDiv.id);

            $("#dPos" + $('#hdPos').attr('value')).css("background-color", "white");
            $("#" + sDiv.id).css("background-color", "orange");
            $('#hdPos').attr('value', val);
         }          
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>     
        <h1>Badge Position Selection Prototype</h1>
        <h3>(select the badge position by clicking the particular box)</h3>    
        <asp:PlaceHolder ID="phPosition" runat="server"></asp:PlaceHolder>        
        <input type="hidden" id="hdPos" name="hdPos" value="1" />        
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="print_click" />    
        <br /><br />
        <b><asp:Label ID="lbl" runat="server"></asp:Label></b>        
        
        <%--<br /><br />
        <div style="cursor:pointer;border:5px inset red; width:200px; height:100px;" />--%>
        
    </div>
    </form>
</body>
</html>
