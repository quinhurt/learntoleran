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

$sql = "INSERT INTO `lesson`
VALUES ('lessonID', '".$_POST['lessonname']."', '".$_POST['tutorial']."' , '$userClassID')  WHERE userClassID =".$_SESSION['userClassID'];
$stmt = $conn->prepare($sql);
$stmt->execute();
header('Location: send.php');
 ?>
