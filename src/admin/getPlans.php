<?php

session_start();

if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

require_once '../DB/Connection.php';
$conn = new Connection();
$selectCmd = 'SELECT * FROM social as s INNER JOIN prices as p WHERE s.id=p.planId';
$res = $conn->select($selectCmd);

if (null === $res) {
    exit('Error');
}

    exit(json_encode($res));
