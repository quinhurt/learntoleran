  <?php
    header('Content-Type: application/json');
      include "db.php";



        $conn = dbConnect();
          $sql1 = "SELECT * FROM  lesson
            WHERE lessonID = ". $_GET['lessonID'];
              $stmt = $conn->prepare($sql1);
              $stmt->execute();
              $result = $stmt->fetch();
              $new = json_encode($result);
              echo "$new";

  ?>
