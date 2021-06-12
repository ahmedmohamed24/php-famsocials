<?php

//check if he is already logged or not
//for user
session_start();
if (isset($_SESSION['isLogged'], $_SESSION['userId'])) {
    $selectMessages = 'SELECT message , sender ,messageDate FROM messages WHERE chatid='.$_SESSION['userId'];

    require_once '../DB/connection.php';
    $req = new Connection();
    $res = $req->select($selectMessages);

    exit(json_encode($res));
}

    echo "<script>window.location.replace('index.php');</script>";
