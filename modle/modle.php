<?php

function newclass() {
  $sql = "INSERT INTO class (className)
    VALUES ( '".$_POST['newclass']."');";
  $conn = dbConnect();
  $stmt = $conn->prepare($sql);
    $stmt->execute();
    return $stmt->rowCount();
}

 ?>
