<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo1.aspx.cs" Inherits="JQueryLearning.Knockout.demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../jquery-1.8.3.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/knockout/knockout-2.2.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        var myviewModel = {
            personName: 'Bob',
            personAge: 22
        };

        var myviewModel2 = {
            personName: ko.observable('James'),
            personAge: ko.observable(55)
        };

        function AppViewModel3() {
            this.firstName = ko.observable('Tony');
            this.lastName = ko.observable('Blair');
            this.fullName = ko.computed(function () {
                return this.firstName() + " " + this.lastName();
                }, this);
        }

        $(function () {
            //ko.applyBindings(myviewModel, document.getElementById('sp1'));
            //ko.applyBindings(myviewModel);
           // ko.applyBindings(myviewModel2);
            //myviewModel2.personName('jack').personAge(33);
            //ko.applyBindings(new AppViewModel3(), document.getElementById('span2'));
            ko.applyBindings(new AppViewModel3());
        });

        function trgrViewModelName(obj) {            
            myviewModel2.personName($(obj).val());
            //myviewModel.personName($(obj).val());
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%-- Name: <input type="text" id="txtName" onblur="javascript:trgrViewModelName(this); return false;" />                  
         <br />
         <br />
         The name is <span id="sp1" data-bind="text: personName"></span>  <br /><br />          
         The age is <span id="Span1" data-bind="text: personAge"></span>  <br /><br />          
         The name is <div id="dv1" data-bind="text: personName"></div>--%>        
        <hr />        
         First Name: <input type="text" id="Text1" data-bind="value: firstName" />
         Last Name: <input type="text" id="Text2" data-bind="value: lastName"  /> <br /><br />
         The Name is <span id="span2" data-bind="text: fullName" ></span>
    </div>
    </form>
</body>
</html>
