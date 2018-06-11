  <?php
    include "db.php";

      $conn = DBconnect();
              $sql = "INSERT INTO `user` ( name, surname, dob, username, pasword, userClassID, roll, active )
                 VALUES ( '". $_POST['name']. "' , '". $_POST['lname']. "', '".$_POST['dob']. "'
                   , '". $_POST['username']. "' , '". $_POST['password']. "' ,  '". $_POST['class']. "' , '2' , '1' );";
                  $conn->exec($sql);
                  header('Location: ../index.php');

                  echo "New record created successfully";

   ?>
