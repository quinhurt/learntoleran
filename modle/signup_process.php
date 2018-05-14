<?php
include "db.php";

$conn = DBconnect();
        $sql = "INSERT INTO `user`
         VALUES ('userID', '". $_POST['name']. "' , '". $_POST['lname']. "', '".$_POST['DOB']. "'
           , '". $_POST['username']. "' , '". $_POST['password']. "' ,  '". $_POST['class']. "' , '2' , '1' );";
         $conn->exec($sql);
        header('Location: ../index.php');
         echo "New record created successfully";

 ?>
