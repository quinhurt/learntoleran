<?php


include "../modle/DB.php";

        $conn = dbConnect();
        $sql = "INSERT INTO `collectbox`
         VALUES ('collectboxid',  '". $_POST['conntent']. "' , '". $_FILE['file']. "', '15') ;";
        $conn->exec($sql);
        echo "New record created successfully";




 ?>
 
 SET @lastw = LAST_INSERT_ID()
INSERT INTO `assigment`
VALUES (last_insert_id(@last), '15')
