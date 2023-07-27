<?php
//eseintialcode for api 
header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json; charset=UTF-8");
header("Access-Control-Allow-Methods:*");
header("Access-Control-max-age:3600");
header("Access-Control-Allow-Headers:*");
//connect database
$username="root";
$password="";
$database=new PDO("mysql:host=localhost;dbname=chat;charset=utf8",$username,$password);


$phone=$_GET['phone'];
$pass=$_GET['pass'];



$get = $database->prepare("SELECT * FROM `users` WHERE `phone`=:phone AND `pass`=:pass");
$get->bindParam("phone",$phone);
$get->bindParam("pass",$pass);
$get->execute();

$get=$get ->fetchAll(PDO::FETCH_ASSOC);

$get=json_encode($get);
print_r($get);





?>