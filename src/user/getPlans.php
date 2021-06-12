<?php
session_start();
    //service name 
if( isset($_POST["name"]) ){
    
    require_once '../DB/Connection.php';
    $conn=new Connection;
    $name=$conn->conn->real_escape_string($_POST["name"]);
    $selectCmd="SELECT * FROM `prices` as p INNER JOIN social as s WHERE p.planid = s.id HAVING s.name ='$name'";    
    $res=$conn->select($selectCmd);

    if($res==="null" || $res ===null){
        die("Error");
    }
    else{
        die(json_encode($res));
    }
    
    
    
}else{
    die("<script>window.location.replace('index.php');</script>");
}

?>