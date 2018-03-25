<?php
include "../modle/DB.php";
include "../modle/session.php";

$conn = dbConnect();
$contentquery = "SELECT userID,name,surname,DOB,pasword FROM user
WHERE userID =".$_SESSION['userid'];
    $stmt = $conn->prepare($contentquery);
  $stmt->execute();
   while ($row = $stmt->fetch())
  {
      $name = $row['name'];
      $surname = $row['surname'];
      $DOB = $row['DOB'];
      $pasword  =$row['pasword'];
    }

    echo '<form action="../modle/update_process.php" method="post">';
    echo '<input class="valid" type="text" placeholder="first name"     name="name"  value="'.$name.'" >';
    echo '<input class="valid" type="text" placeholder="last name"      name="surname" value="'.$surname.'" >';
    echo '<input class="valid" type="text" placeholder="date of birth"  name="DOB" value="'.$DOB.'">';
    echo '<input class="valid" type="text" placeholder="password"       name="pasword" id="pasword" value= "'.$pasword.'">';
    echo ' <input type="submit" name="updat">';

echo "$name";
echo "$surname";
echo "$DOB";
echo "$pasword";





?>
      </body>
    </html>
