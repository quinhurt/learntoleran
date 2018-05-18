<?php
include "../modle/db.php";

$class = '15';


$conn = dbConnect();
$contentquery = "SELECT * FROM  lesson
WHERE classID = $class ";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
while ($row = $stmt->fetch())
  {
?>  <div class="left"> <?php
 $lessonNAME = $row['lessonNAME'];
 $LessonID = $row['LessonID'];

 echo "$LessonID";
 echo "$lessonNAME";

 ?>
<?php

}
 ?>
