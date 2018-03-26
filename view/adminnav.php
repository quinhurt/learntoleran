<nav>
  <li><a href="../modle/logout.php" class="text_nav"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</nav>
 <?php

$conn = dbConnect();
$contentquery = "SELECT userID, name, surname FROM user ";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
while ($row = $stmt->fetch())
{
  $userID = $row['userID'];
  $name = $row['name'];
  $surname = $row['surname'];?>

<?php
  echo "$userID";
  echo "$name";
  echo "$surname";
}
?>
<br>
 <?php
include 'newteacher.php'

  ?>
