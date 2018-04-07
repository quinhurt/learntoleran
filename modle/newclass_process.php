<?php
include "DB.php";


$conn = dbConnect();
$sql = "INSERT INTO `class`
VALUES ('ClassID', '".$_POST['newclass']."');";
$conn->exec($sql);
echo "New record created successfully";



 ?>
