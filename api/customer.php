<?php

//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER RESTFUL API METHODS
//----------------------------------------------------------------------------------------------------------------------

require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

require 'dbconnect.php';    // required | database connection

$app->contentType('text/json; charset=utf-8');  // required | define content and codification


//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER API | GET RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->get('/customers', function() use($db) {

    $sql =  "SELECT * ".
            "FROM mv_customers ".
            "ORDER BY customer_name";

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
    $resArray = array("customers"=>$result);
    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;
});

$app->get('/customers/:customer_id', function($customer_id) use($db) {

    $sql =  "SELECT * ".
            "FROM mv_customers ".
            "WHERE customer_id = :customer_id ";

    $consulta = $db->prepare($sql);

    $consulta->execute(array(':customer_id' => $customer_id));

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

//$app->get('/customers/:customer_id/customerprojects/all', function($customer_id) use($db) {

//    $sql =  "SELECT * ".
//            "FROM mv_customers_projects ".
//            "WHERE customer_id = :customer_id ";
//
//    $consulta = $db->prepare($sql);
//
//    $consulta->execute(array(':customer_id' => $customer_id));
//
//    // Almacenamos los resultados en un array asociativo.
//    $result = $consulta->fetchAll(PDO::FETCH_ASSOC);
//
//    if(isset($_GET['callback'])) {
//        $callback = "{$_GET['callback']}(";
//        $callback2 = ")";
//    }
//    else
//    {
//        $callback = "";
//        $callback2 = "";
//    }
//
//    // Devolvemos ese array asociativo como un string JSON.
//    //$resArray = array("users"=>$result[0]);
//    $resJson = json_encode($result[0]);
//
//    echo $callback.$resJson.$callback2;
//});

$app->get('/listcustomers/all', function() use($db) {

    $sql =  "SELECT * ".
            "  FROM mv_customers".
            " ORDER BY customer_name";

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
    $resArray = array("listCustomers"=>$result);
    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;

});

//----------------------------------------------------------------------------------------------------------------------

$app->get('/listbusinessunit/all', function() use($db) {

    $sql =  "SELECT * ".
        "FROM mt_business_units";

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
    $resArray = array("listBusinessUnit"=>$result);

    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;

});

$app->get('/distributor/all', function() use($db) {

    $sql =  "SELECT * ".
            "FROM mt_distributors";

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
    $resArray = array("listDistributor"=>$result);

    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;

});

$app->get('/listcommercialresource/all', function() use($db) {

    $sql = 	"SELECT * ".
            "FROM mt_resources ".
            "WHERE resource_type_id in (0,1) ".
            "ORDER BY resource_code";

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
    $resArray = array("listCommercialResource"=>$result);

    $resJson = json_encode($resArray);

    echo $callback.$resJson.$callback2;

});



//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER API | PUT RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->put('/customers', function() use($db,$app) {

    $data = json_decode($app->request->getBody()); // to access the data received from the body.

    $sql ="select IFNULL(max(customer_id),0)+1 as new_id from mt_customers"; // calculate new custormer id.
    $consulta = $db->prepare($sql);
    $consulta->execute();
    $result = $consulta->fetchAll(PDO::FETCH_ASSOC);
    $newid = $result[0]["new_id"];

    //insert mt_customers
    $consulta=$db->prepare($sql =   "INSERT INTO mt_customers ".
                                    "(customer_id, customer_code, customer_name, distributor_id, resource_id, business_unit_id) ".
                                    "VALUES (:customer_id, :customer_code, :customer_name, :distributor_id, :resource_id, :business_unit_id)");

    // parse and execute insert mt_customers statement
    $estado=$consulta->execute(
        array(
            ':customer_id'=> $newid,
            ':customer_code'=> $data->customer_code,
            ':customer_name'=> $data->customer_name,
            ':distributor_id'=> $data->distributor_id,
            ':resource_id'=> $data->resource_id,
            ':business_unit_id'=> $data->business_unit_id
        )
    );

    // insert ct_customers
    $consulta=$db->prepare($sql =   "INSERT INTO ct_customers ".
                                    "(customer_id, phoenix_code)".
                                    "VALUES (:customer_id, :phoenix_code)");

    // parse and execute insert ct_customers statement
    $estado=$consulta->execute(
        array(
            ':customer_id'=> $newid,
            ':phoenix_code'=> $data->phoenix_code
        )
    );

    // resturn new calculated customer id.
    echo(json_encode(array('customer_id'=>$newid)));

});



//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER API | POST RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->post('/customers/:customer_id', function($customer_id) use($db,$app) {

    $data = json_decode($app->request->getBody()); // to access the data received from the body.

    // update mt_customers
    $consulta=$db->prepare($sql = 	"update mt_customers ".
        "set customer_code = :customer_code ".
        ", customer_name = :customer_name ".
        ", distributor_id = :distributor_id ".
        ", resource_id = :resource_id ".
        ", business_unit_id = :business_unit_id ".
        "where customer_id = :customer_id ");

    // parse and execute update mt_customers statement
    $estado=$consulta->execute(
        array(
            ':customer_code'=> $data->customer_code,
            ':customer_name'=> $data->customer_name,
            ':distributor_id'=> $data->distributor_id,
            ':resource_id'=> $data->resource_id,
            ':business_unit_id'=> $data->business_unit_id,
            ':customer_id'=> $customer_id
        )
    );

    // update ct_customers
    $consulta=$db->prepare($sql = 	"update ct_customers ".
        "set phoenix_code = :phoenix_code ".
        "where customer_id = :customer_id ");

    // parse and execute update ct_customers statement
    $estado=$consulta->execute(
        array(
            ':phoenix_code'=> $data->phoenix_code,
            ':customer_id'=> $customer_id
        )
    );


});



//----------------------------------------------------------------------------------------------------------------------
// CUSTOMER API | DELETE RESTFUL API METHOD
//----------------------------------------------------------------------------------------------------------------------

$app->delete('/customers/:customer_id', function($customer_id) use($db) {

    $consulta=$db->prepare($sql = 	"DELETE FROM mt_customers ".
                                    "WHERE customer_id = :customer_id ");

    $estado=$consulta->execute(array(':customer_id' => $customer_id));

    //$consulta=$db->prepare($sql = 	"DELETE FROM ct_customers ".
    //                                "WHERE customer_id = :customer_id ");

    //$estado=$consulta->execute(array(':customer_id' => $customer_id));

});



$app->run();

?>