<legend>all student</legend>
 <?php

$conn = dbConnect();
  $contentquery = "SELECT userID, name, surname, userClassID FROM user  where roll = 2";
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
<legend>teachers </legend>
<?php

$conn = dbConnect();
$contentquery = "SELECT userID, name, surname, userClassID FROM user  where roll =3";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
while ($row = $stmt->fetch())
{

$userID = $row['userID'];
$name = $row['name'];
$surname = $row['surname'];
$userClassID = $row['userClassID']
?>

<?php
echo "$userID";
echo "$name";
echo "$userClassID";
}
?>
