<?php

//LIMIT 10 OFFSET 0
$selectCmd = 'SELECT visitors.email,visitors.name , visitors.id ,messages.seen FROM messages JOIN visitors on messages.chatid =visitors.id GROUP BY visitors.id ORDER BY messages.messageDate DESC ';

require_once '../DB/connection.php';
$conn = new Connection();
$res = $conn->select($selectCmd);

exit(json_encode($res));
