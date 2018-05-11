<?php



 ?>
    <nav>
      <a class="btn btn-primary" >useres </a>
      <a class="btn btn-primary">new class  </a>
      <a  class="btn btn-primary" > new teacher</a>

      <a href="modle/logout.php"  class="logout"> Logout</a>
    </nav>
    <legend>all student</legend>
     <?php

  $conn = dbConnect();
      $contentquery = "SELECT userID, name, surname, userClassID FROM user  where roll = 2";
      $stmt = $conn->prepare($contentquery);
      $stmt->execute();
      while ($row = $stmt->fetch())
      {
        $userID = $row['userID'];
        $name = $row['name'];
        $surname = $row['surname'];?>

      <?php
        echo "$userID";
        echo "$name";
        echo "$surname";
      }
      ?>
  <br>
<legend>teachers </legend>
  <?php

  $conn = dbConnect();
  $contentquery = "SELECT userID, name, surname, userClassID FROM user  where roll =3";
  $stmt = $conn->prepare($contentquery);
  $stmt->execute();
  while ($row = $stmt->fetch())
  {

   $userID = $row['userID'];
   $name = $row['name'];
   $surname = $row['surname'];
  $userClassID = $row['userClassID']
   ?>

  <?php
   echo "$userID";
   echo "$name";
   echo "$userClassID";
  }
?>

<?php

$sql_class = "SELECT * FROM class";
$conn = dbConnect();
$res_class = $conn->prepare($sql_class);
$res_class->execute();

 ?>
<legend>NEW TEACHER</legend>
<form action="newtecher_process.php"  method="post">
  <input  class="form-control"  type="text" required placeholder="first name" name="name" >
<input  class="form-control"  type="text"required placeholder="last name" name="lname" >
<input  class="form-control"   name="DOB" required placeholder="date of birth">
<input  class="form-control"  type="text"required placeholder="username" name="username" >
<select  class="form-control"  name="class" style="width: 200px">
            <?php
            while ($row_class = $res_class->fetch(PDO::FETCH_ASSOC)) {
                echo '<option value="' . $row_class['ClassID'] . '" ';

                echo '>' . $row_class['className'] . '</option>';
            }
            ?>

  </select>
<input class="form-control" type="text"required placeholder="password" name="password" id="pasword">
  <input type="submit" name="submit"  onclick="student()">
</form>



<div class="newclass">
  <form  method="post" id="class">
    <input   class="form-control" id="classname" type="text" name="newclass"  placeholder="new class"  >
    <input type="button" name="button" value="ädd class" onClick="new_class()">
  </form>
</div>
