<?php
session_start();

if(! isset($_SESSION['isAdminLogged'])){
    die("<script>window.location.replace('adminLogin.php');</script>");
}

if(! isset($_POST["id"])){
    die("<script>window.location.replace('adminLogin.php');</script>");
}else{
    require_once '../DB/connection.php';
    $conn=new Connection;
    $id=$conn->conn->real_escape_string($_POST["id"]);
    $updateCmd="DELETE FROM reviews  WHERE id=$id";
    $res=$conn->insert($updateCmd);
    die($res);
}