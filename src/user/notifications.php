<?php

require_once '../DB/connection.php';
$conn = new Connection();
$res = $conn->select('SELECT * FROM notifications');

exit(json_encode($res));
