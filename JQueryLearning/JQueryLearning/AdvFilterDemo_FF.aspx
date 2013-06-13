<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvFilterDemo_FF.aspx.cs"
    Inherits="JQueryLearning.AdvFilterDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
        var tdTxtFldList; var tdVal1FldList; var curTbx1FldList; var curHdn1FldList; var curPoper1FldList;

        function ShowDropDownFldList(tbxId, hdnId, caller, Dialog3, poper) {
            if (Dialog3.get_isShowing()) { Dialog3.Close(); }
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
                j$('#bb226a9f-51e2-4f3b-bd0e-5c069cdce53d_picklist').resizable();

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
                $get('bb226a9f-51e2-4f3b-bd0e-5c069cdce53d_picklist').focus();
            }

            return false;
        }

        function CaptureClickFldList(thisVar) 
        { var lbox = $get(thisVar); for (i = 0; i < lbox.options.length; i++) { if (lbox.options[i].selected) { var valTxt = j$('#' + curTbx1FldList).closest('td').next().next().find('input[id*="txtValue"][type="text"]'); if (valTxt) j$(valTxt).val(''); tdVal1FldList = lbox.options[i].value; tdTxtFldList = lbox.options[i].text;  /* Clear the Setup textBox */if (curPoper1FldList != null) { $get(curPoper1FldList).value = ''; } /* Close the Setup Dialog if it is open */if (typeof (agenda_setup) != 'undefined' && agenda_setup.get_isShowing() == true) { agenda_setup.Close(); } break; } } } function dialogshowFldList(sender, eventArgs) { } function HideDialogFldList(Dialog3) { Dialog3.Close(); } function dialogcloseFldList(dialog) { if (dialog.get_result() == 'OK Popup Click') { var tbx = $get(curTbx1FldList); tbx.value = tdTxtFldList.toString().replace(/^\s+|\s+$/g, ''); var hdn = $get(curHdn1FldList); hdn.value = tdVal1FldList.toString().replace(/^\s+|\s+$/g, ''); tbx.focus(); } }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
