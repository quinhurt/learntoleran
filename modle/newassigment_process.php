<?php
include "DB.php";
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
    $check = getimagesize($_FILES["file"]["tmp_name"]);
    if($check !== false){
        $file = $_FILES['file']['tmp_name'];
        $fileContent = addslashes(file_get_contents($file));
?>

<?php


        $conn = dbConnect();
        $sql = "INSERT INTO assigment
        VALUES (assigmentID, '$userClassID');
        SET @lastw = LAST_INSERT_ID();
        INSERT INTO collectbox
         VALUES ('collectboxid',  '".$_POST['conntent']."', '$fileContent' , LAST_INSERT_ID(@lastw));";
         $stmt = $conn->prepare($sql);
         $stmt->execute();

       }echo "New record created successfully";
}
 ?>
