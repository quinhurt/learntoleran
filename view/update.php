
<legend>upadte you info</legend>
<?php


$conn = dbConnect();
$contentquery = "SELECT userID,name,surname,DOB,pasword, UserCLassID FROM user
WHERE userID =".$_SESSION['userid'];
    $stmt = $conn->prepare($contentquery);
  $stmt->execute();
   while ($row = $stmt->fetch())
  {
      $name = $row['name'];
      $surname = $row['surname'];
      $DOB = $row['DOB'];
      $pasword  =$row['pasword'];
      $UserCLassID = $row['UserCLassID'];
    }

    echo '<form action="modle/modle.php" method="post">';
    echo '<input  class="form-control"  type="text" placeholder="first name"    pattern="[A-Za-z0.9]{3,20}"  name="name"  value="'.$name.'" >';
    echo '<input  class="form-control"  type="text" placeholder="last name"     pattern="[A-Za-z0.9]{3,20}"  name="surname" value="'.$surname.'" >';
    echo '<input  class="form-control"  type="text" placeholder="date of birth" pattern="[A-Za-z0.9]{3,20}" name="DOB" value="'.$DOB.'">';
    echo '<input  class="form-control"  type="text" placeholder="password"      pattern="[A-Za-z0.9]{3,20}" name="pasword" id="pasword" value= "'.$pasword.'">';
    echo ' <input type="submit" name="updat" onclick="processEdituser() " >';
?>
<br>
<br>
<?php
echo "$name   ";
echo "$surname   ";
echo "$DOB   ";
echo "$pasword  ";
echo "$UserCLassID   ";





?>


      </body>
    </html>
