<?php

//----------------------------------------------------------------------------------------------------------------------
// PROJECT TASK RESTFUL API METHODS
//----------------------------------------------------------------------------------------------------------------------

require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

require 'dbconnect.php';    // required | database connection

$app->contentType('text/json; charset=utf-8');  // required | define content and codification



//----------------------------------------------------------------------------------------------------------------------
// PROJECT TASK API | GET RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->get('/projecttask/:projecttask_id', function($pProjectTaskId) use($db) {

    $sql =  "SELECT * ".
            "FROM mv_projects_tasks ".
            "WHERE project_task_id = :project_task_id ";

    $consulta = $db->prepare($sql);

    $consulta->execute(array(':project_task_id' => $pProjectTaskId));

    // Almacenamos los resultados en un array asociativo.
    $result = $consulta->fetchAll(PDO::FETCH_ASSOC);

    if(isset($_GET['callback'])) {
        $callback = "{$_GET['callback']}(";
        $callback2 = ")";
    }
    else
    {
        $callback = "";
        $callback2 = "";
    }

    // Devolvemos ese array asociativo como un string JSON.
    //$resArray = array("users"=>$result[0]);
    $resJson = json_encode($result[0]);

    echo $callback.$resJson.$callback2;
});

$app->get('/listprojecttask/all', function() use($db) {

    $sql =  "SELECT * ".
            "FROM mv_projects_tasks";

    $consulta = $db->prepare($sql);

    $consulta->execute();

    // Almacenamos los resultados en un array asociativo.
    $result = $consulta->fetchAll(PDO::FETCH_ASSOC);

    if(isset($_GET['callback'])) {
        $callback = "{$_GET['callback']}(";
        $callback2 = ")";
    }
    else
    {
        $callback = "";
        $callback2 = "";
    }

    // Devolvemos ese array asociativo como un string JSON.
    $resArray = array("projecttasks"=>$result);
    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;

});

//----------------------------------------------------------------------------------------------------------------------





//----------------------------------------------------------------------------------------------------------------------
// PROJECT TASK API | PUT RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------





//----------------------------------------------------------------------------------------------------------------------
// PROJECT TASK API | POST RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------





//----------------------------------------------------------------------------------------------------------------------
// PROJECT TASK API | DELETE RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------





$app->run();

?>