<?php


    if(isset($_POST["offset"])){
        
        $offset=trim(htmlspecialchars($_POST["offset"]));
        
            
            require_once '../DB/connection.php';
            $conn=new Connection;
            $offset=$conn->conn->real_escape_string($offset);
            $offset=$offset*2;
            $selectCmd="SELECT * FROM reviews WHERE isApproved=1 LIMIT 2 OFFSET $offset";
            $res=$conn->select($selectCmd);
            die(json_encode($res));
        
    }
    else{
        // entered as a hacker from the url
        //no message set
        echo "<script>window.location.replace('index.php');</script>";
    }



