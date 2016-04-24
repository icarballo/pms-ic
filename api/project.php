<?php

//----------------------------------------------------------------------------------------------------------------------
// PROJECT RESTFUL API METHODS
//----------------------------------------------------------------------------------------------------------------------

require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

require 'dbconnect.php';    // required | database connection

$app->contentType('text/json; charset=utf-8');  // required | define content and codification



//----------------------------------------------------------------------------------------------------------------------
// PROJECT API | GET RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------


$app->get('/users', function() use($db) {

	$sql = 	"SELECT * ".
			"FROM mt_users";

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
	$resArray = array("users"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;

});

$app->get('/users/:user_id', function($user_id) use($db) {

			$sql = "SELECT * ".
				   "FROM mt_users ".
				   "WHERE user_id = :user_id ";
			
            $consulta = $db->prepare($sql);
 
            // En el execute es dónde asociamos el :param1 con el valor que le toque.
            $consulta->execute(array(':user_id' => $user_id));			

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

$app->get('/projects', function() use($db) {

	$sql = "SELECT * ".
		"  FROM mv_customers_projects".
		" ORDER BY customer_name, project_name, project_code";;

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
	$resArray = array("projects"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;

});

$app->get('/projects/:project_id', function($project_id) use($db) {

	$sql = 	"SELECT * ".
			" FROM mv_customers_projects".
			" WHERE project_id = :project_id ";

	$consulta = $db->prepare($sql);

	$consulta->execute(array(':project_id' => $project_id));

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

//----------------------------------------------------------------------------------------------------------------------

$app->get('/listprojecttypes/all', function() use($db) {

	$sql = 	"SELECT * ".
			"FROM mt_project_types";

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
	$resArray = array("listProjectTypes"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;

});

$app->get('/listrequesttypes/all', function() use($db) {

	$sql = 	"SELECT * ".
			"FROM mt_request_types";

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
	$resArray = array("listRequestTypes"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;
});

$app->get('/listprojectstatus/all', function() use($db) {

	$sql = 	"SELECT * ".
			"FROM mt_project_status";

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
	$resArray = array("listProjectStatus"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;

});

$app->get('/listprojectphase/all', function() use($db) {

	$sql = 	"SELECT * ".
			"FROM mt_project_phases ".
			"ORDER BY project_phase_id";

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
	$resArray = array("listProjectPhase"=>$result);
	$resJson = json_encode($resArray);

	echo $callback.$resJson.$callback2;

});


//----------------------------------------------------------------------------------------------------------------------
// PROJECT API | PUT RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->put('/projects', function() use($db,$app) {

	$data = json_decode($app->request->getBody());	// to access the data received from the body.

	//get next id
	$sql ="select IFNULL(max(project_id),0)+1 as new_id from mt_projects"; // calculate new project id.
	$consulta = $db->prepare($sql);
	$consulta->execute();
	$result = $consulta->fetchAll(PDO::FETCH_ASSOC);
	$newid = $result[0]["new_id"];

	// insert query
	$consulta=$db->prepare($sql = "insert into mt_projects ".
		"(project_id, project_code, project_name, project_description, customer_id, project_type_id, request_type_id, project_status_id, project_phase_id)".
		"values (:project_id, :project_code, :project_name, :project_description, :customer_id, :project_type_id, :request_type_id, :project_status_id, :project_phase_id)");

	// parse and execute insert statement
	$estado=$consulta->execute(
		array(
			':project_id'=> $newid,
			':project_code'=> $data->project_code,
			':project_name'=> $data->project_name,
			':project_description'=> $data->project_description,
			':customer_id'=> $data->customer_id,
			':project_type_id'=> $data->project_type_id,
			':request_type_id'=> $data->request_type_id,
			':project_status_id'=> $data->project_status_id,
			':project_phase_id'=> $data->project_phase_id
		)
	);

	// resturn new calculated project id.
	echo(json_encode(array('project_id'=>$newid)));

});



//----------------------------------------------------------------------------------------------------------------------
// PROJECT API | POST RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->post('/users/:user_id', function($user_id) use($db,$app) {
		
		
		// Para acceder a los datos recibidos del body
		$data = json_decode($app->request->getBody());	 

		$consulta=$db->prepare($sql = "update mt_users ".
									  "set user_name = :user_name, ".
                                      "    user_email = :user_email ".
                                      "where user_id = :user_id ");
        
		$estado=$consulta->execute(
				 array(
					 ':user_id'=> $user_id,
					 ':user_name'=> $data->user_name,
                     ':user_email'=> $data->user_email
					 )
				 );
    
});

$app->post('/projects/:project_id', function($project_id) use($db,$app) {
		
    // Para acceder a los datos recibidos del body
	$data = json_decode($app->request->getBody());

	//$consulta=$db->prepare($sql = "insert into tmp_log (logtext) values (:logtext)");
	//$estado=$consulta->execute( array(':logtext'=>$data->project_name ) );
	//$estado=$consulta->execute( array(':logtext'=>$project_id ) );

	$consulta=$db->prepare($sql = 	"update mt_projects ".
								  	"set project_code = :project_code ".
								  	", project_name = :project_name ".
								  	", project_description = :project_description ".
								  	", customer_id = :customer_id ".
								  	", request_type_id = :request_type_id ".
							      	", project_status_id = :project_status_id ".
									", project_phase_id = :project_phase_id ".
                                   	"where project_id = :project_id ");

	$estado=$consulta->execute(
		 array(
			 ':project_code'=> $data->project_code,
			 ':project_name'=> $data->project_name,
			 ':project_description'=> $data->project_description,
			 ':customer_id'=> $data->customer_id,
			 ':request_type_id'=> $data->request_type_id,
			 ':project_status_id'=> $data->project_status_id,
			 ':project_phase_id'=> $data->project_phase_id,
			 ':project_id'=> $project_id
			 )
	 );
    
});



//----------------------------------------------------------------------------------------------------------------------
// PROJECT API | DELETE RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------


$app->delete('/projects/:project_id', function($project_id) use($db) {

	$consulta=$db->prepare($sql = 	"DELETE FROM mt_projects ".
									"WHERE project_id = :project_id ");

	$estado=$consulta->execute(array(':project_id' => $project_id));

});



/*
// POST route
$app->post(
    '/post',
    function () {
        echo 'This is a POST route';
    }
);

// PUT route
$app->put(
    '/put',
    function () {
        echo 'This is a PUT route';
    }
);

// PATCH route
$app->patch('/patch', function () {
    echo 'This is a PATCH route';
});

// DELETE route
$app->delete(
    '/delete',
    function () {
        echo 'This is a DELETE route';
    }
); */

/**
 * Step 4: Run the Slim application
 *
 * This method should be called last. This executes the Slim application
 * and returns the HTTP response to the HTTP customer.
 */

$app->run();

?>