<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventBubblingDemo_1.aspx.cs" Inherits="JQueryLearning.Event_Bubbling_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html id="htmlNode" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        /*
        $(function () {
            $('*').each(function () {
                var current = this;
                this.onclick = function (event) {
                    if (!event) event = window.event;
                    var target = (event.target) ? event.target : event.srcElement;
                    say('For ' + current.tagName + ' #' + current.id + ' target is ' + target.id);
                }
            });
        });
        */

        /*Non-IE Based*/
        /*
        $(function () {
            var elm = $('#vstar')[0];
            elm.addEventListener('click', function (event) { say('Once !'); }, false);
            elm.addEventListener('click', function (event) { say('Twice !'); }, false);
            elm.addEventListener('click', function (event) { say('Thrice !'); }, false);
        });
        */

        /*IE Based*/
        /*
        $(function () {
            var elm = $('#vstar')[0];            
            elm.attachEvent('click', function () { say('Once !') });
            elm.attachEvent('click', function () { say('Twice !') });
            elm.attachEvent('click', function () { say('Thrice !') });
        });
        */

        /*Non-IE Based*/
        /*
        $(function () {
            $('*').each(function () {
                var current = this;
                this.addEventListener('click', function (event) {
                    say('Capture for ' + current.tagName + '#' + current.id +
                        ' target is ' + event.target.id);
                }, true);

                this.addEventListener('click', function (event) {
                    say('Bubble for ' + current.tagName + '#' + current.id +
                        ' target is ' + event.target.id);
                }, false);
            });
        });
        */

        /*Jquery based*/
        $(function () {
            $('#vstar').on('click', function (event) { say('jq once!'); })
                       .on('click', function (event) { say('jq twice!'); })
                       .on('click', function (event) { say('jq thrice!'); });
        });

        function say(txt) {
            $('#console').append('<div>' + txt + '</div>');
        }

        function RemoveBinding() {
            $('#vstar').off('click');
        }
    </script>

</head>
<body id="bd1">
    <form id="form1" runat="server">
    <div id="greatgrandpa">
        <div id="grandpa">
            <div id="pops">
                <img id="vstar" src="logo5.jpg" />
            </div>
        </div>
    </div>

    <input type="button" value="Remove click event" onclick="RemoveBinding();" />
    <div id="console"></div>
    </form>
</body>
</html>
