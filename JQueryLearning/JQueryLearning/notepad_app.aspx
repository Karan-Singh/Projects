<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notepad_app.aspx.cs" Inherits="JQueryLearning.notepad_app" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head runat="server">
    <title></title>
    <link href="site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

<div style="border: 1px solid gray; position: absolute; visibility:visible; 
    top: 89px; left: 10px; width: 270px;" 
    class="ListPanel" 
    id="divObjectInfo">

<table width="100%" cellspacing="1">
    <tbody>
        <tr class="ListRow">
            <td align="right" style="width: 50%;">Code:</td>
            <td>7DNW5QR239N</td>
        </tr>

        <tr class="ListRow">
            <td align="right" style="width: 50%;">Registration&nbsp;Status:</td>
            <td>Active</td>
         </tr>
         
        <tr class="ListRow">
            <td align="right" style="width: 50%;">Start&nbsp;Date:</td>
            <td>6/27/2010</td>
        </tr>
        <tr class="ListRow">
            <td align="right" style="width: 50%;">Internal&nbsp;Note:</td>
            <td><span class="FormInfoTxt" style="padding: 0px; margin-top: 0px; 
                    margin-bottom: 0px;">this is internal note field. this is internal note field.this is internal note field.this is internal note field.this is internal note field.this is internal note field.this is internal note field.this is internal note field.this is internal note field.                   
                </span>
                <span class="suffix"></span>
             </td>
        </tr>
        
        <!--<tr class="ListRow">
            <td align="right" style="width: 50%;">Internal&nbsp;Note:</td>
            <td>
                   <pre>this is internal note field. this is internal note field.this is internal note field.this is internal note field.
                                   this is internal note field.this is internal note field.this is internal note field.this is internal note field.this is internal note field.
                   </pre>
                
                <span class="suffix"></span>
             </td>
        </tr>-->

        <tr class="ListRow">
            <td align="right" style="width: 50%;">Planning&nbsp;Status:</td>
            <td></td>
        </tr>
    </tbody>
</table>

</div>

    </form>
</body>
</html>
