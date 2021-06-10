<?php
session_start();

if(! isset($_SESSION['isAdminLogged'])){
    die("<script>window.location.replace('adminLogin.php');</script>");
}

if( isset($_POST["id"]) && isset($_POST['plan']) && isset($_POST['val1']) && isset($_POST['val2'])){
    
    require_once '../DB/connection.php';
    $conn=new Connection;
    $id=$conn->conn->real_escape_string($_POST["id"]);
    $plan=$conn->conn->real_escape_string($_POST["plan"]);
    $val1=$conn->conn->real_escape_string($_POST["val1"]);
    $val2=$conn->conn->real_escape_string($_POST["val2"]);
        //specify which plan is selected based on the btn id 
    switch($plan){
        case 'bf':
            $updateCmd="UPDATE prices SET featured='$val1' , planeFeaturedNum='$val2' WHERE id =$id";
        break;
        case 'b1':
            $updateCmd="UPDATE prices SET plan1='$val1' , plane1Num='$val2' WHERE id =$id";
        break;
        case 'b2':
            $updateCmd="UPDATE prices SET plan2='$val1' , plane2Num='$val2' WHERE id =$id";
        break;
        case 'b3':
            $updateCmd="UPDATE prices SET plan3='$val1' , plane3Num='$val2' WHERE id =$id";
        break;
        case 'b4':
            $updateCmd="UPDATE prices SET plan4='$val1' , plane4Num='$val2' WHERE id =$id";
        break;
        case 'b5':
            $updateCmd="UPDATE prices SET plan5='$val1' , plane5Num='$val2' WHERE id =$id";
        break;
        case 'b6':
            $updateCmd="UPDATE prices SET plan6='$val1' , plane6Num='$val2' WHERE id =$id";
        break;
        default :
            $updateCmd="Error";
    }

    
    if($updateCmd==="Error"){
        die("<script>alert('Error');</script>");
    }
    else{
        $res=$conn->insert($updateCmd);
        die($res);
    }
    
    
    
}else{
    die("<script>window.location.replace('adminLogin.php');</script>");
}