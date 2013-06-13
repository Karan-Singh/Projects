<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OO__JS__Demo.aspx.cs" Inherits="JQueryLearning.OO__JS__Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script language="javascript">
        $(function () {

            //Literal Notation
            var bill = {
                name: "Billy Goat",
                sound: function () { return "bahhh bahhh"; }
            };

            bill.sayName = function () {
                return "Hello " + this.name;
            };

            bill.sound = function (noise) {  //Over-ride the original sound fn..
                return noise;
            };

            
            $('#id1').append(bill.sayName())
                     .append(" -- ")
                     .append(bill.sound("meee meee!!"));


            //Constructor Notation
            function Game(title) {
                this.title = (typeof title !== 'undefined' ? title : "EMPTY");
            };

            var zelda = new Game();
            var smb = new Game();
            zelda.title = "Legend of Zorro";
            smb.title = "Contra";

            var newgame = new Game();

            zelda.loveTitle = function () {
                return this.title + " coming from fn";
            };

            Game.prototype.heartIt = function () {
                return this.title + " coming from game fn";
            };

            $('#id1').html(smb.title)
                     .append(" -- ")
                     .append(zelda.title)
                     .append(" -- ")
                     .append(zelda.loveTitle())
                     .append(" -- ")
                     .append(smb.heartIt())
                     .append(" -- ")
                     .append(zelda.heartIt())
                     .append(newgame.title);

        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="id1">    
    </div>
    </form>
</body>
</html>
