<?php
require_once '../inc/headers.php';
require_once '../inc/functions.php';

$input =json_decode(file_get_contents('php://input'));
$input2 =json_decode(file_get_contents('php://input'));
$input3 =json_decode(file_get_contents('php://input'));
$tuotenimi = filter_var($input->tuotenimi,FILTER_SANITIZE_STRING);
$hinta = filter_var($input2->hinta,FILTER_SANITIZE_STRING);
$trnro = filter_var($input3->trnro,FILTER_SANITIZE_STRING);


 try {
    $db = openDb();
    
    $query = $db->prepare('insert into tuote(tuotenimi, hinta, trnro) values (:tuotenimi, :hinta, :trnro)');
    $query->bindValue(':tuotenimi',$tuotenimi,PDO::PARAM_STR);
    $query->bindValue(':hinta',$hinta);
    $query->bindValue(':trnro',$trnro);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('tuotenro' => $db->lastInsertId(),'tuotenimi' => $tuotenimi,'hinta' => $hinta,'trnro' => $trnro,);
    print json_encode($data);
 } catch (PDOException $pdoex) {
    returnError($pdoex);
}