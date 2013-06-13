<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="HTML5__Demo.aspx.cs" Inherits="JQueryLearning.HTML5__Demo" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">

        $(function () {
            var dvObj = $('#dv1');

            if (localStorage.getItem('KS') == null) {
                localStorage.setItem('KS', 'You can fill enourmous data in key-value pairs under localStorage obj.');
                dvObj.html('<b>New localStorage obj created.</b>');
            }
            else {
                dvObj.html('localStorage obj already present.');
            }

            var myVar = localStorage.getItem('KS');
            $('#txtValue').text(myVar);
            $('#dvStgValue').html(myVar);

            /*
            var cObj = document.getElementById("myCanvas");
            var x = cObj.width / 2;
            var y = cObj.height / 2;
            var ctx = cObj.getContext("2d");
            ctx.font = "bold 25px Calibri";
            ctx.fillStyle = 'blue';
            ctx.textAlign = 'center';            
            ctx.fillText(myVar, x, y);
            */
        });

        $(function () {
            if (window.addEventListener) { // IE9, FF, Chrome, Safari, Opera
                window.addEventListener('storage', onStorageChanged, false);
            }
            else if (window.attachEvent) {
                window.attachEvent("onstorage", onStorageChanged); // IE 8
            }
            else {
                alert('Sorry, your browser sucks!');
                return;
            }
        });

        function onStorageChanged(e) {
            $('#dvStgValue').html('<b><i>localStorage object over-rided from another browser instance.</i></b> <br /> Key:- ' 
                                    + e.key + '<br />New Value:- ' + e.newValue + '<br />Old Value:- ' + e.oldValue);
        }

        function addValue() {
            var txt1 = $('#txtValue').val();
            if (txt1 != '')
                localStorage.setItem('KS', txt1);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">    
        <input type="button" value="Page Refresh" onclick="window.location.reload();" />
        &nbsp;<input type="button" id="btnRemove" value="Remove Obj Key" onclick="localStorage.removeItem('KS');" />
        <br /><br />
        <div id="dv1" style="border:1px solid blue; text-align:center; background-color:lightGray; width:600px; height:auto;"></div> <br /><br />
        <div id="dvStgValue" style="border:1px solid blue; background-color:lightblue;width:600px;"></div> <br /><br />

        <!--<canvas id="myCanvas" width="800" style="border:2px solid red" height="100"></canvas>-->   
        <!--<input type="button" value="Reset SessionStorage" onclick="sessionStorage.clear();window.location.reload();" />-->
         
        <textarea id="txtValue" style="background-color:lightgray;" rows="10" cols="60"></textarea>&nbsp; <input type="button" value="Over-ride storage obj" id="btnAdd" onclick="addValue()"; />        
        <br /><br />
        
    </form>  
</body>
</html>
