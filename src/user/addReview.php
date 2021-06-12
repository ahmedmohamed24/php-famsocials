<?php

session_start();
if (isset($_POST['name'], $_POST['stars'], $_POST['review'])) {
    $name = trim(htmlspecialchars($_POST['name']));
    $review = trim(htmlspecialchars($_POST['review']));
    $stars = trim(htmlspecialchars($_POST['stars']));

    require_once '../DB/Connection.php';
    $conn = new Connection();
    $name = $conn->conn->real_escape_string($name);
    $review = $conn->conn->real_escape_string($review);
    $stars = $conn->conn->real_escape_string($stars);

    if ('' == $name || 0 === strlen($name) || strlen($name) > 49) {
        exit('please Enter Valid Name');
    }
    if ('' === $review || 0 === strlen($review) || strlen($review) >= 65535) {
        exit('Please enter Valid Review');
    }

    switch ($stars) {
            //if the stars are 1 2 3  4 5 do nothing
            case '1':
            break;

            case '2':
            break;

            case '3':
            break;

            case '4':
            break;

            case '5':
            break;

            default:
              exit('please Select The Number of Stars');
        }
    //requires the admin approval first
    $insertCmd = "INSERT INTO reviews(name , review ,stars , isApproved ) VALUES ('{$name}','{$review}',{$stars},0)";
    $res = $conn->insert($insertCmd);
    if ('true' === $res) {
        exit('Done');
    }

    exit('error');
}

    echo "<script>window.location.replace('index.php');</script>";
