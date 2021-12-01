<?php
require_once '../inc/headers.php';
require_once '../inc/functions.php';

$input1 =json_decode(file_get_contents('php://input'));
$input2 =json_decode(file_get_contents('php://input'));
$input3 =json_decode(file_get_contents('php://input'));
$input4 =json_decode(file_get_contents('php://input'));
$input5 =json_decode(file_get_contents('php://input'));
$name = filter_var($input1->name,FILTER_SANITIZE_STRING);
$price = filter_var($input2->price,FILTER_SANITIZE_STRING);
$category_id = filter_var($input3->category_id,FILTER_SANITIZE_STRING);
$image = filter_var($input4->image,FILTER_SANITIZE_STRING);
$info = filter_var($input5->info,FILTER_SANITIZE_STRING);


 try {
    $db = openDb();
    
    $query = $db->prepare('insert into product(name, price, image, info, category_id) values (:name, :price, :image, :info, :category_id)');
    $query->bindValue(':name',$name,PDO::PARAM_STR);
    $query->bindValue(':price',$price);
    $query->bindValue(':image',$image,PDO::PARAM_STR);
    $query->bindValue(':info',$info,PDO::PARAM_STR);
    $query->bindValue(':category_id',$category_id);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('category_id' => $db->lastInsertId(),'name' => $name,'price' => $price, 'image' => $image, 'info' => $info);
    print json_encode($data);
 } catch (PDOException $pdoex) {
    returnError($pdoex);
}