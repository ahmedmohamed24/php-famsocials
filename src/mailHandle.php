<?php

session_start();
if (isset($_POST['sendMailName'], $_POST['senMailMail'], $_POST['sendMsgContacts'])) {
    if (empty($_POST['sendMailName'])) {
        header('location: contacts.php');
    } elseif (empty($_POST['senMailMail'])) {
        header('location: contacts.php');
    } elseif (!filter_var($_POST['senMailMail'], FILTER_VALIDATE_EMAIL)) {
        header('location: contacts.php');
    } elseif (empty($_POST['sendMsgContacts'])) {
        header('location: contacts.php');
    } else {
        require_once 'DB/Connection.php';
        $conn = new Connection();

        $name = $conn->conn->real_escape_string($_POST['sendMailName']);
        $email = $conn->conn->real_escape_string($_POST['senMailMail']);
        $msg = $conn->conn->real_escape_string($_POST['sendMsgContacts']);
        $name = htmlspecialchars(wordwrap($name, 50));
        $mail = htmlspecialchars(wordwrap($msg, 255));
        $msg = htmlspecialchars(wordwrap($msg, 500));
        $insertCmd = "INSERT INTO mails(name,email,msg) VALUES ('{$name}','{$email}','{$msg}')";
        $res = $conn->insert($insertCmd);
        if (true === $res || 'true' === $res) {
            header('location: index.php?sent=true');
        } else {
            header('location: index.php?sent=false');
        }
    }
} else {
    echo "<script>window.location.replace('index.php');</script>";
}
