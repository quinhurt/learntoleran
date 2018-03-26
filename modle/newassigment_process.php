<?php


include "../modle/DB.php";

        $conn = dbConnect();
        $sql = "INSERT INTO `assigment`
        VALUES ('assigmentID');
          SET @lastw = LAST_INSERT_ID();
          INSERT INTO `collectbox`
           VALUES ('collectboxod',  '". $_POST['conntent']. "' , '". $_POST['file']. "' ,  last_insert_id(@lastW));";
        $conn->exec($sql);
        echo "New record created successfully";




 ?>
