<?php


include "../modle/DB.php";

        $conn = dbConnect();
        $sql = "INSERT INTO `collectbox`
         VALUES (  '". $_POST['conntent']. "' , '". $_POST['file']. "');";
        $conn->exec($sql);
        echo "New record created successfully";




 ?>
