


<?php
$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "lerntolern";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO `user`
        VALUES (userID, '". $_POST['fname']. "' , '". $_POST['lname']. "','".$_POST['DOB']. "', '".$_POST['roll']."' , '".$_POST['active']."');
        INSERT INTO `login`
         VALUES (loginID,  '". $_POST['username']. "' , '". $_POST['password']. "');";
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
