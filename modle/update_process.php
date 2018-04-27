<?php

include "DB.php";
include "session.php";

  $sql = "UPDATE user SET name = '".$_POST['name']."', surname = '".$_POST['surname']."',  DOB = '".$_POST['DOB']."', pasword = '".$_POST['pasword']."'
   WHERE userID = ".$_SESSIO['userid'];
  $conn = dbConnect();
   $stmt = $conn->prepare($sql);
   $stmt->execute();





   echo "done";
?>
