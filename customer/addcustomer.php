<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
            $json = json_decode(file_get_contents('php://input'));
        //sanitoi data
            $firstname = filter_var($json->firstname, FILTER_SANITIZE_STRING);
            $lastname = filter_var($json->lastname, FILTER_SANITIZE_STRING);
            $phone = filter_var($json->phone, FILTER_SANITIZE_STRING);
            $email = filter_var($json->email, FILTER_SANITIZE_STRING);
            $address = filter_var($json->address, FILTER_SANITIZE_STRING);
            $zip = filter_var($json->zip, FILTER_SANITIZE_STRING);
            $city = filter_var($json->city, FILTER_SANITIZE_STRING);
            $username = filter_var($json->username, FILTER_SANITIZE_STRING);
            $password = filter_var($json->password, FILTER_SANITIZE_STRING);
        //hash salasana
            $hash = password_hash($password, PASSWORD_DEFAULT);
        //lisää tiedot molempiin tauluihin
            $sql= "INSERT INTO user VALUES(?,?,?,?)";
            $sql2= "INSERT INTO contact VALUES(?,?,?,?,?,?)";
    
            $prepared= $db->prepare($sql);
            $prepared2= $db->prepare($sql2);
    
            $prepared->execute(array($firstname, $lastname, $username, $hash));
            $prepared2->execute(array($username, $email, $phone, $address, $zip, $city));

        }catch(PDOException $e) {
            echo '<br>'.$e->getMessage();
        }