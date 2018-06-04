<?php

  include "db.php";

  $conn = dbConnect();
  $sql ="UPDATE  dropbox SET  grade = '".$_POST['grade']."' 
        WHERE dropboxID = " .$_GET['dropboxID'];
  $conn = dbConnect();
   $stmt = $conn->prepare($sql);
   $stmt->execute();
   echo "done";



 ?>
