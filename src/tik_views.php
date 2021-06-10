<?php
session_start();
$_SESSION['page']="T_Views";
require_once 'user/header.php';
?>
<input type="text" id="pageIdentifier" hidden value="<?php echo($_SESSION['page']); ?>">

<?php
require_once 'user/nav.php';
?>
   <div class="spinnerContainer">
        <div class="lds-facebook"><div></div><div></div><div></div></div>   
    </div>

    <div class="resevedSpace"></div>
    <div class="spinnerContainer">
        <div class="lds-facebook"><div></div><div></div><div></div></div>   
    </div>   

    <header class=" py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6">
                    <div class="headerLeftContainer">
                        <h1 class="main-heading">Buy TIKTOK 
                        <img src="images/tiktok.svg" alt="TikTok logo Svg icon">
                        <span class="text-orange">Views</span>
                        </h1>
                        <p class="main-text">
                        <span class="text-primary">Buy likes and followers and views,</span>
                        increase your visibility, get more customers and Improve Your Small or big Business profits at the end of the day.
                        create your Own Community and gain their Trust
                    </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="headerRightContainer text-center">
                        <img src="images/tik.png" alt="TikTok logo png icon">
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="my-5">
        <h1 class="main-heading text-center text-orange">TikTok
        <img src="images/tiktok.svg" alt="TikTok logo Svg icon">
        </h1>
        <p class="main-text container-lg container-md text-center">Views on TikTok can improve your brand’s engagement numbers. When you buy TikTok Views you get more engagement on your profile which means more reputation. TikTok Views are a good metric to measure your success.</p>
    </main>

    <section class="my-5">
        <div class="carrousel container car-container ">
        
        </div>
    </section>
    

<?php
require_once 'user/notification.html';
require_once 'user/GUARANTEE.html';
require_once 'user/testimonial.php';
require_once 'user/chat.html';
require_once 'user/footer.html';
require_once 'user/last.php';
unset($_SESSION['page']);
?>

