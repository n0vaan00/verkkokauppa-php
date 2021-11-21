<?php
require_once '../inc/headers.php';
require_once '../inc/functions.php';

$input = json_decode(file_get_contents('php://input'));
$trnro = filter_var($input->trnro,FILTER_SANITIZE_STRING);

 try {
    $db = openDb();
    
    $query = $db->prepare('delete from tuoteryhma where trnro=(:trnro)');
    $query->bindValue(':trnro',$trnro,PDO::PARAM_STR);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('trnro' => $trnro);
    print json_encode($data);
 } catch (PDOException $pdoex) {
    returnError($pdoex);
}