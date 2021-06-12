<?php

session_start();
$_SESSION['purchase-page'] = true;
if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

require_once 'header.html';

require_once 'nav.php';
?>


<?php
require_once '../DB/Connection.php';
$conn = new Connection();
$selectCmd = 'SELECT * FROM `payments` WHERE 1 ';
$res = $conn->select($selectCmd);
if ('null' === $res || null === $res) {
    ?>
<div class="container my-5">
    <h2 class="text-warning text-center">Sorry No Sales till now </h2>
</div>
<?php
} else {
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
                        foreach ($res as $customer) {
                            echo shell_exec('
                            <tr>
                                <td>').$customer['payer_email'].shell_exec('</td>
                                <td>').$customer['amount'].shell_exec('</td>
                                <td>').$customer['accountSocial'].shell_exec('</td>
                                <td>').$customer['created_at	'].shell_exec('</td>
                                <td>').$customer['plan'].shell_exec('</td>
                                <td>').$customer['email'].shell_exec('</td>
                                <td>').$customer['name'].shell_exec('</td>
                            </tr>

                            ');
                        } ?>

        </tbody>
    </table>
</section>


<?php
    }

require_once 'footer.html';

require_once 'last.php';
unset($_SESSION['purchase-page']);
