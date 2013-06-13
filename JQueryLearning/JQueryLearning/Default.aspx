<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JQueryLearning._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
    <style type="text/css">
        .horizontal {
                    float: left;
                    list-style: none;
                    margin: 10px;
                    }
                    
        .sub-level {background-color: #ffc;}
        
        .odd {
        background-color: #ffc; /* pale yellow for odd rows */
            }
        
        .even {
        background-color: #cef; /* pale blue for even rows */
            }
       
       .highlight {font-weight:bold; color: #f00;}
       
       .table-heading {font-weight:bold; color:Black; background-color:Yellow;}
    </style>
    
    <script type="text/javascript" language="javascript">
        
        //$(function() {
        $(document).ready(function() {
            $('#selected-plays > li').addClass('horizontal');
            $('#selected-plays li:not(.horizontal)').addClass('sub-level');

            $('th').parent().addClass('table-heading');

            //$('tr:odd').addClass('odd');
            //$('tr:even').addClass('even');            
            $('tr:not([th]):even').addClass('even');
            $('tr:not([th]):odd').addClass('odd');

            //$('td:contains("Henry")').addClass('highlight');
            //$('td:contains("Henry")').next().addClass('highlight');
            //$('td:contains("Henry")').siblings().addClass('highlight');
            $('td:contains("Henry")').parent().find('td:gt(1)').addClass('highlight');

            //var dname = $('#divtest')[0].tagName;
            //var dname = $('#divtest').get(0).tagName;
            //alert(dname);
        });            
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="divtest">
            <ul id="selected-plays">
            <li>Comedies
            <ul>
            <li><a href="http://www.mysite.com/asyoulikeit/">
            As You Like It</a></li>
            <li>All's Well That Ends Well</li>
            <li>A Midsummer Night's Dream</li>
            <li>Twelfth Night</li>
            </ul>
            </li>
            <li>Tragedies
            <ul>
            <li><a href="hamlet.pdf">Hamlet</a></li>
            <li>Macbeth</li>
            <li>Romeo and Juliet</li>
            </ul>
            </li>
            <li>Histories
            <ul>
            <li>Henry IV (<a href="mailto:henryiv@king.co.uk">email</a>)</li>
            <ul>
            <li>Part I</li>
            <li>Part II</li>
            </ul>
            <li><a href="http://www.shakespeare.co.uk/henryv.htm">
            Henry V</a></li>
            <li>Richard II</li>
            </ul>
            </li>
            </ul>
      </div>
      
            <br /><br /><br />
            <div>                
                <table>
                   <tr>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Year Published</th>
                   </tr>
                   <tr>
                    <td>As You Like It</td>
                    <td>Comedy</td>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                    <td>All's Well that Ends Well</td>
                    <td>Comedy</td>
                    <td>1602</td>
                    </tr>
                    <tr>
                    <td>Hamlet</td>
                    <td>Tragedy</td>
                    <td>1705</td>
                    </tr>
                    <tr>
                    <td>Macbeth</td>
                    <td>Tragedy</td>
                    <td>1985</td>
                    </tr>
                    <tr>
                    <td>Romeo and Juliet</td>
                    <td>Tragedy</td>
                    <td>1585</td>
                    </tr>
                    <tr>
                    <td>Henry IV, Part I</td>
                    <td>History</td>
                    <td>1874</td>
                    </tr>
                    <tr>
                    <td>Henry V</td>
                    <td>History</td>
                    <td>1855</td>
                    </tr>
                  </table>
                 
            </div>
            
    </form>
</body>
</html>
