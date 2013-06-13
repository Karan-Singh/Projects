<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvFilter_IE.aspx.cs" Inherits="JQueryLearning.AdvFilter_IE" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
        var tdTxtFldList; var tdVal1FldList; var curTbx1FldList; var curHdn1FldList; var curPoper1FldList; 
        
        function ShowDropDownFldList(tbxId, hdnId, caller, Dialog3, poper) {            
            if (Dialog3.get_isShowing()) 
                { Dialog3.Close(); } 
            else {
                  if (typeof (agenda_setup) != 'undefined' && Dialog3.get_isShowing() == false && agenda_setup.get_isShowing() == true)
                  { agenda_setup.Close(); }

                var scroll = 0, cumulativeScroll = 0;
                var parent = j$(caller).parent();
                for (; j$(parent)[0] != j$('html')[0]; scroll = parent[0].scrollTop, parent = j$(parent).parent())
                    { cumulativeScroll += scroll; }

                Dialog3.X = Position.cumulativeOffset(caller)[0];
                Dialog3.Y = Position.cumulativeOffset(caller)[1] + Element.getDimensions(caller).height - cumulativeScroll; 
                Dialog3.Show();

                var hdnVal = j$('#' + hdnId).val();
                var allOpts = j$(Dialog3.DomElement).find('option');
                for (var i = 0; i < allOpts.length; i++) {
                    if (allOpts[i].value == hdnVal) {
                        allOpts[i].selected = true;
                    } else {
                        allOpts[i].selected = false;
                    }
                }

                if (j$(Dialog3.DomElement).find('option:selected').length == 0) {
                    j$(Dialog3.DomElement).find('option').first().attr('selected', true);
                }

                curTbx1FldList = tbxId; curHdn1FldList = hdnId; curPoper1FldList = poper;
                j$('#509b70e6-a744-4915-9ef6-06c6175a083d_picklist').resizable(); 
                $get('509b70e6-a744-4915-9ef6-06c6175a083d_picklist').focus();
            }

            //j$('#509b70e6-a744-4915-9ef6-06c6175a083d_picklist').resizable(); 
            return false;
        } 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
