
<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();


 ?>
<legend>NEW TEACHER</legend>
<form action="newtecher_process.php"  method="post">
  <input class="valid" type="text" required placeholder="first name" name="name" >
<input class="valid" type="text"required placeholder="last name" name="lname" >
<input type="text"  name="DOB" required placeholder="date of birth">
<input class="valid" type="text"required placeholder="username" name="username" >
<select name="class" style="width: 200px">
            <?php
            while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                echo '<option value="' . $row_class['ClassID'] . '" ';

                echo '>' . $row_class['className'] . '</option>';
            }
            ?>

  </select>

<input class="valid" type="text"required placeholder="password" name="password" id="pasword">
  <input type="submit" name="submit"  onclick="student()">
</form>
