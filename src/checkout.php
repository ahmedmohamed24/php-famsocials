<?php
session_start();
if (isset($_GET['id'], $_GET['plan'], $_GET['planPrice'])) {
    require_once 'DB/connection.php';
    $conn = new Connection();
    $planId = $conn->conn->real_escape_string($_GET['id']);
    $plan = $conn->conn->real_escape_string($_GET['plan']);
    $planPrice = $conn->conn->real_escape_string($_GET['planPrice']);
    if (empty($planId) || empty($plan) || empty($planPrice)) {
        //he changed the data in the url
        echo "<script>window.location.replace('adminLogin.php');</script>";
    } else {
        $selectCmd = "SELECT {$planPrice} FROM prices AS p INNER JOIN social AS s WHERE p.planId ={$planId} and s.name='{$plan}'";
        //die($selectCmd);
        $res = $conn->select($selectCmd);
        if ('null' === $res || null === $res) {
            exit("<script>alert('Error')</script>");
        }
        $price = $res[0][$planPrice];

        switch ($plan) {
                case 'F_Likes':
                    $plan = 'Facebook Likes';

                break;

                case 'F_Followers':
                    $plan = 'Facebook Followers';

                break;

                case 'F_Shares':
                    $plan = 'Facebook Shares';

                break;

                case 'I_Likes':
                    $plan = 'Instagram Likes';

                break;

                case 'I_Views':
                    $plan = 'Instagram Views';

                break;

                case 'Y_Subscribes':
                    $plan = 'YouTube Subscribes';

                break;

                case 'Y_Views':
                    $plan = 'YouTube Views';

                break;

                case 'T_Views':
                    $plan = 'TikTok Views';

                break;

                case 'T_Likes':
                    $plan = 'TikTok Likes';

                break;

                case 'I_Followers':
                    $plan = 'Instagram Followers';

                break;

                case 'T_Followers':
                    $plan = 'TikTok Followers';

                break;

                default:
                    exit("<script>alert('Some Error has been Occurred ')</script>");
            }
        $_SESSION['price'] = $price;
        $_SESSION['description'] = $plan;

        require_once 'user/header.php';

        require_once 'user/nav.php'; ?>
<div class="resevedSpace"></div>
<section class="container">
    <form action="processedCheckOut.php" method="POST">
        <div class="card p-5" style="">
            <h3 class="text-center text-black">Details</h3>
            <ul class="list-group list-group-flush">
                <li class="list-group-item my-1"><strong>Describe</strong> : <span class="text-primary"><?php echo $plan; ?></span></li>
                <li class="list-group-item my-1">
                    <input type="radio" name="planType" value="high" id="highPlan">
                    <label for="highPlan" class="mr-3 text-primary">High Quality</label>

                    <input required type="radio" name="planType" value="premium" id="premiumPlan">
                    <label for="premiumPlan" class=" text-primary">premium </label>
                    <button class=" ml-2 btn btn-outline-info" type="button" data-toggle="collapse"
                        data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        What is Premium <img src="images/question (1).svg" alt="question mark logo ">
                    </button>
                    <div class="collapse" id="collapseExample">
                        <div class="card card-body text-info">
                            New Premium followers are for those who are serious about their instagram growth. These are
                            guaranteed with very little to NO drop!
                        </div>
                    </div>
                </li>
                <li class="list-group-item"><strong>Price</strong> : <span class="text-primary high-plan"><?php echo $price; ?></span><span
                        class="text-primary premium-plan d-none ml-4"><?php echo 2 * +$price; ?></span></li>
                <li class="list-group-item"><input required type="text" name="link-profile" class="form-control"
                        placeholder="Enter the Link" id="link-profile">
                    <small class="alert alert-danger url-alert d-none">This isn't a valid Link</small>
                </li>
                <li class="list-group-item">

                    <button class="btn btn-outline-info" id="processedCheckOut" type="submit">Submit</button>
                </li>
            </ul>
        </div>
    </form>
</section>


<?php
            require_once 'user/notification.html';

        require_once 'user/chat.html';

        require_once 'user/footer.html';

        require_once 'user/last.php';
    }
} else {
    echo "<script>window.location.replace('adminLogin.php');</script>";
}
