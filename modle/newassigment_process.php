<?php


include "modle/DB.php";

        $sql = "INSERT INTO `login`
         VALUES (loginID,  '". $_POST['username']. "' , '". $_POST['password']. "');
         SET @lastW = LAST_INSERT_ID();
        INSERT INTO `user`
        VALUES (userID, '". $_POST['fname']. "' , '". $_POST['lname']. "','".$_POST['DOB']. "', '3' , '1' , LAST_INSERT_ID(@lastW));";
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
