
<?php
    include 'DB.php';
    include 'session.php';
    $login_sql = "SELECT * FROM user WHERE username = '" . $_POST['username'] . "' AND pasword = '" .
                  $_POST['pasword'] . "';";
    $conn = dbConnect();
    $stmt = $conn->prepare($login_sql);
    $stmt->execute();
    $result = $stmt->fetch();
    if($stmt->rowcount() == 0) {
      header('Location: ../index.php');
      $_SESSION['error'] = "Login invalid please try again";



    } else {
        $_SESSION['userid'] = $result['userID'];
        $_SESSION['roll'] = $result['roll'];
        $_SESSION['userClassID'] = $result['userClassID']; 
        $_SESSION['message'] = "Login successful";
        header('Location: send.php?');
        $_SESSION['login'] = "login successful";
  }
?>
