
<?php
require_once '../DB/connection.php';
$conn=new Connection;
$res=$conn->select("SELECT * FROM notifications");
die(json_encode($res));