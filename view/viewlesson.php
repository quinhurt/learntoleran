
<h2>lessons</h2>
<?php

$conn = dbConnect();
$contentquery = "SELECT * FROM  lesson
WHERE classID =".$_SESSION['userClassID'];
$stmt = $conn->prepare($contentquery);
$stmt->execute();
while ($row = $stmt->fetch())
{
?>  <div class="left"> <?php
 $lessonNAME = $row['lessonNAME'];
 $LessonID = $row['LessonID'];

 echo "$lessonNAME";
 ?>
 <a href="send.php?LessonID=<?php echo $row['LessonID']?>">lessonNAME</a>

</div>
<?php
}


?>


<?php
$conn = dbConnect();
$sql1 = "SELECT * FROM  lesson
WHERE LessonID =".$_GET['LessonID'];
$stmt = $conn->prepare($sql1);
$stmt->execute();
$tutorial = $row['tutorial'];

echo "$tutorial";

 ?>



<h3>this feature is in the works</h3>
