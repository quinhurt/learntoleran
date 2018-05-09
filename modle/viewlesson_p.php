<?php
include "DB.php";



$conn = dbConnect();
$sql1 = "SELECT * FROM  lesson
WHERE lessonID = ". $_GET['lessonID'];
$stmt = $conn->prepare($sql1);
$stmt->execute();


 ?>
