<?php
include "db.php";



$conn = dbConnect();
$sql1 = "SELECT * FROM  lesson
  WHERE lessonID = ". $_GET['lessonID'];
$stmt = $conn->prepare($sql1);
$stmt->execute();
if($stmt->rowcount() == 0) {
  header('Location: ../index.php');
  $_SESSION['error'] = "Login invalid please try again";



} else {
    $_SESSION['lessonID'] = $result['lessonID'];
    header('Location: ../index.php?');

}

/*

$result = $stmt->fetch();
$new = json_encode($result);


echo "$new";  */

 ?>
