
<?php
include "control\DB.php";

function dbConnect();

     $sql = "INSERT INTO `login` (`Fname`, `surename`, `phone`,`email`,  `DOB`, `pasword`) VALUES
        ( '". $_POST['fname']. "' , '". $_POST['lname']. "' ,'". $_POST['phone']. "' , '". $_POST['email']. "' , '". $_POST['DOB']. "' , '". $_POST['password']. "');";
     // use exec() because no results are returned
     $conn->exec($sql);
     echo "New record created successfully";
     }
 catch(PDOException $e)
     {
     echo $sql . "<br>" . $e->getMessage();
     }
 $conn = null;

 ?>


/*

START TRANSACTION;
INSERT INTO `login`
VALUES (loginID, 'admin', 'administrator');
    SET @lastW = LAST_INSERT_ID();
INSERT INTO `user`
VALUES (userID, 'quin', 'hurt', '1', last_insert_id(@lastw));
COMMIT;

*/
