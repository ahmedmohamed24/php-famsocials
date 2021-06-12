<?php

session_start();
if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

if (!isset($_POST['id'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

    require_once '../DB/Connection.php';
    $conn = new Connection();
    $id = $conn->conn->real_escape_string($_POST['id']);
    $updateCmd = "DELETE FROM reviews  WHERE id={$id}";
    $res = $conn->insert($updateCmd);

    exit($res);
