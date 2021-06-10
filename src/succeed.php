<?php
require_once 'config.php';
 
// Once the transaction has been approved, we need to complete it.
if (array_key_exists('paymentId', $_GET) && array_key_exists('PayerID', $_GET)) {
    $transaction = $gateway->completePurchase(array(
        'payer_id'             => $_GET['PayerID'],
        'transactionReference' => $_GET['paymentId'],
    ));
    $response = $transaction->send();
 
    if ($response->isSuccessful()) {
        // The customer has successfully paid.
        $arr_body = $response->getData();
 
        $payment_id = $arr_body['id'];
        $payer_id = $arr_body['payer']['payer_info']['payer_id'];
        $payer_email = $arr_body['payer']['payer_info']['email'];
        $amount = $arr_body['transactions'][0]['amount']['total'];
        $currency = PAYPAL_CURRENCY;
        $payment_status = $arr_body['state'];
 
        // Insert transaction data into the database
        $isPaymentExist = $db->query("SELECT * FROM payments WHERE payment_id = '".$payment_id."'");
 
        if($isPaymentExist->num_rows == 0) { 
            $insert = $db->query("INSERT INTO payments(payment_id, payer_id, payer_email, amount, currency, payment_status,accountSocial,email,name,plan) VALUES('". $payment_id ."', '". $payer_id ."', '". $payer_email ."', '". $amount ."', '". $currency ."', '". $payment_status ."','".$_SESSION["link-profile"]."','".$_SESSION["email"]."','". $_SESSION["buyerName"]."','".$_SESSION["description"]."')");
        }
        echo(`
        <div class="w-75 mt-5">
            <a class="ml-4" href="index.php"><img src="images/arrow.svg" alt="arrow icon for previous and next"></a>
        </div>
        `);
        echo "Payment is successful. Your transaction id is: ". $payment_id;
        
    } else {
        echo $response->getMessage();
    }
} else {
    echo(`
        <div class="w-75 mt-5">
            <a class="ml-4" href="index.php"><img src="images/arrow.svg" alt="arrow icon for previous and next"></a>
        </div>
        `);
    echo 'Transaction is declined';
}