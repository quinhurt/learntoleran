<div class="sorry">
<h2>drop box</h2>

<?php
$sql_box = "SELECT * FROM grade";
$conn = dbConnect();
$res_box = $conn->prepare($sql_box);
$res_box->execute();
 ?>

<?php


$conn = dbConnect();
$contentquery =  "SELECT `dropboxID`, `comassigment`, `grade` FROM `dropbox` WHERE 1";
$stmt = $conn->prepare($contentquery);
$stmt->execute();
$result = $stmt->fetchAll();
print '<pre>';
foreach($result as $row){
  print_r($row);

print '</pre>';
    ?> <a href="modle/download.php?dropboxID=" ></a>

<form  action="modle/gradeprocess.php?dropboxID=<?php echo $row['dropboxID'] ?>; " method="post">
  <?php
  $sql_box = "SELECT * FROM grade";
  $conn = dbConnect();
  $res_box = $conn->prepare($sql_box);
  $res_box->execute();
   ?>
    <select class="form-control" name="grade" >
       <option value="A">A</option>
       <option value="B">B</option>
       <option value="C">C</option>
       <option value="D">D</option>
    </select>
    <input type="submit" >
</form>

<?php
}
 ?>
<h3>sorry this feature off the website is unviable at the current time</h3>

</div>
