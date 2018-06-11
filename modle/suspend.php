  <?php
    include "db.php";


     $conn = dbConnect();
        $sql = "UPDATE user SET active = 2  WHERE userID = ".$_GET['ID'];
        $conn = dbConnect();
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        header('Location: ../index.php');

       echo "done";



  ?>
