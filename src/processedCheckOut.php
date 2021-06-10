<?php
session_start();
if(isset($_POST["planType"]) && isset($_SESSION["price"]) && isset($_SESSION["description"]) && isset($_POST["link-profile"])){
    switch($_POST["planType"]){
        case 'high':
            $price=$_SESSION["price"];
            
        break;
        case 'premium':
            $price= +$_SESSION["price"]*2;
        break;
        default:
        die("Error , Please Choose your Plan  ");
    }
    $_SESSION["price"]=$price;
    if(!filter_var($_POST["link-profile"],FILTER_VALIDATE_URL)){
        die("Error , Not valid Url ");
    }
    else{
        $_SESSION["link-profile"]=$_POST["link-profile"];
    }
    require_once 'user/header.php';
    ?>
       
            <div class="w-75 mt-5">
                    <a class="ml-4" href="index.php"><img src="images/arrow.svg" alt="arrow icon for previous and next"></a>
            </div>
            <div class="container">
                <h2 class="my-4 text-center text-info">PAY NOW</h2>
                
                <div class="container">
                    
                    <form action="charge.php" method="post">
                        <input type="text" required name="buyerName" class="form-control mb-3 " placeholder="Name ...">
                        <input type="email" required name="email" class="form-control mb-3" placeholder="Email Address ...">
                        <input type="text" name="amount" hidden value="<?php echo($price); ?>" />
                        <input type="submit" name="submit" value="Pay Now" class="btn btn-primary">
                    </form>
                </div>
                
            </div>
            
           
    
    <?php
    require_once 'user/last.php';
}else{
    echo "<script>window.location.replace('index.php');</script>";
}

?>