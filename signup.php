<?php
//eseintialcode for api 
include 'dbapi.php';


$datauser=file_get_contents("php://input");
$datauser=json_decode($datauser);

if (isset($datauser->phone)) {
    echo $datauser->phone;
}

if (isset($datauser->phone)){
    
    $name="m";

    $addacount =$database->prepare("INSERT INTO `users` (`name`,`phone`,`pass`,`photo`,`age`)VALUES(:username,:phone,:pass,:photo,:age)");
    $addacount->bindParam("username",$datauser->name);
    $addacount->bindParam("phone",$datauser->phone);
    $addacount->bindParam("pass",$datauser->pass);
    $addacount->bindParam("photo",$name);
    $addacount->bindParam("age",$datauser->age);
    
    $addacount->execute();

    


}
// $name="m";

// $addacount =$database->prepare("INSERT INTO `users` (`name`,`phone`,`pass`,`photo`,`age`)VALUES(:username,:phone,:pass,:photo,:age)");
// $addacount->bindParam("username",$name);
// $addacount->bindParam("phone",$name);
// $addacount->bindParam("pass",$name);
// $addacount->bindParam("photo",$name);
// $addacount->bindParam("age",$name);

// $addacount->execute();




?>