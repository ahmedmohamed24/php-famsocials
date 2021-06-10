<?php

require_once 'vendor/autoload.php';

use Omnipay\Omnipay;

define('CLIENT_ID', 'ASNNFFVkQZy09GKOt_oYPbvqg8s8dTaoXfoR8S75HDmEjekFz2l9iSnx5kEDU0uFgWdRrhgx60rcxCci');
define('CLIENT_SECRET', 'EENooOMW33IqimCdIHUmjlBXRohPnIIgiTTs0aj81-2XG8PtyGonm6S9YBYkENDJBXtMG7aISgrit9NV');

define('PAYPAL_RETURN_URL', 'https://www.famsocials.com/succeed.php');
define('PAYPAL_CANCEL_URL', 'https://www.famsocials.com');
define('PAYPAL_CURRENCY', 'USD'); // set your currency here ya bro

// Connect with the database
//"premium102.web-hosting.com","famsorza_root","uF{q?m4I02[n","famsorza_famous"
$db = new mysqli('premium102.web-hosting.com', 'famsorza_root', 'uF{q?m4I02[n', 'famsorza_famous');

if ($db->connect_errno) {
    exit('Connect failed: '.$db->connect_error);
}

$gateway = Omnipay::create('PayPal_Rest');
$gateway->setClientId(CLIENT_ID);
$gateway->setSecret(CLIENT_SECRET);
$gateway->setTestMode(false); //set it to 'false' when go live ya bro dah test paypal payment validation
