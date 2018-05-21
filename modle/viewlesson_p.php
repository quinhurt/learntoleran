<?php
include "db.php";



$conn = dbConnect();
$sql1 = "SELECT * FROM  lesson
  WHERE lessonID = ". $_GET['lessonID'];
$stmt = $conn->prepare($sql1);
$stmt->execute();

$result = $stmt->fetch();
echo json_encode($result);




 ?>
