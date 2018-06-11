<?php

include "../modle/db.php";


$class = '15';


$conn = dbConnect();
$contentquery = "SELECT * FROM  lesson
WHERE classID = $class ";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
$row = $stmt->fetchAll();


$tutorial = $row['tutorial'];


 ?>
