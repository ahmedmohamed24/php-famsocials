<?php
session_start();

require_once 'header.html';

require_once 'nav.php';
$_SESSION['plansPage'] = true;
?>



<table class="table table-dark table-striped table-hover py-5 container-fluid">
  <tbody id="plansContainer">

  </tbody>
</table>




<?php
require_once 'footer.html';

require_once 'last.php';
unset($_SESSION['plansPage']);
