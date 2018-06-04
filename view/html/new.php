
<div class="sorry">
<h2>new assignment</h2>

<?php


$conn = dbConnect();
$contentquery =  "SELECT * FROM assigment
WHERE classID =".$_SESSION['userClassID'];

  ;
$stmt = $conn->prepare($contentquery);
$stmt->execute();

while ($row = $stmt->fetch())
{
  $assgment = $row['assigmentID'];
  $content = $row['content'];
  $file = $row['file'];
?>



<?php
  echo "$content";
  ?> <a href="modle/download.php?assigmentID=<?php echo $row['assigmentID'] ?>" > <?php echo $content ?></a> <?php
}
 ?>


<h3>sorry this feature off the website is unviable at the current time</h3>

</div>
