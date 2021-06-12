<?php

session_start();

if (isset($_POST['adName'], $_POST['adMail'], $_POST['adPass'])) {
    $name = trim(htmlspecialchars($_POST['adName']));
    $mail = trim(htmlspecialchars($_POST['adMail']));
    $pass = trim(htmlspecialchars($_POST['adPass']));
    if (0 === strlen($name) || 0 === strlen($mail) || 0 === strlen($pass)) {
        $_SESSION['error'] = 'Data Not completed';
        header('location: adminLogin.php');
    } elseif (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['error'] = 'Enter a valid Email';
        header('location: adminLogin.php');
    } elseif (strlen($name) >= 49 || strlen($mail) >= 99 || strlen($pass) >= 49) {
        $_SESSION['error'] = 'too much Data please select simple inputs';
        header('location: adminLogin.php');
    } else {
        $selectCmd = "SELECT * FROM admins WHERE email='{$mail}' and name='{$name}' and password='{$pass}'";

        require_once 'DB/connection.php';
        $conn = new Connection();
        $res = $conn->select($selectCmd);
        if (null === $res) {
            $_SESSION['error'] = 'Wrong Data';
            header('location: adminLogin.php');
        } else {
            $_SESSION['isAdminLogged'] = true;
            header('location: admin');
        }
    }
} else {
    //trying to Hack
    echo "<script>window.location.replace('adminLogin.php');</script>";
}
