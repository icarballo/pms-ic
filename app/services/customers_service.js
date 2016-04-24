
//----------------------------------------------------------------------------------------------------------------------
// DISTRIBUTOR SERVICE
//----------------------------------------------------------------------------------------------------------------------

    app.service('distributorService', ['$http', function($http) {

        var urlBase = '../api/customer.php/distributor';
        var dataService = {};

        dataService.getListDistributors = function () {
            console.log('file: customer_service.js | service: resourceService | executing function getListDistributors');
            return $http.get(urlBase + '/all');
        };

        return dataService;
    }]);

//----------------------------------------------------------------------------------------------------------------------
// RESOURCE SERVICE
//----------------------------------------------------------------------------------------------------------------------

   app.service('resourceService', ['$http', function($http) {

       var urlBase = '../api/customer.php/listcommercialresource';
       var dataService = {};

       dataService.getListCommercialResources = function () {
           console.log('file: customer_service.js | service: resourceService | executing function getListCommercialResources');
           return $http.get(urlBase + '/all');
       }

       return dataService;

   }]);

//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER SERVICE
//----------------------------------------------------------------------------------------------------------------------

   app.service('customerService', ['$http', function ($http) {

        var urlBase = '../api/customer.php/customers';
        var dataService = {};

        dataService.getCustomer = function (pCustomerId) {
            console.log('file: customer_service.js | service: customerService | executing function getCustomer customer_id: ' + pCustomerId);
            return $http.get(urlBase + '/' + pCustomerId);
            console.log('file: customer_service.js | service: customerService | executed function getCustomer customer_id: ' + pCustomerId);
        };

        dataService.createCustomer = function (pData) {
            console.log('file: customer_service.js | service: customerService | executing function createCustomer');
            return $http.put(urlBase, pData);
            console.log('file: customer_service.js | service: customerService | executed function createCustomer');
        };

        dataService.updateCustomer = function (pData) {
            console.log("file: customer_service.js | service: customerService | executing function updateCustomer customer_id: " + pData.customer_id);
            return $http.post(urlBase + '/' + pData.customer_id, pData);
            console.log("file: customer_service.js | service: customerService | executing function updateCustomer customer_id: " + pData.customer_id);
        };

        dataService.deleteCustomer = function (pCustomerId) {
            console.log('file: customer_service.js | service: customerService | executing function deleteCustomer customer_id: ' + pCustomerId);
            return $http.delete(urlBase + '/' + pCustomerId);
            console.log('file: customer_service.js | service: customerService | executed function deleteCustomer customer_id: ' + pCustomerId);
        };

        dataService.getListCustomers = function() {
            console.log('file: customer_service.js | service: customerService | executing function getListCustomers');
            return $http.jsonp(urlBase + '?callback=JSON_CALLBACK');
        };

        dataService.getListBusinessUnit = function () {
            var url = "../api/customer.php/listbusinessunit";
            var dataService = {};
            console.log('file: customer_service.js | service: customerService | executing function getListBusinessUnit');
            return $http.get(url + '/all');

        };

        //dataService.getCustomerProjects = function (pCustomerId) {
        //   console.log('file: customer_service.js | service: customerService | executing function getCustomerProjects customer_id: ' + pCustomerId);
        //    return $http.get(urlBase + '/' + pCustomerId + '/customerprojects/all');
        //   console.log('file: customer_service.js | service: customerService | executed function getCustomerProjects customer_id: ' + pCustomerId);
        //};

        return dataService;

    }]);
