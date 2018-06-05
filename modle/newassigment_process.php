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
if(isset($_POST["submit"])){
    $check = basename($_FILES["assignment"]["tmp_name"]);
    if($check !== false){
        $assignment = $_FILES['assignment']['tmp_name'];
        $fileContent = addslashes(file_get_contents($assignment));
        $filename = $_FILES['assignment']['name'];



        $conn = dbConnect();
        $sql = "INSERT INTO assigment  (content,  file,filename, ClassID)
          VALUES ( '".$_POST['conntent']."', '$fileContent', '$filename', '$userClassID');";
         $stmt = $conn->prepare($sql);
         $stmt->execute();



echo "New record created successfully";
header('Location: ../index.php');
}
}

 ?>
