
<div class="sorry">
<h2>new assignment</h2>

<?php


$conn = dbConnect();
$contentquery = "SELECT content, file FROM collectbox";
$stmt = $conn->prepare($contentquery);
$stmt->execute();


while ($row = $stmt->fetch())
{
  $content = $row['content'];
  $file = $row['file'];
?>

<?php
  echo "$content";
  echo '<a href="$file">$file</a>';
}
 ?>


<h3>sorry this feature off the website is unviable at the current time</h3>

</div>
