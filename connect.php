<?php

$host   = 'localhost';
$db = "future";
$login = "root";
$password = "";

try {
$connect = new PDO('mysql:host='.$host.'; dbname='.$db,  $login, $password);
} catch (PDOException $e) {
echo $e->getMessage();
}


