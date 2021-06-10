<?php
session_start();
$_SESSION['homeUser']=true;

require_once 'user/header.php';
require_once 'user/index-header.php';
?>
    <div class="spinnerContainer">
        <div class="lds-facebook"><div></div><div></div><div></div></div>   
    </div>


<?php

require_once 'user/GUARANTEE.html';
require_once 'user/testimonial.php';
require_once 'user/notification.html';
require_once 'user/chat.html';
require_once 'user/footer.html';
require_once 'user/last.php';
if(isset($_GET["sent"])){
    if($_GET["sent"])
    {
        echo("<script>
        Swal.fire(
            'Good job!',
            'Email Sent!',
            'success'
        )
        </script>")  ; 
    }else{
        echo("<script>
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text:  'Email did not sent, please try again later !',
      })
    </script>")  ; 
    }
   
}

