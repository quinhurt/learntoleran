<?php

include "db.php";

$conn = dbConnect();
$sql = "UPDATE  dropbox SET grade $_post['grade'] where dropboxID=" $_GET['droboxID'];
$conn = dbConnect();
 $stmt = $conn->prepare($sql);
 $stmt->execute();

 echo "done";



 ?>
