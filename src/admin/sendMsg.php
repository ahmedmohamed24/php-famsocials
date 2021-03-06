<?php

//check if he is already logged or not
session_start();
if (isset($_SESSION['isAdminLogged'])) {
    if (isset($_POST['msg'])) {
        //message Entered
        // validate message First
        $msg = trim(htmlspecialchars($_POST['msg']));
        $id = trim(htmlspecialchars($_POST['id']));
        if (0 === strlen($msg)) {
            //no message
            exit('please Enter the message ');
        }

        //message is sent
        //first open connection with database to insert the message then display it to chat

        require_once '../DB/Connection.php';
        $req = new Connection();
        //sender is 0 for user and 1 for admin
        $msg = $req->conn->real_escape_string($msg);
        $id = $req->conn->real_escape_string($id);
        //chat id is the foreign key for the user
        $insertMsg = "INSERT INTO messages(message,sender,chatid) VALUES ('".addslashes($msg)."','1','{$id}')";

        $res = $req->insert($insertMsg);

        exit($res);
    }

    // entered as a hacker from the url
    echo "<script>window.location.replace('index.php');</script>";
} else {
    echo "<script>window.location.replace('index.php');</script>";
}
