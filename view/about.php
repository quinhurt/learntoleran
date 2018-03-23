
<?php
include "../modle/DB.php";
include "../modle/session.php";

$conn = dbConnect();
$contentquery = "SELECT userID,name,surname,DOB,username,pasword FROM user
WHERE userID =27";
    $stmt = $conn->prepare($contentquery);
  $stmt->execute();
   while ($row = $stmt->fetch())
  {
  $name = $row['name'];
      $surname = $row['surname'];
      $DOB = $row['DOB'];
      $username = $row['username'];
      $pasword  =$row['pasword'];

    }
          echo '<form action="update_process.php" method="post">';
          echo '<input class="valid" type="text" placeholder="first name"     name="name"  value="'.$name.'" >';
          echo '<input class="valid" type="text" placeholder="last name"   name="lname" value="'.$surname.'" >';
          echo '<input class="valid" type="text" placeholder="date of birth" name="DOB" value="'.$DOB.'">';
          echo '<input class="valid" type="text" placeholder="username"    name="username" value="'.$username.'">';
          echo '<input class="valid" type="text" placeholder="password"   name="password" id="pasword" value= "'.$pasword.'">';
          echo ' <input type="submit" name="submit">';


 ?>
