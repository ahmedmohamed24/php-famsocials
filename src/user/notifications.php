<?php

require_once '../DB/Connection.php';
$conn = new Connection();
$res = $conn->select('SELECT * FROM notifications');

exit(json_encode($res));
