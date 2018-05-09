<article>


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
 echo ' <a  onclick="getlesson(' . $LessonID . ')">akkkh</a>';
 ?>

</div>
<?php
}

?>

</article>
