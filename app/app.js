var app;
app = angular.module("myApp", ['ui.router','ui.bootstrap','ui.router.tabs'])

    .controller("mainController", function ($scope) {

        $scope.debugMode = true;

        $scope.navTab=[];
        $scope.navTask=[];

        //$scope.navTab[1]="nothing";
        //$scope.navTab[2]="nothing";

    })

    /* definición del redireccionamiento */
    .config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {

        $stateProvider

            .state('home', {
                url:"/",
                template:"home!"
            })

            //-------------------------------------------------
            // CUSTOMER | LIST MODE
            //-------------------------------------------------

            //.state('customers', {
            //    url: '/customers',
            //    abstract: true
            //})

            .state('customers', {
            //.state('customers.list', {
                url: '/customers',
                templateUrl: 'views/customerlist.html',
                resolve: {
                    customerList : function(customerService){
                        return customerService.getListCustomers();
                    }
                },
                controller: function(customerList, $scope){
                    $scope.data = customerList.data.customers;
                }
            })

            //-------------------------------------------------
            // CUSTOMER | NEW MODE
            //-------------------------------------------------

            .state('customers_new', {

                url: '/customers/new',
                templateUrl: 'views/customer.html',

                // RESOLVE EXECUTION SERVICES FUNCTIONS BEFORE CONTROLLER UPLOAD
                resolve: {
                    distributorList : function(distributorService, $stateParams){
                        console.log('file: app.js | state: /customer/new | resolve: call function distributorList');
                        return distributorService.getListDistributors();
                    },

                    comercialResourceList : function(resourceService){
                        console.log('file: app.js | state: /customer/new | resolve: call function comercialResourceList');
                        return resourceService.getListCommercialResources();
                    },

                    businessUnitList : function(customerService){
                        console.log('file: app.js | state: /customer/new | resolve: call function businessUnitList');
                        return customerService.getListBusinessUnit();
                    }
                },

                // ASOCIATE RESOLVED EXECUTIONS SERVICES FUNCTIONS BEFORE CONTROLLER UPLOAD
                controller: function($stateParams, distributorList, comercialResourceList, businessUnitList, $scope){

                    //$stateParams.customerId;

                    $scope.listDistributor = distributorList.data.listDistributor;
                    $scope.listCommercialResource = comercialResourceList.data.listCommercialResource; //el result en el json viene dentro de un objeto llamado listCommercialResource
                    $scope.listBusinessUnit = businessUnitList.data.listBusinessUnit; //el result en el json viene dentro de un objeto llamado listCommercialResource

                }
            })

            // CUSTOMER | NEW > MODE | INFORMATION > TAB
            .state('customers_new.information',{
                url: '/information',
                templateUrl:'templates/customer_information.html'

            })

            // CUSTOMER | NEW > MODE | INFORMATION > TAB
            //.state('customers_new.customerprojects',{
            //    url: '/projectslist',
            //    templateUrl:'templates/customer_projectslist.html'
            //})

            //-------------------------------------------------
            // CUSTOMER | EDIT MODE
            //-------------------------------------------------

            .state('customers_edit', {

                url: '/customers/:customerId',
                templateUrl: 'views/customer.html',

                // RESOLVE EXECUTION SERVICES FUNCTIONS BEFORE CONTROLLER UPLOAD
                resolve: {

                    distributorList : function(distributorService){
                        // AQUI SE PODRIA HACER EL CONTROL DE SUCCESS O ERROR
                        console.log('file: app.js | state: /customer/edit | resolve: call function distributorList');
                        return distributorService.getListDistributors();
                    },

                    comercialResourceList : function(resourceService){
                        console.log('file: app.js | state: /customer/edit | resolve: call function comercialResourceList');
                        return resourceService.getListCommercialResources();
                    },

                    businessUnitList : function(customerService){
                        console.log('file: app.js | state: /customer/edit | resolve: call function businessUnitList');
                        return customerService.getListBusinessUnit();
                    }
                },

                // ASOCIATE RESOLVED EXECUTIONS SERVICES FUNCTIONS BEFORE CONTROLLER UPLOAD
                controller: function($stateParams, distributorList, comercialResourceList, businessUnitList, $scope){ // inject resolved functions.

                    $stateParams.customerId;

                    $scope.listDistributor = distributorList.data.listDistributor;
                    $scope.listCommercialResource = comercialResourceList.data.listCommercialResource; //el result en el json viene dentro de un objeto llamado listCommercialResource
                    $scope.listBusinessUnit = businessUnitList.data.listBusinessUnit;
                }
            })

            // CUSTOMER | EDIT > MODE | INFORMATION > TAB
            .state('customers_edit.information',{
                url: '/information',
                templateUrl:'templates/customer_information.html'
            })

            // CUSTOMER | EDIT > MODE | PROJECT TAB
            .state('customers_edit.projects',{
                url: '/projects',
                templateUrl: 'templates/customer_projects.html'
            })

            // CUSTOMER | EDIT MODE | STATISTICS TAB
            .state('customers_edit.statistics',{
                url: '/gantt',
                template: 'template de statistics'
            })


            //-------------------------------------------------
            // PROJECT | LIST MODE
            //-------------------------------------------------

            .state('projects', {
                url: '/projects',
                controller: 'projectController',
                templateUrl: 'views/projectlist.html'
            })

            //-------------------------------------------------
            // PROJECT | EDIT MODE
            //-------------------------------------------------

            .state('projects_edit', {
                url: '/projects/:projectId',
                controllerAs: 'projectController',
                templateUrl: 'views/project.html',
                controller: function($stateParams){
                    return $stateParams.projectId
                },
                data: {
                    title: 'Edit customer'
                }
            })



    }]);

