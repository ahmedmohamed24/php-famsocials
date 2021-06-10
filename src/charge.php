<?php
require_once 'config.php';
 
if (isset($_POST['submit'])) {
    
    $_SESSION["email"]=isset($_POST["email"])?htmlspecialchars($_POST["email"]):"someone@gmail.com";
    $_SESSION["buyerName"]=isset($_POST["buyerName"])?htmlspecialchars($_POST["buyerName"]):"someone";
    $_SESSION["link-profile"]=isset($_POST["link-profile"])?htmlspecialchars($_POST["link-profile"]):"someLink";
    try {
        $response = $gateway->purchase(array(
            'amount' => $_POST['amount'],
            'currency' => PAYPAL_CURRENCY,
            'returnUrl' => PAYPAL_RETURN_URL,
            'cancelUrl' => PAYPAL_CANCEL_URL,
        ))->send();
 
        if ($response->isRedirect()) {
            $response->redirect(); // this will automatically forward the customer on sucess
        } else {
            // not successful
            echo $response->getMessage();
        }
    } catch(Exception $e) {
        echo $e->getMessage();
    }
}