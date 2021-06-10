

<?php

session_start();
if(isset($_POST["name"]) && isset($_POST["stars"]) && isset($_POST["review"])){
    $name=trim(htmlspecialchars($_POST["name"]));
    $review=trim(htmlspecialchars($_POST["review"]));
    $stars=trim(htmlspecialchars($_POST["stars"])); 

     require_once '../DB/connection.php';
    $conn=new Connection;
    $name=$conn->conn->real_escape_string($name);
    $review=$conn->conn->real_escape_string($review);
    $stars=$conn->conn->real_escape_string($stars);

    if($name=="" ||strlen($name)===0 || strlen($name)>49){
        die("please Enter Valid Name");
      
    }elseif($review==="" ||strlen($review)===0 || strlen($review)>=65535){
        die("Please enter Valid Review");
      
    }else{
        switch($stars){
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
              die("please Select The Number of Stars");//
        }
        //requires the admin approval first
        $insertCmd="INSERT INTO reviews(name , review ,stars , isApproved ) VALUES ('$name','$review',$stars,0)";
        $res=$conn->insert($insertCmd);
        if($res==="true"){            
           die("Done");
        }else{
            die("error");
        }
    }
 

}
else{
   
    echo "<script>window.location.replace('index.php');</script>";
}




?>