<?php
//eseintialcode for api 
//include 'dbapi.php';

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json; charset=UTF-8");
header("Access-Control-Allow-Methods:*");
header("Access-Control-max-age:3600");
header("Access-Control-Allow-Headers:*");
//connect database
$username="root";
$password="";
$database=new PDO("mysql:host=localhost;dbname=chat;charset=utf8",$username,$password);




$data=file_get_contents("php://input");
$data=json_decode($data);



if (isset($data->fphone)){
    
    

    $add =$database->prepare("INSERT INTO `frinds`(`myid`,`fphone`,`fname`)VALUES(:myid,:fphone,:fname)");
    $add->bindParam("myid",$data->myid);
    $add->bindParam("fphone",$data->fphone);
    $add->bindParam("fname",$data->fname);
    
    $add->execute();


    


}





?>