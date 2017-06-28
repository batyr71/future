<?php
include 'connect.php';
if(isset($_POST))
{
       $name =  $_POST["name"];
       $msg =  $_POST["msg"];
        $query = $connect->query("INSERT INTO comments (name, comment, date, time) VALUES ( '$name' , '$msg', NOW(), NOW())"); 
}