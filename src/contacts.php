<?php
require_once 'user/header.php';
require_once 'user/nav.php';


?>
    <div class="spinnerContainer">
        <div class="lds-facebook"><div></div><div></div><div></div></div>   
    </div>

    <div class="resevedSpace"></div>
<section class="container-fluid py-5">
    <form action="mailHandle.php" method="post">
        <h1 class="text-center main-heading text-orange">Contact Us</h1>
        <h5 class="my-4 text-center"><span class="text-orange"> Get in touch</span> with us today, we’d love to hear from you!</h5>
        <p class="container text-secondary text-center">If you have any questions or hesitations, feel free to contact us. Our customer support team is available in live chat 24/7. For more advanced questions, feel free to send us an email. We usually get back to you within a few minutes (max 12 hours).</p>
        <div class="container">
            <input type="text" class="form-control mb-3"required  name="sendMailName" placeholder="Name "/> 
            <input type="email" class="form-control mb-3"required name="senMailMail" placeholder="Email"/> 
            <textarea name="sendMsgContacts" rows="4"required  class="form-control mb-3 " placeholder="Message "></textarea>

            <button type="submit" class="btn btn-primary">SEND </button> 
            
        </div>
    </form>
</section>

    



<?php
require_once 'user/notification.html';
require_once 'user/chat.html';
require_once 'user/footer.html';
require_once 'user/last.php';

?>
