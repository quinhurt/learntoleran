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
$name = $_FILES['assignment']['name'];
$assignment = $_FILES['assignment']['tmp_name'];

if(isset($_POST["submit"])){
    if(!empty($name)){
        $location = '../spare/';
        if (move_uploaded_file($assignment, $location.$name)) {
          echo " upload";
        }
        }else {
          echo "file up";
        }
      }

    $filename = $_FILES['assignment']['name'];
    $filepath = $location.$filename;

        $conn = dbConnect();
        $sql = "INSERT INTO assigment  (content,  file, filename, ClassID)
          VALUES ( '".$_POST['conntent']."', '$filepath', '$filename', '$userClassID');";
         $stmt = $conn->prepare($sql);
         $stmt->execute();
         header ('location: ../index.php');
  ?>
