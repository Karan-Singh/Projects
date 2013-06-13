<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KeyPress.aspx.cs" Inherits="JQueryLearning.KeyPress" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
    <script type="text/javascript">

        //document.onkeyup = KeyCheck;
        //document.onkeydown = KeyCheck;

        //document.Form1.KeyName.onkeydown = KeyCheck;
        //document.getElementById('KeyName').onkeydown = KeyCheck;

function KeyCheck()

{

   var KeyID = event.keyCode;


   switch(KeyID)

   {

      case 16:

      document.Form1.KeyName.value = "Shift";

      break; 

      case 17:

      document.Form1.KeyName.value = "Ctrl";

      break;

      case 18:

      document.Form1.KeyName.value = "Alt";

      break;

      case 19:

      document.Form1.KeyName.value = "Pause";

      break;

      case 37:

      document.Form1.KeyName.value = "Arrow Left";

      break;

      case 38:

      document.Form1.KeyName.value = "Arrow Up";

      break;

      case 39:

      document.Form1.KeyName.value = "Arrow Right";

      break;

      case 40:

      document.Form1.KeyName.value = "Arrow Down";

      break;
   }

}
</script>
</head>


<body>
    <form id="Form1" runat="server">
    <div>
        <input type="text" name="KeyName1" value="" />
        <input type="text" id="KeyName" onkeydown="KeyCheck()" name="KeyName" value="" />
        
    </div>
    </form>
</body>
</html>
