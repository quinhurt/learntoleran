<?php
include "db.php";

$conn = DBconnect();
$sql = "SELECT file from assigment WHERE assigmentID=" .$_GET['assigmentID'];
$stmt = $conn->prepare($sql);
  $stmt->execute();



 ?>
