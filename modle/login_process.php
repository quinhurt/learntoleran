<?php
    include 'DB.php';

    $login_sql = "SELECT * FROM login WHERE `username` = '". $_POST['username']. "' AND password = '" .
                  $_POST['pasword'] . "';";
    $conn = dbConnect();
    $stmt = $conn->prepare($login_sql);
    $stmt->execute();
    $result = $stmt->fetch();
    if($stmt->rowcount() == 0) {
        $_SESSION['error'] = "Login invalid please try again";
        header('Location: login.php');
      }else {


     $_SESSION['userid'] = $result['userID'];
       $_SESSION['usertype'] = $result['usertype'];
        $_SESSION['message'] = "Login successful";
        header('Location: ../view/newteacher.php?');
        echo "goodworrrk";
    }
?>
