
<?php
$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "lerntolern";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO `login`
         VALUES (loginID,  '". $_POST['username']. "' , '". $_POST['password']. "');
         SET @lastW = LAST_INSERT_ID();
        INSERT INTO `user`
        VALUES (userID, '". $_POST['fname']. "' , '". $_POST['lname']. "','".$_POST['DOB']. "', '2' , '1' , LAST_INSERT_ID(@lastW));";
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

<?php


/*



"INSERT INTO `login` ( `username`, `password`)
VALUES ( '". $_POST['username']. "' , '". $_POST['password']."');
SET @lastW = LAST_INSERT_ID();
INSERT INTO `user` (`name`,`surname`, `roll` , `DOB ` ,  `active`, loginID)
VALUES ( '". $_POST['fname']. "' , '". $_POST['lname']."' ,'".$_POST['roll']."' ,'".$_POST['DOB']. "','".$_POST['active']."' );"; */


?>
