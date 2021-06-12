<?php

session_start();
if (!isset($_POST['id']) || !isset($_SESSION['isAdminLogged']) || !isset($_POST['seen'])) {
    //no id is sent with the request
    //or is trying to hack
    exit("<script>window.location.replace('index.php');</script>");
}
if ('1' !== $_POST['seen'] && '0' !== $_POST['seen']) {
    exit(gettype($_POST['seen']));

    exit("<script>alert('data Error')</script>");
}

    //getting chat messages
    $id = trim(htmlspecialchars($_POST['id']));

    require_once '../DB/connection.php';
    $conn = new Connection();
    $id = $conn->conn->real_escape_string($id);
    $selectCmd = "SELECT * FROM messages WHERE chatId={$id}";
    $res = $conn->select($selectCmd);
    if ('0' === $_POST['seen']) {
        //message wasn't read yet
        //update it to be read
        $updateCmd = "UPDATE messages SET seen=1 WHERE chatid={$id}";
        //update is the same function as insert
        $conn->insert($updateCmd);
    }

    exit(json_encode($res));
