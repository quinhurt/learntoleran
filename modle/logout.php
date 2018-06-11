<?php
    session_start();
//	reset UsersStatus

    unset($_SESSION['Userid']);
    unset($_SESSION['roll'] );
    unset($_SESSION['active'] );
    unset($_SESSION['error'] );
    $_SESSION['UserStatus'] = 0;
      header('Location: ../index.php');
?>
