<?php
session_start();
$_SESSION["purchase-page"]=true;
if(! isset($_SESSION['isAdminLogged'])){
    die("<script>window.location.replace('adminLogin.php');</script>");
}
require_once 'header.html';
require_once 'nav.php';
?>


<?php
require_once '../DB/connection.php';
$conn=new Connection;
$selectCmd="SELECT * FROM `payments` WHERE 1 ";
$res=$conn->select($selectCmd);
if($res==="null"|| $res===null){
    ?>
        <div class="container my-5">
            <h2 class="text-warning text-center">Sorry No Sales till now </h2>
        </div>
    <?php
}else{
    ?>
        <section class="container my-5">
            <table class="table table-dark ">
                <thead>
                    <tr>
                    <th scope="col">Email PayPal</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Account</th>
                    <th scope="col">Time of Pay</th>
                    <th scope="col">Plan</th>
                    <th scope="col">Email</th>
                    <th scope="col">Name</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                        foreach($res as $customer){
                            echo(`
                            <tr>
                                <td>`.$customer['payer_email'].`</td>
                                <td>`.$customer['amount'].`</td>
                                <td>`.$customer['accountSocial'].`</td>
                                <td>`.$customer['created_at	'].`</td>
                                <td>`.$customer['plan'].`</td>
                                <td>`.$customer['email'].`</td>
                                <td>`.$customer['name'].`</td>
                            </tr>
                            
                            `);
                        }
                    ?>
                    
                </tbody>
            </table>
        </section>
    
    
    <?php
}



/*
    
*/

require_once 'footer.html';
require_once 'last.php';
unset($_SESSION["purchase-page"]);