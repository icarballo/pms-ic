/*
 * Controller: projects.js.
 * Data creation: 28/08/2015
 */

app.directive('projectList', function() {
    return {
        restrict: 'E',
        //template: 'Id: {{d.project_id}} Code: {{d.project_code}} Name: {{d.project_name}} ',
        templateUrl: "templates/projectlist.html",
        scope: {
            d: '=data'
        }
    };
});

// Controller definition
app.controller("projectController", function($scope, $http, $state, $stateParams) {

    // -----------------
    // project functions
    // -----------------

    $scope.createProject = function () {

        console.log("call createProject()");

        var url = "../api/project.php/projects";

        $scope.dbsatus = "";

        // Simple PUT request
        $http.put(url, $scope.data).
            success(function(data, status, headers, config) {
                // this callback will be called asynchronously when the response is available
                $scope.dbsatus = status;
                $scope.message = "Project created succesfuly";
                $scope.newid = data;

                $scope.data.project_id = data.project_id;
                $scope.editStatus = "edit";

            }).
            error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.dbsatus = status;
                $scope.message ="Oops! something goes wrong!";

            });

        console.log("back createProject()");
    };

    $scope.updateProject = function () {

        console.log("call updateProject()");

        var url = "../api/project.php/projects/" + $scope.data.project_id;

        $scope.dbsatus = "";

        // Simple POST request
        $http.post(url, $scope.data).
            success(function(data, status, headers, config) {
                // this callback will be called asynchronously
                // when the response is available
                $scope.dbsatus = status;
                $scope.message = "Project saved succesfuly";

            }).
            error(function(data, status, headers, config) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
                $scope.dbsatus = status;

            });
        console.log("back updateProject()");
    };

    $scope.deleteProject = function () {

        console.log("call deleteProject()");

        var url = "../api/project.php/projects/" + $scope.data.project_id;

        $scope.dbsatus = "";

        // Simple DELETE request
        $http.delete(url, $scope.data).
            success(function(data, status, headers, config) {
                // this callback will be called asynchronously when the response is available
                $scope.dbsatus = status;
                $scope.message = "Project deleted succesfuly";

                $scope.editStatus = "new";

            }).
            error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.dbsatus = status;
                $scope.message ="Oops! something goes wrong!";

            });

        console.log("back deleteProject()");
    };

    $scope.getProject = function(pProjectId) {

        console.log("call getProject ("+ pProjectId+")");

        $scope.message = "";
        $scope.error = false;

        var url = "../api/project.php/projects/" + pProjectId + "?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into scope
            $scope.data = resp;

        })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.message = "Inexistent project.";
                $scope.error = true;
            });;

        console.log("back getProject ("+ pProjectId+")");
    };

    $scope.getProjectList = function() {

        console.log("llama a getProjectList");

        var url = "../api/project.php/projects?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into scope
            $scope.data = resp.projects;

            console.log("success project list")
        });

        console.log("back getProjectList");
    };

    $scope.getListProjectTypes = function(){

        console.log("call getListProjectTypes()");

        var url = "../api/project.php/listprojecttypes/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into array projecttypes[] scope
            $scope.listProjectTypes = resp.listProjectTypes;

        });

        console.log("back getListProjectTypes()");
    };

    $scope.getListProjectStatus = function(){

        console.log("call getListProjectStatus()");

        var url = "../api/project.php/listprojectstatus/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into array projecttypes[] scope
            $scope.listProjectStatus = resp.listProjectStatus;
            //console.log("success project types list" + resp.users[0].user_id)
        });

        console.log("back getListProjectStatus()");
    };

    $scope.getListProjectPhase = function(){

        console.log("call getListProjectPhase()");

        var url = "../api/project.php/listprojectphase/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into array projecttypes[] scope
            $scope.listProjectPhase = resp.listProjectPhase;
            //console.log("success project types list" + resp.users[0].user_id)
        });

        console.log("back getListProjectPhase()");
    };

    // need to customer api resfull moved
    $scope.getListCustomers = function(){

        console.log("call getListCustomers()");

        var url = "../api/customer.php/listcustomers/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into array customers[] scope
            $scope.listCustomers = resp.listCustomers;
            //console.log("success project types list" + resp.users[0].user_id)
        });

        console.log("back getListCustomers()");
    };

    $scope.getListRequestTypes = function(){

        console.log("call getListRequestTypes()");

        var url = "../api/project.php/listrequesttypes/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into array RequestTypes[] scope
            $scope.listRequestTypes = resp.listRequestTypes;
            //console.log("success project types list" + resp.users[0].user_id)
        });

        console.log("back getListRequestTypes()");
    };

    $scope.getProjectTasks = function() {

        console.log("llama a getProjectTasks");

        var url = "../api/projecttask.php/listprojecttask/all?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into scope
            $scope.listTasks = resp.projecttasks;

            console.log("success project tasks")
        });

        console.log("back getProjectTasks");
    };

    // ------------
    // task functions
    // ------------

    $scope.getProjectTask = function(pProjectTaskId) {

        console.log("call getProjectTask ("+ pProjectTaskId+")");

        $scope.message = "";
        $scope.error = false;

        var url = "../api/projecttask.php/projecttask/" + pProjectTaskId + "?callback=JSON_CALLBACK";

        $http.jsonp(url).success(function(resp){

            //load instance data into scope
            $scope.dataTask = resp;

        })
            .error(function(data, status, headers, config) {
                // called asynchronously if an error occurs or server returns response with an error status.
                $scope.message = "Inexistent project task.";
                $scope.error = true;
            });;

        console.log("back getProjectTask ("+ pProjectTaskId+")");
    };

    $scope.editProjectTask = function(pProjectTaskId) {
        console.log("call editProjectTask ("+ pProjectTaskId+")");
        $scope.getProjectTask(pProjectTaskId);
        $scope.changeNavTask('2');
        console.log("call editProjectTask ("+ pProjectTaskId+")");
    }

    // ------------
    // form actions
    // ------------

    $scope.saveProject = function (){
        // ojo! llamar a funcion de validar campos
        if ($scope.editStatus == "New" ) {
            $scope.createProject();
        } else {
            $scope.updateProject();
        }
    };

    $scope.goProject = function (pProject_id) {
        //$location.path( project_id );
       // $state.go('projects_edit','{projectId:'+pProject_id+'}')

        console.log("este es el parametro:" + pProject_id);

        $state.go('projects_edit',{"projectId":pProject_id});

    };

    $scope.newProject = function () {
        $location.path("projects/new");
    };

    $scope.newTask = function () {
        $scope.enableNewTask="active";
    };

    $scope.changeNavTab = function (navTab) {

        console.log("call changeNavTab()");

        $scope.navTab=[];                       // clear navTab[] array.
        $scope.navTab[navTab] = "active";       // active navTab[navTab] element.

        console.log("back changeNavTab()");

    };

    $scope.changeNavTask = function (navTask) {

        console.log("call changeNavTask()");

        $scope.navTask=[];                       // clear navTab[] array.
        $scope.navTask[navTask] = "active";       // active navTab[navTab] element.

        console.log("back changeNavTask()");

    };



   // var project_tmp =  {project_id:"", project_code:"", project_description:"", customer_id:""};


    // ------------
    // form main
    // ------------
    switch ($state.current.name) {

        case "projects":
            $scope.getProjectList();
            $scope.getListProjectStatus(); // Carga del combo de filtrado

            //select status by default OnGoing
            $scope.filterProjectStatus = "1";
            break;

        case "projects_new":
            $scope.changeNavTab('1');
            $scope.changeNavTask('1');
            $scope.getListProjectTypes();
            $scope.getListRequestTypes();
            $scope.getListProjectStatus();
            $scope.getListProjectPhase();
            $scope.getListCustomers();
            $scope.getProjectTasks();

            $scope.editStatus = "New";

            break;

        case "projects_edit":
            $scope.changeNavTab('1');
            $scope.changeNavTask('1');
            $scope.getListProjectTypes();
            $scope.getListRequestTypes();
            $scope.getListProjectStatus();
            $scope.getListProjectPhase();
            $scope.getListCustomers();
            $scope.getProjectTasks();

            $scope.editStatus = "Edit";
            $scope.getProject($stateParams.projectId);

    }

    /*
    //to be implement --> si se pasa parametro llamamos a la api
    if (typeof $stateParams.projectId == 'undefined') {
        $scope.getProjectList();
        $scope.getListProjectStatus();

        //select status by default OnGoing
        $scope.filterProjectStatus = "1";

    } else {
        console.log("dentro de get listas")
        $scope.changeNavTab('1');
        $scope.changeNavTask('1');
        $scope.getListProjectTypes();
        $scope.getListRequestTypes();
        $scope.getListProjectStatus();
        $scope.getListProjectPhase();
        $scope.getListCustomers();
        $scope.getProjectTasks();

        if ($state == "projects.new") {
            //set status to new
            $scope.editStatus = "New";
            console.log ($location.path());

          //  $scope.data = project_tmp;


        } else {
            $scope.editStatus = "Edit";
            $scope.getProject($routeParams.projectId);
        }

    }
    */

});
