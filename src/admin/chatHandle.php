<?php

session_start();
if(! isset($_POST['id']) || !isset($_SESSION['isAdminLogged']) || ! isset($_POST['seen'])){
    //no id is sent with the request
    //or is trying to hack
    die("<script>window.location.replace('index.php');</script>");
}
elseif($_POST['seen']!=="1" && $_POST['seen']!=="0"){
    die(gettype($_POST['seen']));
    die("<script>alert('data Error')</script>");
}
else{
    //getting chat messages
    $id=trim(htmlspecialchars($_POST['id']));
    
    
    require_once '../DB/connection.php';
    $conn=new Connection;
    $id=$conn->conn->real_escape_string($id);
    $selectCmd="SELECT * FROM messages WHERE chatId=$id";
    $res=$conn->select($selectCmd);
    if($_POST['seen']==="0"){
        //message wasn't read yet 
        //update it to be read
        $updateCmd="UPDATE messages SET seen=1 WHERE chatid=$id";
        //update is the same function as insert
        $conn->insert($updateCmd);
    }
    
    die(json_encode($res)); 
}


?>