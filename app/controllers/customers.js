
//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER CONTROLLER
//----------------------------------------------------------------------------------------------------------------------


app.controller("customerController", function($scope, $http, $state, $stateParams, distributorService, customerService) {


    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | GET CUSTOMER LIST FUNCTION
    //------------------------------------------------------------------------------------------------------------------

    //$scope.getCustomerList = function() {



        //console.log("call getCustomerList()");

        //var url = "../api/customer.php/customers?callback=JSON_CALLBACK";

        //$http.jsonp(url).success(function(resp){

        //    //load instance data into scope
        //    $scope.data = resp.customers;

        //});

        //console.log("back getCustomerList()");
    //};


    $scope.getCustomerProjects = function() {

        //console.log("llama a getProjectList");
        //
        //var url = "../api/project.php/projects?callback=JSON_CALLBACK";
        //
        //$http.jsonp(url).success(function(resp){
        //
        //    //load instance data into scope
        //    $scope.listCustomerProjects = resp.projects;
        //
        //    console.log("success project list")
        //});
        //
        //console.log("back getProjectList");

        // to implement

        console.log("file: customer.js | customerController | executing function getCustomerProjects("+ pCustomerId+")");

        $scope.message = "";
        $scope.error = false;

        customerService.getCustomerProjects(pCustomerId) //falta crear
            .success(function(resp){
                $scope.listCustomerProjects = resp; //load instance data into scope
            })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.message = "Inexistent customer " + pCustomerId;
                $scope.error = true;
            });

        console.log("file: customer.js | customerController | executed function getCustomerProjects("+ pCustomerId+")");

    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | GET CUSTOMER FUNCTION
    //------------------------------------------------------------------------------------------------------------------

    $scope.getCustomer = function(pCustomerId) {

        console.log("file: customer.js | customerController | executing function getCustomer("+ pCustomerId+")");

        $scope.message = "";
        $scope.error = false;

        customerService.getCustomer(pCustomerId)
            .success(function(resp){
                $scope.data = resp; //load instance data into scope
            })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.message = "Inexistent customer " + pCustomerId;
                $scope.error = true;
            });

        console.log("file: customer.js | customerController | executed function getCustomer("+ pCustomerId+")");
    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | CREATE CUSTOMER FUNCTION
    //------------------------------------------------------------------------------------------------------------------

    $scope.createCustomer = function (pdata) {

        console.log('file: customer.js | customerController | executing function createCustomer');

        $scope.message = "";
        $scope.error = false;

        console.log(pdata);

        customerService.createCustomer(pdata)
            .success(function(resp){
                //$scope.data = resp; //load instance data into scope
                $scope.dbsatus = status; // new
                $scope.message = "Customer created succesfuly";
                $scope.newid = resp;
                pdata.customer_id = resp.customer_id; // used to change to edit status
                $scope.editStatus = "edit";
            })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.dbsatus = status;
                $scope.message = "Oops! something goes wrong! ";
                $scope.error = true;
            });

        console.log('file: customer.js | customerController | executed function createCustomer');

    };


    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | UPDATE CUSTOMER FUNCTION
    //------------------------------------------------------------------------------------------------------------------

    $scope.updateCustomer = function (pdata) {

        console.log('file: customer.js | customerController | executing function updateCustomer(' + pdata.customer_id + ')');

        $scope.message = "";
        $scope.error = false;

        console.log(pdata);

        customerService.updateCustomer(pdata)
            .success(function(resp){
                //$scope.data = resp; //load instance data into scope
                $scope.dbsatus = status; // new
                $scope.message = "Customer saved succesfuly";
            })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.dbsatus = status;
                $scope.message = "Oops! something goes wrong! ";
                $scope.error = true;
            });

        console.log('file: customer.js | customerController | executed function updateCustomer(' + pdata.customer_id + ')');

    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | DELETE CUSTOMER FUNCTION
    //------------------------------------------------------------------------------------------------------------------

    $scope.deleteCustomer = function (pdata) {

        console.log('file: customer.js | customerController | executing function deleteCustomer(' + pdata.customer_id + ')');

        $scope.message = "";
        $scope.error = false;

        //console.log(pdata);

        customerService.deleteCustomer(pdata.customer_id)
            .success(function(resp){
                //$scope.data = resp; //load instance data into scope
                $scope.dbsatus = status; // new
                $scope.message = "Customer saved succesfuly";
            })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.dbsatus = status;
                $scope.message = "Oops! something goes wrong! ";
                $scope.error = true;
            });

        console.log('file: customer.js | customerController | executed function deleteCustomer(' + pdata.customer_id + ')');

    };





    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | ACTION FORMS
    //------------------------------------------------------------------------------------------------------------------

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | GO CUSTOMER ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.goCustomerActionForm = function (pCustomer_id) {

        console.log("file: customer.js | customerController | executed Action Form goCustomerActionForm (customerId: " + pCustomer_id + ")");

        $state.go('customers_edit',{"customerId" : pCustomer_id});

    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | NEW CUSTOMER ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.newCustomerActionForm = function () {

        console.log("file: customer.js | customerController | executed Action Form newCustomerActionForm");

        $state.go("customers_new");

    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | SAVE CUSTOMER ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.saveCustomerActionForm = function (){

        // ojo! llamar a funcion de validar campos

        console.log("file: customer.js | customerController | executing Action Form saveCustomerActionForm");

        if ($scope.error == false) {

            if ($scope.editStatus == "New") {

                //console.log($scope.data);

                $scope.createCustomer($scope.data); //Errror!! cambiar llamada a Service, problema pData !!!!!!!!!!!!!!!!!
                //console.log(pdata.customer_id);
                //$state.go('customers_edit',{"customerId" : $scope.data.customer_id}); //hay que corregir, no redirecciona el código
                //goCustomerActionForm($scope.data.customer_id);

            } else {
                $scope.updateCustomer($scope.data);

            }
        }
    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | DELETE CUSTOMER ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.deleteCustomerActionForm = function (){
            $scope.deleteCustomer($scope.data); //Errror!! cambiar llamada a Service, problema pData !!!!!!!!!!!!!!!!!
            $state.go('customers');

    };

    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | CANCEL CUSTOMER ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.cancelCustomerActionForm = function () {
        $state.go('customers');
    };





    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | GO PROJECT ACTION FORM
    //------------------------------------------------------------------------------------------------------------------

    $scope.goProject = function (pProject_id) {
        //$location.path( project_id );
        // $state.go('projects_edit','{projectId:'+pProject_id+'}')

        console.log("este es el parametro:" + pProject_id);

        $state.go('projects_edit',{"projectId":pProject_id});

    };





    //------------------------------------------------------------------------------------------------------------------
    // CUSTOMER CONTROLLER | MAIN CONTROLLER FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    if ($state.current.name.match("customers_new*")) {
        // Here are implemented the services functions.

        console.log("file: customer.js | customerController | executed function main | $state.current.name.match = " + $state.current.name);

        $scope.editStatus = "New"; //

        $scope.showSave = true;
        $scope.showNew = false;
        $scope.showDelete = false;
        $scope.showCancel = true;
        $state.go('customers_new.information');

        $scope.tabData = [
            {heading: 'Information', route:'customers_new.information'}
        ];


    } else if ($state.current.name.match("customers_edit*")) {
        // Here are implemented the services functions.

        console.log("file: customer.js | customerController | executed function main | $state.current.name.match = " + $state.current.name + ", customerId: " + $stateParams.customerId);

        $scope.editStatus = "Edit";

        $scope.getCustomer($stateParams.customerId);
        console.log($stateParams);
        $scope.showSave = true;
        $scope.showNew = true;
        $scope.showDelete = true;
        $scope.showCancel = true;
        //$state.go('customers_edit.information');

        $scope.tabData = [
            {heading: 'Information', route:'customers_edit.information'},
            {heading: 'Projects', route: 'customers_edit.projects'},
            {heading: 'Statistics', route: 'customers_edit.statistics'}
        ];

        $scope.getCustomerProjects(); //ejemplos

    } else if ($state.current.name === "customers") {
        //$scope.getCustomerList();
        $scope.showNew = true;
        $scope.showCancel = true;
    }


    /*
    //to be implement --> si se pasa parametro llamamos a la api
    if (typeof $stateParams.customerId == 'undefined') {

        $scope.getCustomerList();

    } else {

        console.log("log -> load all select controls active")

        $scope.getListDistributor();
        $scope.getListResource();
        $scope.getListBusinessUnit();

        if ($state == "customers.new") {
            //set status to new
            $scope.editStatus = "New";
            console.log ($location.path());
        } else {
            $scope.editStatus = "Edit";
            $scope.getCustomer($stateParams.customerId);
        }

    }
    */

});
