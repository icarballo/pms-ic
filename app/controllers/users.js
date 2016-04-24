/**
 * Created by icarballo on 26/8/15.
 */
app.directive('userList', function() {
    return {
        //templateUrl: "../templates/mytemplate.html"
        restrict: 'E',
        template: 'Id: {{d.user_id}} Name: {{d.user_name}} Surname: {{d.user_surname}} Email: {{d.user_email}}',
        scope: {
            d: '=data'
        }
    };
});

app.controller("userController", function($scope, $routeParams, $http) {

        $scope.updateUser = function () {
            var url = "../api/v1.php/users/" + $scope.data.user_id + "/all";

            $scope.dbsatus = "";

            // Simple POST request
            $http.post(url, $scope.data).
                success(function(data, status, headers, config) {
                    // this callback will be called asynchronously
                    // when the response is available
                    $scope.dbsatus = status;
                    $scope.message = "grabado correctamente";

                }).
                error(function(data, status, headers, config) {
                    // called asynchronously if an error occurs
                    // or server returns response with an error status.
                    $scope.dbsatus = status;

                });

        };

        $scope.getUserData = function(pUserId) {

            console.log("llama a getUserData "+ pUserId);

            $scope.message = "";
            $scope.error = false;

            var url = "../api/v1.php/users/" + pUserId + "?callback=JSON_CALLBACK";

            $http.jsonp(url).success(function(resp){

                //load instance data into scope
                $scope.data = resp;

                // $scope.data.userId = resp.users[0].user_id;
                //$scope.data.userName = resp.users[0].user_name;
                //$scope.data.userEmail = resp.users[0].user_email;

                console.log("success")
            })
                .error(function(data, status, headers, config) {
                    // called asynchronously if an error occurs
                    // or server returns response with an error status.
                    $scope.message = "usuario inexistente";
                    $scope.error = true;
                });;
        };

        $scope.getUserList = function() {

            console.log("llama a getUserList");

            var url = "../api/v1.php/users?callback=JSON_CALLBACK";

            $http.jsonp(url).success(function(resp){

                //load instance data into scope
                $scope.data = resp.users;

                console.log("success user list")
            });
        };

        //si se pasa parametro llamamos a la api
        if (typeof $routeParams.userId != 'undefined') {
            $scope.getUserData($routeParams.userId);
        } else {
            $scope.getUserList();
        }


    });

