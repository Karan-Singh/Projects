<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo2.aspx.cs" Inherits="JQueryLearning.Knockout.demo2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../jquery-1.8.3.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/knockout/knockout-2.2.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        function AppViewModelX() {
            var self = this;
            self.people = ko.observableArray([
                    { name: 'Jack' }, {name: 'Tom'}
            ]);

            self.addPerson = function () {
                self.people.push({ name: "New entry at " + new Date() });
            };

            self.removePerson = function () {
                self.people.remove(this);
            };
        }

        $(function () {
            ko.applyBindings({
                people: [{ firstName: 'John', lastName: 'Smith' },
                         { firstName: 'Mary', lastName: 'Jane' }]
            }, document.getElementById('tbdy1'));

            ko.applyBindings(new AppViewModelX(), document.getElementById('dvx'));
            ko.applyBindings({ months: ['Jan', 'Feb', 'March'] }, document.getElementById('ulM'));
            ko.applyBindings({ myItems: ['A', 'B', 'C'] }, document.getElementById('ulHdr'));
            ko.applyBindings({ displayMsg: ko.observable(false) }, document.getElementById('dvif'));
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table>
                <thead>
                    <tr>
                        <th>First Name</th><th>Last Name</th>
                    </tr>
                </thead>
                <tbody id="tbdy1" data-bind="foreach: people">
                    <tr>
                        <td data-bind="text: firstName"></td>
                        <td data-bind="text: lastName"></td>
                    </tr>
                </tbody>
            </table>
    
        <hr />
        <h4>People</h4>
        <div id="dvx">
        <ul data-bind="foreach: people">
            <li> 
                Name at position <span data-bind="text: $index"></span>:
                <span data-bind="text: name"></span>
                <a href="#" data-bind="click: $parent.removePerson">Remove</a>
            </li>
        </ul>
            <button data-bind="click: addPerson">Add</button>
        </div>
        
        <hr />
        <ul id="ulM" data-bind="foreach: months">
            <li>
                The item name is <b data-bind="text: $data"></b>
            </li>
        </ul>

        <hr />
        <ul id="ulHdr">
            <li><b>Header</b></li>
            <!-- ko foreach: myItems -->
                <li>Item <span data-bind="text: $data"></span></li>
            <!-- /ko -->
        </ul>

        <hr />
        <div id="dvif">
            <label><input type="checkbox" data-bind="checked: displayMsg" /> Display Message</label>
            <div data-bind="if: displayMsg">Surprised!!</div>
        </div>
    </div>
    </form>
</body>
</html>
