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

<div class="sorry">
sorry this feature off the website is unviable at the current time

</div>
