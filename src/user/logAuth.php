<?php

session_start();
if (isset($_POST['name'], $_POST['mail'])) {
    $name = trim(htmlspecialchars($_POST['name']));
    $mail = htmlspecialchars($_POST['mail']);
    if (0 === strlen($name) || 0 === strlen($mail)) {
        exit('please Enter Email and Name');
    }
    if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        exit('Please Enter Valid Email');
    }

    require_once '../DB/Connection.php';
    $insertCmd = "INSERT INTO visitors(name,email) VALUES ('".$name."','".$mail."')";
    $conn = new Connection();
    $res = $conn->insert($insertCmd);

    //getting id and putting it in session for messaging after that

    $selectCmd = "SELECT id FROM visitors WHERE email ='".$mail."' and name='".$name."' ORDER BY id DESC LIMIT 1";
    $selectRes = $conn->select($selectCmd);
    if ('null' !== $selectRes) {
        $_SESSION['isLogged'] = true;
        $_SESSION['userId'] = $selectRes[0]['id'];
        //the result for inserting true or false as string
        exit($res);
    }

    echo "<script>window.location.replace('index.php');</script>";
} else {
    echo "<script>window.location.replace('index.php');</script>";
}
