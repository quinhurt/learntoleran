
 <?php
include "../modle/DB.php";
include "../modle/session.php";
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
</div>
