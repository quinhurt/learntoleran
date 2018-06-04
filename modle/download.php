<?php
include "db.php";

$conn = DBconnect();
$sql = "SELECT * from assigment WHERE assigmentID=" .$_GET['assigmentID'];
$stmt = $conn->prepare($sql);
$stmt->execute();

  while ($row = $stmt->fetch())
  {

   $assgment =  $row['assigmentID'];


   echo "$assgment";
  }

 ?>
