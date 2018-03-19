<?php
    include 'DB.php';
    include 'session.php';
    $login_sql = "SELECT * FROM user WHERE username = '" . $_POST['username'] . "' AND password = '" .
                  $_POST['password'] . "';";
    $conn = dbConnect();
    $stmt = $conn->prepare($login_sql);
    $stmt->execute();
    $result = $stmt->fetch();
    if($stmt->rowcount() == 0) {
        $_SESSION['error'] = "Login invalid please try again";
        header('Location: login.php');
    } else {
//        $_SESSION['userid'] = $result['userID'];
      //  $_SESSION['usertype'] = $result['usertype'];
  //      $_SESSION['message'] = "Login successful";
  //      header('Location: footer.php?');
        echo "goodworrrk";
    }
?>
