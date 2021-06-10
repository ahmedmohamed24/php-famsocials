<?php
//user login Authentication 
session_start();
if(isset($_POST["name"])&& isset($_POST['mail'])){
    
    $name=trim(htmlspecialchars($_POST["name"]));
    $mail=htmlspecialchars($_POST["mail"]);
    if(strlen($name)===0 || strlen($mail)===0){
        die("please Enter Email and Name");
    }
    elseif(!filter_var($mail,FILTER_VALIDATE_EMAIL)){
        die("Please Enter Valid Email");
    }
    else{
        require_once '../DB/connection.php';
        $insertCmd="INSERT INTO visitors(name,email) VALUES ('".$name."','".$mail."')";
        $conn=new Connection;
        $res=$conn->insert($insertCmd);
       
        //getting id and putting it in session for messaging after that 
        
        $selectCmd="SELECT id FROM visitors WHERE email ='".$mail."' and name='".$name."' ORDER BY id DESC LIMIT 1";
        $selectRes=$conn->select($selectCmd);
        if($selectRes!=="null"){
            $_SESSION['isLogged']=true;
            $_SESSION["userId"]=$selectRes[0]['id'];
            //the result for inserting true or false as string
            die($res);
        }
        else{
            echo "<script>window.location.replace('index.php');</script>";
        }
        
    }


}
else{
    echo "<script>window.location.replace('index.php');</script>";
}