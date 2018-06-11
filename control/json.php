  <?php
    header('Content-Type: application/json');
    include '../modle/db.php';






        $conn = dbConnect();
        $sql = "SELECT * FROM user ";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetch();
         $op = json_encode($result);

        echo "$op";


          

   ?>
