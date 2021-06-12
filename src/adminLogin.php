<?php
session_start();

require_once 'admin/header.html';

if (isset($_SESSION['error'])) {
    //check for errors returned back from prev tries
    echo "<small class='alert alert-danger container my-5 d-block'>".$_SESSION['error'].'</small>';
}
?>



<form action="adminLogHandle.php" method="POST" class="container my-5">
    <input type="text" class="form-control" name="adName" placeholder="Enter Your Name">
    <input type="email" class="form-control my-4" name="adMail" placeholder="Email">
    <input type="password" class="form-control mb-3" name="adPass" placeholder="Password">
    <input type="submit" class="btn btn-primary" value="Log in">
</form>



<?php
session_unset();

require_once 'admin/last.php';
