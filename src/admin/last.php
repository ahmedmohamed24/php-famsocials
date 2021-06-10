    
    
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<?php

if(isset($_SESSION['isAdminLogged'])){
    //check if is logged or not
    if(isset($_SESSION["reviewPage"])){
        //check the page he opened 
        echo("<script src='../js/adminReviewsScript.js'></script>");
    }
    elseif(isset($_SESSION["indexPage"]))
        echo("<script src='../js/adminScript.js'></script>");
    elseif(isset($_SESSION["plansPage"]))
        echo("<script src='../js/adminPlansPage.js'></script>");
    elseif(isset($_SESSION["purchase-page"]))
        echo("<script src='../js/adminPuchases.js'></script>");
}
?>

</body>
</html>
