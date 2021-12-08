<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    selectAsJson($db,'select * from product where price <= 10 limit 6');
}

catch (PDOException $pdoex) {
    returnError($pdoex);
}