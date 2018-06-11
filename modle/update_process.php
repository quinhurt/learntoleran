  <?php

    include "db.php";
    include "session.php";



        $sql = "UPDATE user SET name = '".$_POST['name']."', surname = '".$_POST['surname']."',  DOB = '".$_POST['DOB']."', pasword = '".$_POST['pasword']."'
           WHERE userID = ".$_SESSION['userid'];
            $conn = dbConnect();
            $stmt = $conn->prepare($sql);
            $stmt->execute();
              header('Location: ../index.php');

               echo "done";
  ?>
