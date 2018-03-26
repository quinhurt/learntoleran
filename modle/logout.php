<?php
    session_start();
//	reset UsersStatus

    unset($_SESSION['Userid']);
    unset($_SESSION['roll'] );
    $_SESSION['UserStatus'] = 0;
    header('Location: ../index.php');
?>
