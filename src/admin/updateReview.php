<?php

session_start();

if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

if (!isset($_POST['id'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

    require_once '../DB/connection.php';
    $conn = new Connection();
    $id = $conn->conn->real_escape_string($_POST['id']);
    $updateCmd = "UPDATE reviews SET isApproved=1 WHERE id={$id}";
    $res = $conn->insert($updateCmd);

    exit($res);
