
<?php
$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "lerntolern";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO `user`
         VALUES ('userID', '". $_POST['name']. "' , '". $_POST['lname']. "', '".$_POST['DOB']. "'
           , '". $_POST['username']. "' , '". $_POST['password']. "' ,  '". $_POST['class']. "' , '3' , '1' );";
         $conn->exec($sql);
         header('Location: send.php');
         echo "New record created successfully";
         }
     catch(PDOException $e)
         {
         echo $sql . "<br>" . $e->getMessage();
         }

     $conn = null;
 ?>
