
<h2>lessons</h2>
<?php


$conn = dbConnect();
$contentquery = "SELECT lessonID, lessonNAME, tutorial FROM  lesson ";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
while ($row = $stmt->fetch())
{
 $lessonID = $row['lessonID'];
 $lessonNAME = $row['lessonNAME'];
 $tutorial = $row['tutorial'];?>

<?php
 echo "$lessonID";
 echo "$lessonNAME";
 echo "$tutorial";
}


?>
<br>


<h3>this feature is in the works</h3>   
