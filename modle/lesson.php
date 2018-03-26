<?php
include "DB.php";

$conn= DBconnect();

$sql = "INSERT INTO `lesson`
VALUES ('lessonID', '".$_POST['lessonname']."', '".$_POST['tutorial']."');";
$conn->exec($sql);
echo "New record created successfully";
 ?>
