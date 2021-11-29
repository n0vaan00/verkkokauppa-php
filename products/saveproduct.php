<?php
require_once '../inc/headers.php';
require_once '../inc/functions.php';

$input1 =json_decode(file_get_contents('php://input'));
$input2 =json_decode(file_get_contents('php://input'));
$input3 =json_decode(file_get_contents('php://input'));
$name = filter_var($input1->name,FILTER_SANITIZE_STRING);
$price = filter_var($input2->price,FILTER_SANITIZE_STRING);
$id = filter_var($input3->id,FILTER_SANITIZE_STRING);


 try {
    $db = openDb();
    
    $query = $db->prepare('insert into product(name, price, category_id) values (:name, :price, :category_id)');
    $query->bindValue(':name',$name,PDO::PARAM_STR);
    $query->bindValue(':price',$price);
    $query->bindValue(':category_id',$id);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('category_id' => $db->lastInsertId(),'name' => $name,'price' => $price,'category_id' => $id);
    print json_encode($data);
 } catch (PDOException $pdoex) {
    returnError($pdoex);
}