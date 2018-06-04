
<?php
include "db.php";
include "session.php";
$conn = DBconnect();
  $contentquery = "SELECT * from user  WHERE userClassID =".$_SESSION['userClassID'];
    $stmt = $conn->prepare($contentquery);
      $stmt->execute();
      while ($row = $stmt->fetch())
      {
        $userClassID = $row['userClassID'];
        }
?>




<?php
$sql = "INSERT INTO `lesson`  (lessonName, tutorial, classID)
    VALUES ( '".$_POST['lessonname']."', '".$_POST['tutorial']."' , '$userClassID')";
      $stmt = $conn->prepare($sql);
      $stmt->execute();
      if($stmt->rowcount() == 0) {
        header('Location: ../index.php');
        $_SESSION['error'] = "lesson faild please try again";



      } else {

            header('Location: ../index.php?');
          $_SESSION['lesson'] = "login successful";
    }
 ?>
