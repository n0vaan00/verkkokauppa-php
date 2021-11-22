<?php
require_once '../inc/headers.php';
require_once '../inc/functions.php';

$input = json_decode(file_get_contents('php://input'));
$tuotenro = filter_var($input->tuotenro,FILTER_SANITIZE_STRING);

 try {
    $db = openDb();
    
    $query = $db->prepare('delete from tuote where tuotenro=(:tuotenro)');
    $query->bindValue(':tuotenro',$tuotenro,PDO::PARAM_STR);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('tuotenro' => $tuotenro);
    print json_encode($data);
 } catch (PDOException $pdoex) {
    returnError($pdoex);
}