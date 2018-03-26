

<?php
include 'DB.php';


        $conn = dbconnect();
        $sql = "INSERT INTO `user`
         VALUES ('userID', '". $_POST['name']. "' , '". $_POST['lname']. "', '".$_POST['DOB']. "' , '". $_POST['username']. "' , '". $_POST['password']. "' , '3' , '1' );";
        $conn->exec($sql);
        header('Location: send.php')
    //    echo "New record created successfully";
 ?>
