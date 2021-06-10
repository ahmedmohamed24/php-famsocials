
<?php
session_start();

if(! isset($_SESSION['isAdminLogged'])){
    die("<script>window.location.replace('adminLogin.php');</script>");
}
require_once '../DB/connection.php';
$conn=new Connection;
$selectCmd="SELECT * FROM social as s INNER JOIN prices as p WHERE s.id=p.planId";
$res=$conn->select($selectCmd);


if($res===null){
    die("Error");
}else{
    die(json_encode($res));
}