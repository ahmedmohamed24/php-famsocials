<?php

//check if he is already logged or not

session_start();
if (isset($_SESSION['isLogged'], $_SESSION['userId'])) {
    if (isset($_POST['msg'])) {
        //message Entered
        // validate message First
        $msg = trim(htmlspecialchars($_POST['msg']));
        if (0 === strlen($msg)) {
            //no message
            exit('please Enter the message ');
        }

        //message is sent
        //first open connection with database to insert the message then display it to chat
        require_once '../DB/Connection.php';
        $conn = new Connection();
        //sender is 0 for user and 1 for admin
        //chat id is the foreign key for the user

        $insertMsg = "INSERT INTO messages(message,sender,chatid) VALUES ('".$conn->conn->real_escape_string($msg)."','0','".$conn->conn->real_escape_string($_SESSION['userId'])."')";
        $res = $conn->insert($insertMsg);

        exit($res);
    }

    // entered as a hacker from the url
    //no message set
    echo "<script>window.location.replace('index.php');</script>";
} else {
    echo "<script>window.location.replace('index.php');</script>";
}
