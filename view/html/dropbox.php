<div class="sorry">
<h2>new assignment</h2>

<?php
$sql_drop = "SELECT * FROM grade";
$conn = dbConnect();
$res_drop = $conn->prepare($sql_drop);
$res_drop->execute();
 ?>

<?php


$conn = dbConnect();
$contentquery =  "SELECT * FROM dropbox";
$stmt = $conn->prepare($contentquery);
$stmt->execute();

while ($row = $stmt->fetch())
{

  $comassigment = $row['comassigment'];
  $assgnment = $row['assignmet'];
  $grade = $row['grade'];
?>





<?php
  echo "$content";
  ?> <a href="modle/download.php?assigmentID=<?php echo $row['assigmentID'] ?>" > <?php echo $content ?></a>

<form action="modle/gradeprocess.php" method="post">
<select name="grade">
<?php
while ($row_drop = $res_drop->fetch(PDO::FETCH_ASSOC)) {
    echo '<option value= "' . $row_drop['grade'] . '" ';

    echo '>' . $row_drop['grade'] . '</option>';
}
 ?>
</select>
<input type="submit">
</form> <br>

  <?php
}
 ?>


<h3>sorry this feature off the website is unviable at the current time</h3>

</div>
