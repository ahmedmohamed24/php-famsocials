
<?php
//check if he is already logged or not 
//for user
session_start();
if(isset($_SESSION["isLogged"]) && isset($_SESSION["userId"])){

    $selectMessages="SELECT message , sender ,messageDate FROM messages WHERE chatid=".$_SESSION['userId'];
    //die($selectMessages);
    require_once '../DB/connection.php';
    $req=new Connection;
    $res=$req->select($selectMessages);
    die(json_encode($res));
}
else{
    echo "<script>window.location.replace('index.php');</script>";
}