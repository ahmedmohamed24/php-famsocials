<?php

session_start();

if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

$_SESSION['reviewPage'] = true;

require_once 'header.html';

require_once 'nav.php';

//get un approved reviews

require_once '../DB/Connection.php';
$conn = new Connection();
$selectCmd = 'SELECT * FROM reviews WHERE isApproved=0';
$res = $conn->select($selectCmd);
?>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Review</th>
      <th scope="col">Stars</th>
      <th scope="col" class="text-warning">approve</th>
      <th scope="col" class="text-danger">Delete</th>
    </tr>
  </thead>
  <tbody>
    <?php
    if ($res) {
        foreach ($res as $review) {
            ?>
    <tr>
      <th scope="row"><?php echo $review['name']; ?>
      </th>
      <td><?php echo $review['review']; ?>
      </td>
      <td><?php echo $review['stars']; ?>
      </td>
      <td><button class="btn btn-warning updateReview"
          item-data="<?php echo $review['id']; ?>">Approve</button>
      </td>
      <td><button class="btn btn-danger deleteReview"
          item-data="<?php echo $review['id']; ?>">Delete</button>
      </td>

    </tr>
    <?php
        }
    } else {
        echo "<h1 class='alert alert-warning'>There are no reviews waiting for your approval!!!</h1>";
    }
?>
  </tbody>
</table>















<?php

require_once 'footer.html';

require_once 'last.php';
unset($_SESSION['reviewPage']);
