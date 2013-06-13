<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstDemo.aspx.cs" Inherits="JQueryLearning.AngularJS.FirstDemo" %>
<!DOCTYPE html>

<html data-ng-app="demoApp">
<head runat="server">
    <title>First Demo of AngJS</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    <script>
        var demoApp = angular.module('demoApp', []);
        
        demoApp.controller('SimpleController', function($scope) {
                 $scope.customers = [{ name: 'John Smith', city: 'Phoenix' },
                                     { name: 'John Doe', city: 'New York' },
                                     { name: 'Kevin Spacey', city: 'Los Angeles' },
                                     { name: 'Maggie Gyllenhall', city: 'Washington' }];
            });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div data-ng-controller="SimpleController"> 
        <div class="container">
        Name: <input type="text" data-ng-model="myname" /> {{myname}}
        </div>
        <ul>
            <li data-ng-repeat="cust in customers | filter:myname | orderBy:'city'">{{cust.name | uppercase}} - {{cust.city |lowercase}} </li>
        </ul>
    </div>
    </form>
</body>
</html>
