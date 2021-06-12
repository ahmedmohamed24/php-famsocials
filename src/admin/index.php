<?php
session_start();
$_SESSION['indexPage'] = true;
if (!isset($_SESSION['isAdminLogged'])) {
    exit("<script>window.location.replace('adminLogin.php');</script>");
}

require_once 'header.html';

require_once 'nav.php';

require_once 'asideContainer.html';

require_once '../DB/connection.php';
$conn = new Connection();
$selectEmails = 'SELECT * FROM mails WHERE 1 ORDER BY id DESC';
$res = $conn->select($selectEmails);
 if (!('null' === $res || null === $res)) {
     ?>

<h2 class="text-primary text-center">Emails</h2>
<table class="table table-dark">
    <thead>
        <tr>
            <th scope="col">name</th>
            <th scope="col">Email</th>
            <th scope="col">Message</th>
        </tr>
    </thead>
    <tbody>
        <?php
                    foreach ($res as $email) {
                        ?>

        <tr>
            <td><?php echo $email['name']; ?>
            </td>
            <td><?php echo $email['email']; ?>
            </td>
            <td><?php echo $email['msg']; ?>
            </td>
        </tr>

        <?php
                    } ?>

    </tbody>
</table>

<?php
 }

require_once 'chatContainer.html';

require_once 'last.php';
unset($_SESSION['indexPage']);
