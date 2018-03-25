
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
        $_SESSION['error'] = "Login invalid please try again";
        header('Location: _login.php');
    } else {
        $_SESSION['userid'] = $result['userID'];
        $_SESSION['roll'] = $result['roll'];
        $_SESSION['message'] = "Login successful";
        header('Location: send.php?');
        echo "goodwork";
    }
?>
