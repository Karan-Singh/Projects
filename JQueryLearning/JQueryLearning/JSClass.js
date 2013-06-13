
function Customer() {
    //return "Demo test";
    this.City = "London";
    this.Country = "";
    
    var pastDueAmt = 0;

    //Public Method
    this.FullAddress = function() {
        if (validateAddress()) {
            return this.City + ", " + this.Country;
        }
        else {
            alert('Error');
        }
    }

    //Private Method
    function validateAddress() {
        return true;
    }
}

//var cust1 = Customer();
//alert(cust1);

var custObj = new Customer();
//alert(custObj);
custObj.City = "New York";
//alert(custObj.City);

var custObj2 = new Customer();
//alert(custObj2.City);


custObj.Country = "US";
alert(custObj.FullAddress());